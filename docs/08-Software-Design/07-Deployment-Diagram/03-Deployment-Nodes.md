# 03 – Deployment Nodes Specification

> **Project:** TechmoEDU Smart Learning Platform  
> **Module:** Software Design – Deployment Diagram  
> **Document:** Deployment Nodes Specification  
> **Document ID:** TME-SD-DEP-003  
> **Version:** 1.0  
> **Status:** Approved for Design  
> **Classification:** Architecture Documentation  
> **Modeling Standard:** UML 2.5.x Deployment Diagram

---

## 1. Introduction

This document defines the physical, virtual, cloud-managed, external, and logical execution nodes used in the deployment architecture of the **TechmoEDU Smart Learning Platform**.

A deployment node represents a computational resource, execution environment, managed cloud service, client device, storage facility, network boundary, or third-party platform on which system artifacts are deployed or executed.

The node specifications documented here support the following deployment diagrams:

- DEP-01 – Overall Deployment Diagram
- DEP-02 – Firebase Cloud Deployment
- DEP-03 – Client and Network Deployment
- DEP-04 – Security and Identity Deployment
- DEP-05 – Production Deployment Architecture

This document serves as the authoritative node catalogue for the Deployment Diagram Module.

---

## 2. Purpose

The purpose of this document is to:

- Identify every significant deployment node.
- Define the responsibility of each node.
- Specify the node type and execution environment.
- Document deployed software artifacts.
- Describe node-to-node dependencies.
- Record communication mechanisms and protocols.
- Define security controls and trust boundaries.
- Identify availability, scalability, and failure considerations.
- Support deployment planning and infrastructure implementation.
- Maintain consistency across all deployment diagrams.

---

## 3. Scope

The deployment node catalogue covers:

- User devices and client browsers
- Public network infrastructure
- Firebase delivery services
- Identity and access infrastructure
- Serverless application execution environments
- Data persistence services
- File storage services
- Notification infrastructure
- External integration providers
- DevOps and deployment infrastructure
- Monitoring and observability services
- Backup and recovery facilities
- Development, testing, staging, and production environments

---

## 4. Deployment Node Classification

Deployment nodes are classified into the following categories.

| Category | Description |
|---|---|
| Client Node | A device or browser used by an end user |
| Network Node | A communication or routing boundary |
| Delivery Node | A service used to deliver frontend artifacts |
| Identity Node | A service responsible for authentication or identity validation |
| Compute Node | An environment that executes backend logic |
| Data Node | A service that stores structured application data |
| Storage Node | A service that stores files and binary resources |
| Messaging Node | A service that delivers notifications or messages |
| Integration Node | An external service connected to the platform |
| DevOps Node | A service used for source control, build, deployment, or release management |
| Observability Node | A service used for logs, metrics, errors, and monitoring |
| Recovery Node | A facility supporting backup, restore, and disaster recovery |
| Environment Node | A logical deployment environment such as Development or Production |

---

## 5. Master Node Catalogue

| Node ID | Node Name | Node Type | Hosting Model | Primary Purpose |
|---|---|---|---|---|
| NODE-001 | End-User Device | Client Device | User Managed | Access the TechmoEDU platform |
| NODE-002 | Web Browser | Execution Environment | Client Side | Execute the web application |
| NODE-003 | Public Internet | Network Node | External Network | Provide connectivity |
| NODE-004 | DNS Service | Network Service | Cloud Managed | Resolve application domain names |
| NODE-005 | Firebase Hosting | Delivery Node | Firebase Managed | Host and distribute frontend assets |
| NODE-006 | Content Delivery Network | Delivery Node | Cloud Managed | Cache and distribute static content |
| NODE-007 | Firebase Authentication | Identity Node | Firebase Managed | Authenticate platform users |
| NODE-008 | Authentication Adapter | Application Node | Serverless / Client Integrated | Integrate application identity flows |
| NODE-009 | Authorization Enforcement Layer | Security Node | Application Managed | Enforce roles, ownership, and institute scope |
| NODE-010 | Firestore Security Rules | Security Node | Firebase Managed | Enforce database access controls |
| NODE-011 | Storage Security Rules | Security Node | Firebase Managed | Enforce file access controls |
| NODE-012 | Cloud Functions Runtime | Compute Node | Serverless | Execute trusted backend logic |
| NODE-013 | HTTPS Callable Functions | Compute Environment | Serverless | Process authenticated client requests |
| NODE-014 | HTTP API Functions | Compute Environment | Serverless | Process REST or webhook requests |
| NODE-015 | Firestore Trigger Functions | Event Runtime | Serverless | Process database events |
| NODE-016 | Storage Trigger Functions | Event Runtime | Serverless | Process uploaded files |
| NODE-017 | Scheduled Functions | Scheduled Runtime | Serverless | Execute recurring operational jobs |
| NODE-018 | Background Job Processor | Compute Node | Serverless | Execute asynchronous processing |
| NODE-019 | Cloud Firestore | Data Node | Firebase Managed | Store structured application data |
| NODE-020 | Firebase Storage | Storage Node | Firebase Managed | Store learning resources and documents |
| NODE-021 | Firebase Cloud Messaging | Messaging Node | Firebase Managed | Deliver push notifications |
| NODE-022 | Notification Orchestrator | Application Node | Cloud Functions | Coordinate notification delivery |
| NODE-023 | Payment Gateway | External Integration | Third Party | Process digital payments |
| NODE-024 | Email Service Provider | External Integration | Third Party | Deliver email messages |
| NODE-025 | SMS Service Provider | External Integration | Third Party | Deliver SMS messages |
| NODE-026 | GitHub Repository | DevOps Node | Cloud Managed | Store and version source code |
| NODE-027 | CI/CD Pipeline | DevOps Node | Cloud Managed | Build, test, and deploy releases |
| NODE-028 | Firebase CLI Environment | Deployment Node | Developer / CI Managed | Deploy Firebase resources |
| NODE-029 | Secret and Configuration Store | Security Node | Cloud Managed | Protect environment configuration and secrets |
| NODE-030 | Logging Service | Observability Node | Cloud Managed | Store operational and audit logs |
| NODE-031 | Error Reporting Service | Observability Node | Cloud Managed | Record and analyse application failures |
| NODE-032 | Performance Monitoring Service | Observability Node | Cloud Managed | Measure runtime performance |
| NODE-033 | Analytics Service | Observability Node | Cloud Managed | Analyse platform usage |
| NODE-034 | Backup Storage | Recovery Node | Cloud Managed | Retain protected backup copies |
| NODE-035 | Restore and Recovery Service | Recovery Node | Cloud Managed | Recover data and system configuration |
| NODE-036 | Developer Workstation | Client / DevOps Node | Developer Managed | Develop and test the platform |
| NODE-037 | Development Environment | Environment Node | Isolated Cloud Environment | Support active development |
| NODE-038 | Testing Environment | Environment Node | Isolated Cloud Environment | Support functional and integration testing |
| NODE-039 | Staging Environment | Environment Node | Isolated Cloud Environment | Validate production candidates |
| NODE-040 | Production Environment | Environment Node | Protected Cloud Environment | Deliver live system services |

---

# 6. Client and Access Nodes

## NODE-001 – End-User Device

### Node Type

Client Device

### Description

The End-User Device represents the physical device used by a TechmoEDU user to access the platform.

Supported users include:

- Super Administrator
- Institute Administrator
- Teacher
- Student
- Parent

Typical devices include:

- Desktop computers
- Laptop computers
- Tablet devices
- Smartphones

### Primary Responsibilities

- Provide user interaction facilities.
- Display the TechmoEDU user interface.
- Capture user input.
- Maintain temporary client-side session data.
- Connect securely to cloud services.

### Deployed Artifacts

- Supported web browser
- Browser cache
- Web application runtime
- Local authentication session
- Optional progressive web application artifacts

### Dependencies

- Internet connectivity
- Supported browser
- DNS resolution
- HTTPS access to Firebase services

### Security Controls

- Device-level authentication is recommended.
- Browser sessions must not expose sensitive tokens.
- Shared devices must support secure sign-out.
- Sensitive information must not be permanently cached.
- Users must protect account credentials.

### Availability Consideration

Availability depends on:

- Device condition
- Browser compatibility
- Network availability
- Battery or electrical power
- User-side configuration

### Failure Impact

Failure affects only the user operating the specific device and does not affect the overall platform.

---

## NODE-002 – Web Browser

### Node Type

Client Execution Environment

### Description

The Web Browser executes the TechmoEDU frontend application downloaded from Firebase Hosting.

### Recommended Browser Support

- Google Chrome
- Microsoft Edge
- Mozilla Firefox
- Safari
- Modern Chromium-based browsers

### Primary Responsibilities

- Execute HTML, CSS, and JavaScript assets.
- Render role-based dashboards.
- Communicate with Firebase services.
- Manage authenticated sessions.
- Upload and download permitted files.
- Receive real-time Firestore updates.
- Receive browser-supported notifications.

### Deployed Artifacts

- Frontend application bundle
- Static HTML files
- CSS stylesheets
- JavaScript modules
- Firebase client SDK
- Application configuration
- Browser service worker where applicable

### Communication Interfaces

| Destination | Communication |
|---|---|
| Firebase Hosting | HTTPS |
| Firebase Authentication | Firebase Auth SDK over HTTPS |
| Cloud Firestore | Firebase SDK over encrypted transport |
| Firebase Storage | Firebase Storage SDK over HTTPS |
| Cloud Functions | HTTPS callable request or REST |
| Firebase Cloud Messaging | FCM client integration |

### Security Controls

- HTTPS-only access
- Secure token handling
- Route guards
- Input validation
- Output encoding
- Cross-site scripting protection
- Cross-site request forgery protection where applicable
- Session timeout and logout controls

### Failure Impact

Browser incompatibility may prevent selected functions from working but does not affect backend availability.

---

# 7. Network and Delivery Nodes

## NODE-003 – Public Internet

### Node Type

External Network

### Description

The Public Internet provides connectivity between user devices, cloud-hosted TechmoEDU services, and third-party providers.

### Primary Responsibilities

- Route encrypted client requests.
- Connect external providers.
- Deliver frontend resources.
- Support API communication.
- Support cloud service access.

### Communication Standard

All application communication must use encrypted protocols.

Preferred protocols:

- HTTPS
- TLS
- Secure WebSocket transport where introduced
- Authenticated webhooks

### Security Considerations

- No sensitive information may travel through plaintext HTTP.
- Tokens and credentials must be transmitted only through encrypted channels.
- External APIs must be authenticated.
- Webhook signatures must be verified.
- Rate limiting should protect public endpoints.

### Failure Impact

Internet failure may temporarily prevent users from accessing cloud services.

---

## NODE-004 – DNS Service

### Node Type

Network Service

### Description

The DNS Service maps the public TechmoEDU domain name to the Firebase Hosting infrastructure.

### Primary Responsibilities

- Resolve the TechmoEDU domain.
- Support custom domain mapping.
- Support certificate validation.
- Direct browser requests to the hosting service.

### Security Controls

- Controlled domain ownership
- Restricted DNS administration
- Strong administrator authentication
- Change auditing
- Protection against unauthorized record changes

### Failure Impact

DNS failures can prevent users from locating the application even when hosting services remain operational.

---

## NODE-005 – Firebase Hosting

### Node Type

Cloud Delivery Node

### Description

Firebase Hosting is the primary delivery platform for the TechmoEDU web application.

### Primary Responsibilities

- Host production frontend assets.
- Deliver static web content.
- Apply HTTPS automatically.
- Support custom domain access.
- Route selected requests to backend functions where configured.
- Support release deployment and rollback.

### Deployed Artifacts

- Production web application
- HTML entry files
- CSS files
- JavaScript bundles
- Images and public assets
- Web manifest
- Service worker
- Hosting configuration

### Communication

| Source | Destination | Protocol |
|---|---|---|
| Browser | Firebase Hosting | HTTPS |
| Firebase Hosting | Browser | HTTPS |
| Hosting Rewrite | Cloud Functions | HTTPS |

### Security Controls

- HTTPS enforcement
- Controlled deployment permissions
- Environment-specific hosting targets
- Secure response headers
- Restricted administrative access
- Version-controlled hosting configuration

### Scalability

Firebase Hosting supports managed scaling and content distribution.

### Failure Impact

Hosting failure can prevent users from loading the frontend application, while backend data may remain intact.

---

## NODE-006 – Content Delivery Network

### Node Type

Content Delivery Node

### Description

The Content Delivery Network distributes and caches frontend resources close to users to reduce latency and improve availability.

### Primary Responsibilities

- Cache static resources.
- Reduce repeated origin requests.
- Improve content delivery speed.
- Support geographically distributed users.
- Reduce frontend loading time.

### Cached Artifacts

- JavaScript bundles
- CSS files
- Images
- Fonts
- Static documents
- Public application assets

### Security Controls

- HTTPS delivery
- Cache-control configuration
- No caching of sensitive dynamic information
- Integrity validation for deployed assets
- Controlled cache invalidation

### Failure Impact

Users may experience increased latency or temporary content delivery disruption.

---

# 8. Identity and Security Nodes

## NODE-007 – Firebase Authentication

### Node Type

Managed Identity Node

### Description

Firebase Authentication provides identity verification and authenticated session management for TechmoEDU users.

### Supported Account Categories

- Super Administrator
- Institute Administrator
- Teacher
- Student
- Parent

### Primary Responsibilities

- Register user identities.
- Authenticate login credentials.
- Issue identity tokens.
- Refresh user sessions.
- Support password reset.
- Support account verification.
- Support future multi-factor authentication.

### Deployed Configuration

- Authentication providers
- Password policy
- Email verification templates
- Authorized domains
- Session configuration
- Account recovery configuration

### Communication

| Source | Destination | Method |
|---|---|---|
| Browser | Firebase Authentication | Auth SDK over HTTPS |
| Cloud Functions | Firebase Authentication | Admin SDK |
| Authentication | Browser | Identity and refresh tokens |

### Security Controls

- Secure password policy
- Email verification
- Account disabling
- Token expiry
- Refresh-token revocation
- Administrative account protection
- Optional multi-factor authentication
- Audit logging for sensitive account actions

### Failure Impact

Users may be unable to sign in or refresh sessions. Existing backend data remains unaffected.

---

## NODE-008 – Authentication Adapter

### Node Type

Application Integration Node

### Description

The Authentication Adapter connects the frontend and backend application layers with Firebase Authentication.

### Primary Responsibilities

- Normalize login and registration operations.
- Map Firebase identities to TechmoEDU profiles.
- Manage authentication state.
- Process logout.
- Coordinate password recovery.
- Resolve profile activation status.
- Support role retrieval after authentication.

### Dependencies

- Firebase Authentication
- User repository
- Role repository
- Institute membership data
- Audit logging

### Security Controls

- Token validation
- Secure error handling
- Protection against account enumeration
- No storage of plaintext credentials
- Controlled authentication event logging

### Failure Impact

Identity services may remain operational, but the application may fail to map users to their TechmoEDU profiles.

---

## NODE-009 – Authorization Enforcement Layer

### Node Type

Security Enforcement Node

### Description

The Authorization Enforcement Layer validates whether an authenticated user has permission to perform a requested operation.

### Authorization Dimensions

- Role
- Institute membership
- Resource ownership
- Course assignment
- Parent-child relationship
- Account status
- Record state
- Administrative scope

### Primary Responsibilities

- Evaluate role-based access.
- Enforce institute isolation.
- Verify teacher assignments.
- Verify student enrollment.
- Validate parent-student links.
- Validate ownership of files and records.
- Prevent privilege escalation.

### Security Model

The platform follows:

- Role-Based Access Control
- Resource Ownership Control
- Institute-Based Data Isolation
- Least Privilege Access
- Deny-by-Default Policy

### Failure Impact

Authorization failure should deny the requested action without exposing protected information.

---

## NODE-010 – Firestore Security Rules

### Node Type

Database Security Node

### Description

Firestore Security Rules provide the final client-access control boundary for Cloud Firestore.

### Primary Responsibilities

- Validate authenticated access.
- Restrict collections by role.
- Enforce institute-level isolation.
- Protect administrative records.
- Validate permitted fields.
- Prevent unauthorized updates.
- Enforce ownership conditions.
- Protect financial and examination data.

### Key Rule Principles

- Deny access by default.
- Never trust client-provided role values.
- Validate identity using the authenticated user ID.
- Validate institute membership.
- Restrict collection access by business purpose.
- Prevent modification of protected fields.
- Validate data types and required fields.
- Separate read and write permissions.

### Failure Impact

Incorrectly permissive rules may expose data. Incorrectly restrictive rules may block legitimate operations.

### Criticality

Very High

---

## NODE-011 – Storage Security Rules

### Node Type

File Security Node

### Description

Storage Security Rules protect resources stored in Firebase Storage.

### Protected Resources

- Learning materials
- Assignment files
- Profile images
- Payment evidence
- Report exports
- Administrative documents
- Institute resources

### Primary Responsibilities

- Restrict uploads by role.
- Restrict downloads by authorization.
- Validate file size.
- Validate content type.
- Enforce storage path ownership.
- Restrict access by institute or course.
- Prevent unauthorized replacement or deletion.

### Security Controls

- Authenticated access
- MIME-type validation
- File-size limits
- Path-based ownership
- Course membership verification
- Administrative restrictions
- Malware scanning as a future enhancement

### Failure Impact

Weak rules may expose or permit modification of protected files.

---

## NODE-029 – Secret and Configuration Store

### Node Type

Security Configuration Node

### Description

The Secret and Configuration Store protects sensitive environment-specific values required by backend functions and deployment processes.

### Protected Information

- API credentials
- Payment gateway secrets
- Email provider credentials
- SMS provider credentials
- Webhook secrets
- Encryption-related values
- Environment configuration

### Primary Responsibilities

- Separate secrets from source code.
- Supply environment-specific values.
- Restrict secret access.
- Support credential rotation.
- Prevent secrets from being committed to GitHub.

### Security Controls

- Least-privilege access
- Environment isolation
- Secret rotation
- Access auditing
- No plaintext secrets in repository files
- No secret exposure to browser bundles

### Failure Impact

Loss or exposure of secrets may compromise external integrations or protected backend functions.

---

# 9. Compute and Backend Runtime Nodes

## NODE-012 – Cloud Functions Runtime

### Node Type

Serverless Compute Node

### Description

The Cloud Functions Runtime executes trusted backend logic that must not run directly in the browser.

### Primary Responsibilities

- Execute privileged operations.
- Validate authenticated requests.
- Process business transactions.
- Integrate with third-party providers.
- Generate reports.
- Process background events.
- Send notifications.
- Maintain audit trails.
- Protect server-side secrets.

### Deployed Artifacts

- Backend function packages
- Service modules
- Validation logic
- Authorization middleware
- Repository adapters
- Event handlers
- Integration adapters
- Logging utilities

### Security Controls

- Token verification
- Authorization checks
- Input validation
- Secret protection
- Rate limiting where applicable
- Idempotency enforcement
- Secure error responses
- Audit logging

### Scalability

Functions scale according to workload within configured platform limits.

### Failure Impact

Backend-dependent operations such as payment processing, report generation, and administrative workflows may fail temporarily.

---

## NODE-013 – HTTPS Callable Functions

### Node Type

Authenticated Request Execution Environment

### Description

HTTPS Callable Functions process authenticated requests initiated by the TechmoEDU client application.

### Typical Operations

- User management
- Parent-student linking
- Teacher assignment
- Enrollment approval
- Fee operations
- Report generation
- Announcement publishing
- Account lifecycle operations

### Request Requirements

- Valid authentication token
- Valid request payload
- Role authorization
- Institute scope validation
- Business-rule validation

### Response Requirements

- Standardized success response
- Standardized error code
- Correlation identifier
- No exposure of internal stack traces
- Clear client-safe message

### Failure Impact

The requested transaction fails, but unrelated platform services continue operating.

---

## NODE-014 – HTTP API Functions

### Node Type

HTTP Integration Runtime

### Description

HTTP API Functions expose controlled endpoints for REST-based integrations, callbacks, and webhooks.

### Typical Uses

- Payment gateway callbacks
- External notification callbacks
- Future partner integration
- Health-check endpoints
- Controlled administrative integration

### Security Controls

- HTTPS only
- Signature verification
- API authentication
- Request timestamp validation
- Replay attack protection
- Rate limiting
- Input schema validation
- Restricted CORS configuration

### Failure Impact

External integrations may be delayed or fail while core browser operations remain available.

---

## NODE-015 – Firestore Trigger Functions

### Node Type

Database Event Runtime

### Description

Firestore Trigger Functions execute automatically when selected database documents are created, updated, or deleted.

### Typical Events

- Student enrollment created
- Payment recorded
- Announcement published
- Marks released
- Attendance submitted
- Parent-child link approved
- Teacher assignment changed
- User status changed

### Primary Responsibilities

- Maintain derived information.
- Create audit entries.
- Trigger notifications.
- Update summary records.
- Enforce asynchronous business workflows.
- Generate operational events.

### Design Controls

- Idempotent processing
- Recursion prevention
- Event validation
- Minimal execution duration
- Error logging
- Retry-aware logic

### Failure Impact

Primary data may be saved successfully while dependent asynchronous processing is delayed.

---

## NODE-016 – Storage Trigger Functions

### Node Type

File Event Runtime

### Description

Storage Trigger Functions process file-related events after files are uploaded, updated, or deleted.

### Typical Operations

- Validate uploaded metadata.
- Generate preview information.
- Record file references.
- Update resource status.
- Create audit records.
- Initiate future malware scanning.
- Remove invalid orphaned files.

### Security Controls

- Validate storage path.
- Validate file type.
- Validate file size.
- Check related database ownership.
- Avoid processing untrusted file content directly.

### Failure Impact

A file may exist in storage but remain unprocessed or unavailable until recovery.

---

## NODE-017 – Scheduled Functions

### Node Type

Scheduled Serverless Runtime

### Description

Scheduled Functions execute recurring operational tasks according to a defined schedule.

### Typical Tasks

- Generate daily summaries.
- Detect overdue fees.
- Send scheduled reminders.
- Clean temporary records.
- Archive expired announcements.
- Produce periodic reports.
- Verify pending transactions.
- Execute maintenance tasks.

### Security Controls

- No public invocation
- Restricted service permissions
- Idempotent scheduling
- Execution logging
- Failure alerting

### Failure Impact

Scheduled operations may be delayed, but interactive platform use can continue.

---

## NODE-018 – Background Job Processor

### Node Type

Asynchronous Compute Node

### Description

The Background Job Processor executes tasks that do not need to block the original user request.

### Typical Jobs

- Bulk notification delivery
- Large report export
- Data aggregation
- Reconciliation
- Document generation
- Retry processing
- Import or migration processing

### Primary Responsibilities

- Process jobs asynchronously.
- Track job state.
- Retry recoverable failures.
- Prevent duplicate processing.
- Record execution results.

### Suggested Job States

- Queued
- Processing
- Completed
- Failed
- Retrying
- Cancelled

### Failure Impact

Long-running operations may be delayed without affecting standard user transactions.

---

# 10. Data and File Nodes

## NODE-019 – Cloud Firestore

### Node Type

Managed NoSQL Data Node

### Description

Cloud Firestore is the primary structured data store of the TechmoEDU Smart Learning Platform.

### Core Data Domains

- Users
- Roles
- Institutes
- Teachers
- Students
- Parents
- Courses
- Enrollments
- Attendance
- Examinations
- Marks
- Fees
- Payments
- Announcements
- Resources
- Notifications
- Reports
- Audit logs

### Primary Responsibilities

- Persist application records.
- Support real-time data synchronization.
- Support structured queries.
- Support transactional operations.
- Support event-triggered processing.
- Enforce client access through security rules.

### Data Access Methods

- Firebase client SDK
- Firebase Admin SDK
- Cloud Functions
- Firestore triggers

### Security Controls

- Firestore Security Rules
- Server-side authorization
- Data validation
- Institute isolation
- Protected field restrictions
- Audit logging
- Controlled administrative operations

### Availability

Managed high-availability cloud service.

### Scalability

Designed to scale with increasing documents, users, and requests, subject to platform limits and data-model design.

### Failure Impact

Structured platform functionality may become temporarily unavailable.

### Criticality

Mission Critical

---

## NODE-020 – Firebase Storage

### Node Type

Managed Object Storage Node

### Description

Firebase Storage stores binary files and learning resources associated with the TechmoEDU platform.

### Stored Artifacts

- PDF documents
- Images
- Videos
- Presentation files
- Assignment resources
- Profile images
- Payment evidence
- Exported reports
- Institute documents

### Primary Responsibilities

- Store uploaded files.
- Deliver authorized downloads.
- Support resumable upload.
- Maintain object metadata.
- Integrate with storage event triggers.

### Access Methods

- Firebase Storage SDK
- Admin SDK
- Authorized download links
- Cloud Functions

### Security Controls

- Storage Security Rules
- File-type validation
- File-size limits
- Structured path strategy
- Ownership verification
- Restricted deletion
- Signed or authorized access where needed

### Failure Impact

Users may be unable to upload or download files, while Firestore data remains accessible.

---

# 11. Messaging and Notification Nodes

## NODE-021 – Firebase Cloud Messaging

### Node Type

Managed Messaging Node

### Description

Firebase Cloud Messaging delivers push notifications to supported user devices and browser clients.

### Notification Examples

- New announcement
- Fee reminder
- Payment confirmation
- Marks released
- Attendance warning
- New learning resource
- Course update
- Account-related notification

### Primary Responsibilities

- Register client messaging tokens.
- Deliver targeted notifications.
- Support topic-based messaging where appropriate.
- Report basic delivery outcomes.

### Security Controls

- Secure token storage
- Controlled server-side message sending
- Token cleanup
- No sensitive content in notification previews
- Authorization before recipient selection

### Failure Impact

Push notifications may be delayed or lost, while the related business transaction remains valid.

---

## NODE-022 – Notification Orchestrator

### Node Type

Application Messaging Node

### Description

The Notification Orchestrator determines when, how, and to whom a platform notification should be delivered.

### Supported Channels

- In-app notification
- Push notification
- Email
- SMS

### Primary Responsibilities

- Select recipients.
- Resolve communication preferences.
- Select delivery channels.
- Prepare channel-safe message content.
- Track notification state.
- Coordinate retries.
- Record delivery results.

### Dependencies

- User repository
- Parent-student relationship data
- Course enrollment data
- Firebase Cloud Messaging
- Email provider
- SMS provider
- Audit logging

### Failure Impact

The original operation may succeed while related notifications are delayed.

---

# 12. External Integration Nodes

## NODE-023 – Payment Gateway

### Node Type

External Financial Integration

### Description

The Payment Gateway processes online payments initiated through TechmoEDU.

### Typical Operations

- Create payment request
- Redirect or initiate checkout
- Receive payment result
- Validate callback
- Record payment status
- Support reconciliation
- Support refund processing where applicable

### Communication

- HTTPS API
- Secure redirect
- Signed webhook
- Server-to-server validation

### Security Controls

- No storage of raw card information
- Secret key protection
- Signature validation
- Transaction reference validation
- Replay protection
- Idempotent callback handling
- Audit logging
- Server-side payment verification

### Trust Boundary

The Payment Gateway operates outside the TechmoEDU infrastructure and must be treated as an external trust domain.

### Failure Impact

Online payments may fail or remain pending. Manual payment workflows may continue where supported.

---

## NODE-024 – Email Service Provider

### Node Type

External Communication Integration

### Description

The Email Service Provider delivers transactional and administrative email messages.

### Email Types

- Account verification
- Password recovery
- Payment confirmation
- Announcement notification
- Report delivery
- Administrative alert

### Security Controls

- Secure API credentials
- Sender identity validation
- Template sanitization
- Recipient validation
- No secrets in email content
- Delivery status logging

### Failure Impact

Email delivery may be delayed while in-app functionality continues.

---

## NODE-025 – SMS Service Provider

### Node Type

External Communication Integration

### Description

The SMS Service Provider delivers urgent or selected mobile text notifications.

### SMS Types

- One-time verification message where introduced
- Fee reminder
- Urgent announcement
- Payment confirmation
- Administrative alert

### Security Controls

- Protected API credentials
- Recipient validation
- Message length controls
- Cost monitoring
- Rate limiting
- Delivery logging
- Opt-in and preference management

### Failure Impact

SMS delivery may fail without affecting the source business operation.

---

# 13. DevOps and Release Nodes

## NODE-026 – GitHub Repository

### Node Type

Source Control and Collaboration Node

### Description

The GitHub Repository stores the source code, documentation, infrastructure configuration, diagrams, and release history of TechmoEDU.

### Stored Artifacts

- Frontend source code
- Backend source code
- Firebase configuration
- Security Rules
- Documentation
- UML diagrams
- Test scripts
- CI/CD workflows
- Release notes

### Primary Responsibilities

- Version control
- Change history
- Code collaboration
- Pull request review
- Issue tracking
- Release tagging
- Documentation storage

### Security Controls

- Protected main branch
- Restricted write access
- Pull request review
- Multi-factor authentication
- No committed secrets
- Dependency security review
- Signed or verified commits where adopted

### Failure Impact

New development and deployment may be delayed, but the live production platform continues operating.

---

## NODE-027 – CI/CD Pipeline

### Node Type

Automated Build and Deployment Node

### Description

The CI/CD Pipeline automates validation, testing, build generation, and environment deployment.

### Pipeline Stages

1. Source checkout
2. Dependency installation
3. Code-quality validation
4. Security checks
5. Unit testing
6. Integration testing
7. Frontend build
8. Backend build
9. Deployment validation
10. Environment deployment
11. Post-deployment verification

### Deployment Targets

- Development
- Testing
- Staging
- Production

### Security Controls

- Protected deployment credentials
- Environment approvals
- Restricted production deployment
- Immutable build artifacts
- Deployment logging
- Secret masking
- Branch-based controls

### Failure Impact

New releases cannot be deployed until the pipeline succeeds or is repaired.

---

## NODE-028 – Firebase CLI Environment

### Node Type

Deployment Execution Node

### Description

The Firebase CLI Environment performs authenticated deployment operations against the configured Firebase project.

### Typical Commands

- Deploy Hosting
- Deploy Cloud Functions
- Deploy Firestore Rules
- Deploy Firestore Indexes
- Deploy Storage Rules
- Use environment-specific project aliases

### Security Controls

- Restricted credentials
- No personal credentials in shared automation
- Environment-specific deployment access
- Production approval
- Command logging
- Version-controlled configuration

### Failure Impact

Deployment operations may fail while the currently deployed application remains available.

---

## NODE-036 – Developer Workstation

### Node Type

Development Client Node

### Description

The Developer Workstation is the local environment used to design, develop, test, and maintain TechmoEDU.

### Installed Tooling

- Visual Studio Code
- Git
- Node.js
- Package manager
- Firebase CLI
- Browser developer tools
- Draw.io
- PlantUML tooling
- Testing tools

### Security Controls

- Device login protection
- Antivirus and updates
- Disk encryption where available
- Protected credentials
- No production data stored unnecessarily
- Separate local environment configuration
- Secure GitHub authentication

### Failure Impact

Development activity for the affected developer may stop, but cloud production services remain operational.

---

# 14. Observability Nodes

## NODE-030 – Logging Service

### Node Type

Observability Node

### Description

The Logging Service captures operational, security, application, and audit information generated by the platform.

### Log Categories

- Application logs
- Function execution logs
- Authentication events
- Authorization failures
- Integration events
- Payment events
- Deployment logs
- Security events
- Audit records

### Logging Requirements

Each significant log should include:

- Timestamp
- Environment
- Service or function name
- Severity
- Correlation identifier
- User identifier where permitted
- Institute identifier where relevant
- Event description
- Result status

### Security Controls

- Avoid passwords and secrets.
- Avoid unnecessary personal information.
- Restrict log access.
- Retain logs according to policy.
- Protect audit records from unauthorized modification.

---

## NODE-031 – Error Reporting Service

### Node Type

Observability Node

### Description

The Error Reporting Service collects and groups application failures for investigation.

### Captured Information

- Error type
- Error message
- Stack trace
- Function or component
- Environment
- Occurrence count
- First and latest occurrence
- Correlation identifier

### Security Controls

- Sanitize sensitive data.
- Restrict report access.
- Separate development and production errors.
- Avoid exposing internal errors directly to users.

### Failure Impact

System functionality may continue, but troubleshooting becomes slower.

---

## NODE-032 – Performance Monitoring Service

### Node Type

Performance Observability Node

### Description

The Performance Monitoring Service measures the responsiveness and efficiency of the deployed platform.

### Monitored Areas

- Page loading time
- API response time
- Function duration
- Database query performance
- File upload performance
- Error rate
- Slow transactions
- Network latency

### Operational Goals

- Detect performance degradation.
- Identify bottlenecks.
- Support scaling decisions.
- Improve user experience.
- Validate release performance.

---

## NODE-033 – Analytics Service

### Node Type

Usage Observability Node

### Description

The Analytics Service measures non-sensitive platform usage and feature interaction.

### Example Metrics

- Active users
- Role-based usage
- Course engagement
- Resource access
- Announcement views
- Dashboard usage
- Feature adoption
- Session trends

### Privacy Controls

- Collect only necessary information.
- Avoid recording sensitive academic or financial content.
- Apply consent and privacy requirements.
- Restrict analytics access.
- Use aggregated reporting where possible.

---

# 15. Backup and Recovery Nodes

## NODE-034 – Backup Storage

### Node Type

Recovery Storage Node

### Description

Backup Storage retains protected copies of critical system information required for recovery.

### Backup Scope

- Firestore data exports
- Critical configuration
- Security Rules
- Firestore indexes
- Storage metadata
- Deployment configuration
- Release artifacts
- Documentation

### Backup Requirements

- Defined backup schedule
- Environment identification
- Encryption at rest
- Restricted access
- Retention policy
- Restore testing
- Backup integrity verification

### Failure Impact

Loss of backup availability increases recovery risk but does not immediately affect production services.

---

## NODE-035 – Restore and Recovery Service

### Node Type

Recovery Execution Node

### Description

The Restore and Recovery Service supports restoration of system data, configuration, and application versions following an operational incident.

### Recovery Capabilities

- Data restoration
- Configuration restoration
- Previous release rollback
- Security-rule restoration
- Environment reconstruction
- Validation after recovery

### Recovery Objectives

The project should define:

- Recovery Time Objective
- Recovery Point Objective
- Maximum tolerable downtime
- Acceptable data-loss window
- Incident escalation procedure

### Security Controls

- Restricted recovery authority
- Approval for production restoration
- Audit logging
- Backup integrity verification
- Post-recovery validation

---

# 16. Environment Nodes

## NODE-037 – Development Environment

### Node Type

Logical Cloud Environment

### Purpose

Supports active implementation and early developer validation.

### Characteristics

- Frequent deployments
- Test or sample data
- Developer access
- Relaxed operational availability requirements
- No production user data
- Debugging enabled where safe

### Deployment Artifacts

- Development frontend
- Development functions
- Development database
- Development storage
- Development configuration

### Security Requirement

Development must remain isolated from production.

---

## NODE-038 – Testing Environment

### Node Type

Logical Quality-Assurance Environment

### Purpose

Supports controlled functional, integration, security, and regression testing.

### Characteristics

- Predictable test data
- Repeatable test execution
- Controlled resets
- Automated test support
- Isolated integration credentials
- No real production secrets

### Testing Scope

- Functional tests
- Integration tests
- Security-rule tests
- API tests
- Workflow tests
- Performance validation
- Error handling tests

---

## NODE-039 – Staging Environment

### Node Type

Pre-Production Environment

### Purpose

Provides a production-like environment for final release validation.

### Characteristics

- Production-like configuration
- Release candidate deployment
- Restricted access
- Final user-acceptance testing
- Integration verification
- Deployment rehearsal
- Rollback rehearsal

### Security Requirement

Staging should use separate data, secrets, credentials, and external provider test modes.

---

## NODE-040 – Production Environment

### Node Type

Live Operational Environment

### Purpose

Hosts the official TechmoEDU platform used by real institutes, teachers, students, parents, and administrators.

### Characteristics

- Strict access control
- Production user data
- Controlled deployment
- Monitoring and alerting
- Backup and recovery
- Audit logging
- High availability
- Secure external integrations

### Deployment Approval

Production deployments require:

- Successful automated tests
- Security validation
- Build approval
- Environment verification
- Release documentation
- Rollback readiness

### Criticality

Mission Critical

---

# 17. Node Ownership Matrix

| Node Group | Primary Owner | Supporting Responsibility |
|---|---|---|
| Client Devices | End User | Technical Support |
| Web Application | Frontend Team | Software Architect |
| Firebase Hosting | DevOps / Cloud Team | Frontend Team |
| Authentication | Identity and Security Team | Backend Team |
| Cloud Functions | Backend Team | DevOps Team |
| Firestore | Data and Backend Team | Security Team |
| Firebase Storage | Backend Team | Content Administrators |
| Security Rules | Security and Backend Team | Software Architect |
| Messaging | Communication Services Team | Backend Team |
| External Providers | Integration Team | Finance / Administration |
| CI/CD Pipeline | DevOps Team | Development Team |
| Monitoring | DevOps / Operations Team | Security Team |
| Backup and Recovery | Cloud Operations Team | Data Owner |
| Production Environment | System Owner | Architecture and DevOps Teams |

---

# 18. Node Criticality Classification

| Criticality | Definition | Example Nodes |
|---|---|---|
| Mission Critical | Failure significantly disrupts the whole platform | Firestore, Authentication, Hosting, Cloud Functions |
| High | Failure affects a major business capability | Storage, Notification Orchestrator, Payment Gateway |
| Medium | Failure affects a supporting capability | Email, SMS, Analytics |
| Low | Failure causes limited operational inconvenience | Development Workstation, optional tooling |

---

# 19. Trust Boundaries

The following trust boundaries must be represented in deployment diagrams.

## 19.1 Client Trust Boundary

Client devices and browsers are untrusted environments.

The backend must not trust:

- Client role declarations
- Client-calculated payment status
- Client-supplied institute ownership
- Client-supplied authorization results
- Client-side validation alone

---

## 19.2 Firebase Project Boundary

Firebase-managed services form the principal TechmoEDU cloud boundary.

This includes:

- Hosting
- Authentication
- Cloud Functions
- Firestore
- Storage
- Cloud Messaging

Access must be controlled using:

- Authentication
- IAM
- Security Rules
- Server-side authorization
- Environment separation

---

## 19.3 External Provider Boundary

Payment, email, and SMS providers are external trust domains.

All external responses must be:

- Authenticated where possible
- Validated
- Logged
- Correlated with internal records
- Processed idempotently

---

## 19.4 DevOps Boundary

Source control and deployment systems require privileged access.

Production deployments must be restricted to authorized personnel and approved automation.

---

# 20. Node Communication Summary

| Source Node | Target Node | Communication | Authentication |
|---|---|---|---|
| Browser | Firebase Hosting | HTTPS | Public for frontend assets |
| Browser | Firebase Authentication | Firebase Auth SDK | User credentials / identity session |
| Browser | Firestore | Firebase SDK | Firebase ID token and Security Rules |
| Browser | Firebase Storage | Storage SDK | Firebase ID token and Storage Rules |
| Browser | Callable Functions | HTTPS Callable | Firebase ID token |
| Cloud Functions | Firestore | Admin SDK | Service identity |
| Cloud Functions | Storage | Admin SDK | Service identity |
| Cloud Functions | FCM | Admin SDK | Service identity |
| Cloud Functions | Payment Gateway | HTTPS API | Secret credential |
| Payment Gateway | HTTP Function | Signed webhook | Signature or shared-secret validation |
| Cloud Functions | Email Provider | HTTPS API | Secret credential |
| Cloud Functions | SMS Provider | HTTPS API | Secret credential |
| CI/CD Pipeline | Firebase | Firebase CLI / Deployment API | Restricted deployment identity |

---

# 21. Availability and Resilience Requirements

The deployment architecture should support:

- Managed cloud-service availability
- Graceful handling of temporary failures
- Retry of recoverable asynchronous operations
- Idempotent transaction processing
- Client reconnection
- Timeout controls
- Circuit-breaker patterns for external integrations where appropriate
- Monitoring and alerting
- Backup and restore procedures
- Release rollback
- Environment isolation

---

# 22. Failure Handling Principles

When a deployment node fails:

1. The failure must be detected.
2. The event must be logged.
3. The user must receive a safe and understandable message.
4. Sensitive implementation details must remain hidden.
5. Recoverable operations should be retried.
6. Duplicate processing must be prevented.
7. Critical incidents must generate alerts.
8. Related transaction state must remain consistent.
9. Recovery actions must be auditable.
10. The platform must degrade gracefully where possible.

---

# 23. Node Naming Standard

Deployment nodes must use meaningful UML node names.

Recommended pattern:

```text
NODE-[Number] – [Node Name]
```

Examples:

```text
NODE-005 – Firebase Hosting
NODE-012 – Cloud Functions Runtime
NODE-019 – Cloud Firestore
NODE-040 – Production Environment
```

UML stereotypes may include:

```text
<<device>>
<<executionEnvironment>>
<<cloudService>>
<<database>>
<<objectStorage>>
<<identityService>>
<<externalSystem>>
<<network>>
<<environment>>
```

---

# 24. Diagram Representation Rules

Each deployment diagram must:

- Represent nodes using UML node notation.
- Show nested execution environments where appropriate.
- Show deployed artifacts.
- Label communication paths.
- Identify external systems.
- Represent trust boundaries clearly.
- Avoid unnecessary implementation-level detail.
- Use the node IDs defined in this document.
- Match the component and deployment documentation.
- Maintain consistent naming across Draw.io and PlantUML versions.

---

# 25. Traceability Matrix

| Deployment Node | Related Architecture Area | Related Diagram |
|---|---|---|
| Web Browser | Presentation Layer | DEP-01, DEP-03 |
| Firebase Hosting | Client Delivery | DEP-01, DEP-02, DEP-05 |
| Firebase Authentication | Identity and Access | DEP-01, DEP-02, DEP-04 |
| Cloud Functions | Application Services | DEP-01, DEP-02, DEP-05 |
| Cloud Firestore | Data Persistence | DEP-01, DEP-02, DEP-05 |
| Firebase Storage | File Management | DEP-01, DEP-02 |
| Firebase Cloud Messaging | Communication | DEP-01, DEP-02 |
| Security Rules | Security Enforcement | DEP-02, DEP-04 |
| External Providers | Integrations | DEP-01, DEP-05 |
| GitHub and CI/CD | Release Management | DEP-05 |
| Monitoring Services | Observability | DEP-04, DEP-05 |
| Backup Services | Disaster Recovery | DEP-05 |

---

# 26. Node Review Checklist

Before approving a deployment node, verify that:

- [ ] The node has a unique identifier.
- [ ] The node name is clear and consistent.
- [ ] The node type is identified.
- [ ] The execution environment is documented.
- [ ] Deployed artifacts are identified.
- [ ] Communication paths are defined.
- [ ] Security controls are documented.
- [ ] Dependencies are identified.
- [ ] Availability expectations are recorded.
- [ ] Failure impact is understood.
- [ ] Ownership is assigned.
- [ ] Trust boundaries are represented.
- [ ] The node appears consistently across all related diagrams.
- [ ] Draw.io and PlantUML representations match.
- [ ] The node supports the approved TechmoEDU architecture.

---

# 27. Definition of Done

The Deployment Nodes Specification is considered complete when:

- All major deployment nodes have been identified.
- Node responsibilities are documented.
- Client, network, cloud, data, external, and DevOps nodes are covered.
- Security and trust boundaries are specified.
- Communication dependencies are traceable.
- Environment separation is defined.
- Availability and failure considerations are recorded.
- All five deployment diagrams use the approved node catalogue.
- Architecture review approval has been obtained.

---

# 28. Conclusion

The Deployment Nodes Specification provides the infrastructure foundation for the TechmoEDU Smart Learning Platform.

It defines where the platform executes, where its data and files are stored, how users access the application, how trusted backend operations are performed, how external providers are integrated, and how releases are deployed, monitored, backed up, and recovered.

This node catalogue ensures consistency across the overall deployment, Firebase cloud deployment, client and network deployment, security and identity deployment, and production deployment architecture diagrams.

---

## Document Control

| Field | Value |
|---|---|
| Document | Deployment Nodes Specification |
| Document ID | TME-SD-DEP-003 |
| Project | TechmoEDU Smart Learning Platform |
| Module | 07 – Deployment Diagram |
| Version | 1.0 |
| Status | Approved for Design |
| Owner | Software Architecture Team |
| Review Cycle | At every major infrastructure change |

---

**TechmoEDU Smart Learning Platform**  
**Software Design Documentation**  
**Deployment Diagram Module – Deployment Nodes Specification**
