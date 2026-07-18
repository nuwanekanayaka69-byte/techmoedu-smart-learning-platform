# 02 – Firebase Cloud Deployment

> **Project:** TechmoEDU Smart Learning Platform  
> **Module:** Software Design – Deployment Diagram  
> **Diagram ID:** DEP-02  
> **Diagram Name:** Firebase Cloud Deployment  
> **Version:** 1.0  
> **Status:** Approved for Design  
> **Modeling Standard:** UML 2.5.x Deployment Diagram  
> **Architecture Style:** Firebase Cloud-Native Serverless Architecture

---

## 1. Overview

The **Firebase Cloud Deployment Diagram** provides a detailed view of how the TechmoEDU Smart Learning Platform is deployed inside the Firebase and Google Cloud managed environment.

It expands the Firebase section of the master Overall Deployment Diagram and documents the relationships between Firebase Hosting, Authentication, Cloud Functions, Cloud Firestore, Firebase Storage, Firebase Cloud Messaging, Analytics, Logging, Performance Monitoring, backup processes, Security Rules, IAM controls, and the CI/CD pipeline.

---

## 2. Purpose

The diagram is designed to:

- Show the internal Firebase deployment architecture.
- Identify managed cloud services and runtime environments.
- Show deployed application artifacts and configuration artifacts.
- Document communication between Firebase services.
- Represent authentication, authorization, and security enforcement points.
- Show event-driven and scheduled backend execution.
- Show monitoring, analytics, backup, and operational services.
- Support implementation, testing, deployment, maintenance, security review, and future scaling.

---

## 3. Scope

The diagram includes:

- Firebase Hosting
- Firebase Authentication
- Custom Claims and role data
- HTTPS Callable Functions
- HTTP Functions
- Firestore Trigger Functions
- Storage Trigger Functions
- Scheduled Functions
- Cloud Firestore
- Firestore Security Rules and indexes
- Firebase Storage
- Storage Security Rules
- Firebase Cloud Messaging
- Firebase Analytics
- Cloud Logging
- Performance Monitoring
- Backup and export services
- IAM and service accounts
- GitHub Actions and Firebase CLI deployment

---

## 4. Firebase Architecture Layers

### 4.1 Hosting Layer

Firebase Hosting delivers:

- React production build
- HTML, CSS, JavaScript, and static assets
- Route rewrites
- Cache-control configuration
- HTTPS certificates
- CDN-based content delivery

### 4.2 Identity and Access Layer

Firebase Authentication provides:

- User registration
- User login
- Password reset
- Identity token issuance
- Session verification
- Email verification
- Provider-based authentication where enabled

Custom Claims and trusted role records support authorization for:

- Super Administrator
- Institute Administrator
- Teacher
- Student
- Parent

### 4.3 Compute Layer

Cloud Functions execute trusted backend operations through:

- HTTPS Callable Functions
- HTTP REST Functions
- Firestore event triggers
- Storage event triggers
- Scheduled functions
- Background notification tasks

Privileged operations must not depend only on client-side logic.

### 4.4 Data Layer

Cloud Firestore stores:

- Users and profiles
- Institutes
- Courses
- Enrollments
- Attendance
- Marks and examinations
- Fees and payments
- Announcements
- Parent-student links
- Teacher assignments
- Audit and operational records

### 4.5 Object Storage Layer

Firebase Storage stores:

- Learning resources
- Assignment files
- Profile images
- Institute assets
- Generated reports
- Approved attachments

### 4.6 Messaging Layer

Firebase Cloud Messaging delivers:

- Announcement notifications
- Payment reminders
- Attendance alerts
- Marks publication alerts
- Resource availability notifications

### 4.7 Observability Layer

Observability services include:

- Cloud Logging
- Error reporting
- Performance Monitoring
- Firebase Analytics
- Operational metrics and alerts

### 4.8 Backup and Recovery Layer

Backup processes protect:

- Firestore collections
- Critical Storage objects
- Security Rules
- Index configuration
- Hosting configuration
- Cloud Functions source and release artifacts

### 4.9 DevOps Layer

The deployment pipeline includes:

- GitHub repository
- GitHub Actions
- Automated quality checks
- Build process
- Firebase CLI
- Environment-specific deployment
- Release approval and rollback

---

## 5. Deployment Nodes

| Node ID | Node | Type | Responsibility |
|---|---|---|---|
| FBC-001 | Firebase Hosting | `<<cloudService>>` | Hosts and serves the web application |
| FBC-002 | Firebase Authentication | `<<identityService>>` | Verifies users and issues ID tokens |
| FBC-003 | HTTPS Callable Functions | `<<executionEnvironment>>` | Executes authenticated client requests |
| FBC-004 | HTTP Functions | `<<executionEnvironment>>` | Exposes controlled REST and webhook endpoints |
| FBC-005 | Firestore Trigger Functions | `<<executionEnvironment>>` | Responds to Firestore changes |
| FBC-006 | Storage Trigger Functions | `<<executionEnvironment>>` | Responds to uploaded or changed files |
| FBC-007 | Scheduled Functions | `<<executionEnvironment>>` | Executes scheduled jobs and maintenance |
| FBC-008 | Cloud Firestore | `<<database>>` | Stores structured application data |
| FBC-009 | Firebase Storage | `<<objectStorage>>` | Stores files and learning resources |
| FBC-010 | Firebase Cloud Messaging | `<<messagingService>>` | Sends push notifications |
| FBC-011 | Firebase Analytics | `<<analyticsService>>` | Captures approved usage events |
| FBC-012 | Cloud Logging | `<<monitoringService>>` | Stores logs and operational events |
| FBC-013 | Performance Monitoring | `<<monitoringService>>` | Tracks performance metrics |
| FBC-014 | Backup and Export Service | `<<backupService>>` | Creates protected backup copies |
| FBC-015 | IAM and Service Accounts | `<<securityService>>` | Controls service-to-service privileges |
| FBC-016 | CI/CD Pipeline | `<<executionEnvironment>>` | Builds, validates, and deploys Firebase artifacts |

---

## 6. Deployed Artifacts

| Artifact | Deployment Location |
|---|---|
| React Web Application Bundle | Firebase Hosting |
| Hosting Configuration | Firebase Hosting |
| HTTPS Callable Function Package | Cloud Functions |
| HTTP Function Package | Cloud Functions |
| Trigger Function Package | Cloud Functions |
| Scheduled Function Package | Cloud Functions |
| Firestore Security Rules | Cloud Firestore |
| Firestore Index Configuration | Cloud Firestore |
| Storage Security Rules | Firebase Storage |
| Notification Templates | Cloud Functions / FCM |
| CI/CD Workflow | GitHub Actions |
| Firebase Project Configuration | CI/CD Pipeline |

---

## 7. Communication Paths

| Source | Target | Communication |
|---|---|---|
| Web Application | Firebase Hosting | HTTPS/TLS |
| Web Application | Firebase Authentication | Firebase Auth SDK |
| Web Application | Callable Functions | Firebase Functions SDK |
| Web Application | Cloud Firestore | Firestore SDK + Security Rules |
| Web Application | Firebase Storage | Storage SDK + Security Rules |
| Firebase Authentication | Callable Functions | Verified Firebase ID Token |
| Callable Functions | Cloud Firestore | Firebase Admin SDK |
| Callable Functions | Firebase Storage | Firebase Admin SDK |
| HTTP Functions | External Systems | Authenticated HTTPS APIs |
| Firestore | Trigger Functions | Firestore events |
| Storage | Storage Trigger Functions | Object events |
| Scheduled Functions | Firestore / Storage | Admin SDK |
| Cloud Functions | Firebase Cloud Messaging | Firebase Admin SDK |
| Firebase Services | Cloud Logging | Structured logs |
| Web Application | Analytics | Approved analytics events |
| Firebase Services | Performance Monitoring | Performance telemetry |
| Firestore / Storage | Backup Service | Scheduled export / backup |
| CI/CD Pipeline | Firebase Services | Firebase CLI deployment |

---

## 8. Security Architecture

### Authentication

- Firebase Authentication verifies user identity.
- Firebase ID tokens are required for authenticated callable operations.
- Email verification may be required before sensitive operations.
- Session and token validation occur on trusted backend services.

### Authorization

Authorization uses:

- Role-based access control
- Institute-based isolation
- Course-level access
- Parent-child relationship validation
- Ownership validation
- Backend authorization checks
- Firestore and Storage Security Rules

### Security Rules

Firestore and Storage Security Rules must:

- Deny access by default.
- Validate authentication state.
- Validate role and institute context.
- Validate ownership and relationship rules.
- Prevent unauthorized cross-institute access.
- Restrict field-level updates.
- Prevent direct client updates to audit-sensitive fields.

### IAM and Service Accounts

- Service accounts use least privilege.
- Production deployment credentials are separated.
- Secrets are not stored in frontend source code.
- CI/CD credentials are protected.
- Administrative actions are logged and reviewable.

---

## 9. Cloud Functions Responsibilities

Cloud Functions handle privileged operations such as:

- Role and custom-claim management
- Teacher assignment
- Institute administration
- Parent-student link approval
- Payment verification
- Marks publication
- Report generation
- Notification dispatch
- Audit logging
- Scheduled reminders
- Data consistency checks
- Backup orchestration

---

## 10. Event-Driven Processing

### Firestore Events

Examples:

- New announcement created
- Attendance record updated
- Marks published
- Payment status changed
- Parent-student link approved
- Teacher assignment changed

### Storage Events

Examples:

- Learning resource uploaded
- Profile image processed
- Assignment file uploaded
- Generated report stored

### Scheduled Jobs

Examples:

- Daily fee reminders
- Attendance summaries
- Backup verification
- Expired-session cleanup
- Periodic report generation
- Data integrity checks

---

## 11. Monitoring and Logging

The system must monitor:

- Function invocation count
- Function execution time
- Function failures
- Authentication failures
- Firestore read/write behavior
- Storage upload failures
- Notification delivery failures
- CI/CD deployment status
- Backup success and failure
- Security-relevant administrative actions

Logs must avoid unnecessary sensitive personal data.

---

## 12. Backup and Recovery

Backup coverage includes:

- Scheduled Firestore exports
- Critical Firebase Storage resources
- Security Rules
- Index configuration
- Firebase project configuration
- Cloud Functions source
- Release artifacts

Recovery procedures must define:

- Recovery Point Objective
- Recovery Time Objective
- Backup retention
- Restore authorization
- Restore testing
- Incident documentation

---

## 13. CI/CD Deployment Flow

```text
Developer Commit
      │
      ▼
GitHub Repository
      │
      ▼
GitHub Actions
      │
      ├── Lint and Static Analysis
      ├── Automated Tests
      ├── Application Build
      ├── Rules Validation
      └── Deployment Approval
      │
      ▼
Firebase CLI
      │
      ├── Hosting Deployment
      ├── Functions Deployment
      ├── Firestore Rules and Indexes
      └── Storage Rules
```

---

## 14. Environment Strategy

Recommended environments:

- Development
- Testing
- Staging
- Production

Each environment should use separate:

- Firebase project
- Configuration
- Secrets
- Service accounts
- Data
- Deployment permissions
- Monitoring and alert policies

---

## 15. Reliability and Scalability

The Firebase deployment supports:

- Managed serverless scaling
- Stateless backend execution
- CDN-based web delivery
- Event-driven processing
- Controlled retries
- Idempotent background processing
- Monitoring and alerting
- Automated deployment
- Backup and restore
- Release rollback

---

## 16. Package Structure

```text
02-Firebase-Cloud-Deployment/
├── README.md
├── drawio/
│   └── 02-Firebase-Cloud-Deployment.drawio
├── plantuml/
│   └── 02-Firebase-Cloud-Deployment.puml
└── png/
    └── 02-Firebase-Cloud-Deployment.png
```

---

## 17. Review Checklist

- [ ] Firebase Hosting is represented.
- [ ] Firebase Authentication and token verification are shown.
- [ ] All Cloud Function execution types are represented.
- [ ] Firestore and Storage are shown with Security Rules.
- [ ] Firebase Cloud Messaging is included.
- [ ] Analytics, Logging, and Performance Monitoring are included.
- [ ] IAM and service accounts are represented.
- [ ] Backup and recovery services are shown.
- [ ] CI/CD deployment paths are labeled.
- [ ] Trust boundaries are visible.
- [ ] Draw.io, PlantUML, and PNG versions are consistent.
- [ ] The PNG is readable at normal document zoom.

---

## 18. Definition of Done

The package is complete when:

- The Draw.io source opens successfully.
- The PlantUML source is syntactically valid.
- The PNG is clear and suitable for reports.
- All required files are included.
- Node names and communication paths are consistent.
- Security controls are documented.
- Monitoring, backup, and CI/CD are represented.
- The package is ready for GitHub, final report, and viva use.

---

## 19. Version History

| Version | Date | Description | Status |
|---|---|---|---|
| 1.0 | 2026-07 | Initial complete Firebase cloud deployment package | Approved for Design |

---

## Document Control

| Field | Value |
|---|---|
| Project | TechmoEDU Smart Learning Platform |
| Module | 07 – Deployment Diagram |
| Diagram ID | DEP-02 |
| Diagram | Firebase Cloud Deployment |
| Version | 1.0 |
| Status | Approved for Design |
| Owner | Software Architecture Team |
| Review Cycle | Every major Firebase, security, or deployment change |

---

**TechmoEDU Smart Learning Platform**  
**Software Design Documentation**  
**DEP-02 – Firebase Cloud Deployment**
