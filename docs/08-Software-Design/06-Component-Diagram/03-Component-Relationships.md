# 03 – Component Relationships

> **TechmoEDU Smart Learning Platform**
>
> Enterprise Architecture Documentation
>
> UML Component Diagram Module
>
> Version 1.0

---

# 1. Purpose

This document defines the relationships between all software components in the TechmoEDU Smart Learning Platform.

It establishes:

- Component dependencies
- Allowed communication paths
- Layer interactions
- Shared services
- Interface usage
- Event-driven relationships
- Repository access rules
- Security boundaries
- Dependency constraints

This document serves as the authoritative reference for component interaction during implementation.

---

# 2. Architecture Layers

The platform follows a layered architecture.

```text
Presentation Layer
        │
        ▼
Application Service Layer
        │
        ▼
Business Domain Layer
        │
        ▼
Repository Layer
        │
        ▼
Infrastructure Layer
        │
        ▼
External Services
```

Communication is always **top → down**.

Lower layers must never depend on upper layers.

---

# 3. Relationship Types

| Type | Meaning |
|------|---------|
| Uses | Calls another component |
| Depends On | Requires another component |
| Provides | Exposes an interface |
| Consumes | Uses another interface |
| Publishes | Generates events |
| Subscribes | Receives events |
| Stores | Owns persistent data |
| Reads | Reads another component’s data through an approved interface |

---

# 4. Component Dependency Matrix

| Source Component | Target Component | Relationship |
|------------------|------------------|--------------|
| Public Website | Announcement | Uses |
| Authentication | User Management | Uses |
| Authentication | Firebase Authentication | Depends On |
| Authorization | User Management | Uses |
| Authorization | Institute Management | Uses |
| User Management | Firestore Repository | Uses |
| Teacher Management | User Management | Depends On |
| Student Management | User Management | Depends On |
| Parent Management | User Management | Depends On |
| Parent Relationship | Parent Management | Uses |
| Parent Relationship | Student Management | Uses |
| Teacher Assignment | Teacher Management | Uses |
| Teacher Assignment | Course Management | Uses |
| Teacher Assignment | Institute Management | Uses |
| Enrollment | Student Management | Uses |
| Enrollment | Course Management | Uses |
| Attendance | Enrollment | Uses |
| Attendance | Teacher Assignment | Uses |
| Marks | Attendance | Uses |
| Marks | Examination | Uses |
| Payment | Fee Management | Uses |
| Payment | Student Management | Uses |
| Resource | Course Management | Uses |
| Announcement | Notification | Uses |
| Reporting | All Business Components | Reads |
| Audit | All Components | Receives Events |
| Monitoring | All Components | Receives Metrics |
| Firestore Repository | Firestore | Uses |
| Storage Adapter | Firebase Storage | Uses |
| Notification | Firebase Cloud Messaging | Uses |

---

# 5. Presentation Relationships

Presentation Components communicate only with Application Services.

```text
Teacher Dashboard
        │
        ▼
Teacher Service
        │
        ▼
Teacher Repository
```

Never

```text
Teacher Dashboard
        │
        ▼
Firestore
```

Direct database access is prohibited.

---

# 6. Business Relationships

Business components may communicate only through interfaces.

Example

```text
Enrollment Component
        │
        ▼
ICourseService
        │
        ▼
Course Component
```

Never

```text
Enrollment Component
        │
        ▼
Course Database
```

---

# 7. Repository Relationships

Repositories communicate only with infrastructure.

Example

```text
Attendance Repository
        │
        ▼
Cloud Firestore
```

Repositories must never call presentation components.

---

# 8. Infrastructure Relationships

Infrastructure Components provide services.

Examples

Firebase Authentication

↓

Authentication Component

Firestore

↓

Repositories

Storage

↓

Learning Resources

Cloud Functions

↓

Automation

FCM

↓

Notification Component

---

# 9. Event Relationships

The platform uses event-driven communication where appropriate.

Published Events

- UserRegistered
- CourseCreated
- EnrollmentApproved
- AttendanceMarked
- MarksPublished
- PaymentCompleted
- ResourceUploaded
- AnnouncementPublished
- ParentStudentLinked
- TeacherAssigned

Consumers

Notification Component

Reporting Component

Audit Component

Monitoring Component

---

# 10. Shared Services

Shared Services include

Authentication

Authorization

Logging

Audit

Monitoring

Configuration

Notification

Storage

These services are reusable by all business components.

---

# 11. Security Relationships

Every Business Component depends on

Authentication

↓

Authorization

↓

Institute Validation

↓

Ownership Validation

↓

Audit Logging

Security checks cannot be bypassed.

---

# 12. External Relationships

External integrations include

Firebase Authentication

Cloud Firestore

Firebase Storage

Firebase Hosting

Cloud Functions

Firebase Cloud Messaging

Payment Gateway

Email Provider

SMS Provider

All integrations must be accessed through adapters.

---

# 13. Dependency Rules

The following rules are mandatory.

### Rule 1

Presentation Components

↓

Application Services

Only

---

### Rule 2

Business Components

↓

Repositories

Only

---

### Rule 3

Repositories

↓

Infrastructure

Only

---

### Rule 4

Infrastructure

↓

External Providers

Only

---

### Rule 5

Business Components must never depend directly on Firebase SDKs.

---

### Rule 6

Circular Dependencies are prohibited.

---

### Rule 7

Business Components communicate through interfaces only.

---

### Rule 8

Audit Component may receive events from every component.

---

### Rule 9

Reporting Component has read-only access to business data.

---

### Rule 10

Notification Component never modifies business data.

---

# 14. Dependency Diagram

```text
Presentation
      │
      ▼
Application Services
      │
      ▼
Business Components
      │
      ▼
Repositories
      │
      ▼
Firebase Infrastructure
      │
      ▼
External Providers
```

---

# 15. Communication Rules

Allowed

Presentation

↓

Business

↓

Repository

↓

Infrastructure

Forbidden

Infrastructure

↓

Presentation

Forbidden

Repository

↓

Presentation

Forbidden

External Provider

↓

Business Component

---

# 16. Component Interaction Summary

| Layer | Communicates With |
|--------|-------------------|
| Presentation | Application Services |
| Application Services | Business Components |
| Business Components | Repositories |
| Repositories | Infrastructure |
| Infrastructure | External Providers |

---

# 17. Circular Dependency Prevention

Allowed

```text
Enrollment

↓

Course

↓

Repository
```

Forbidden

```text
Course

↓

Enrollment

↓

Course
```

Every dependency graph must remain acyclic.

---

# 18. Traceability

Relationships defined in this document support:

- Component Diagrams
- Deployment Diagrams
- Package Diagrams
- Sequence Diagrams
- System Architecture
- Security Review

---

# 19. Validation Checklist

✔ Every component has defined dependencies

✔ No circular dependency

✔ Interfaces are used consistently

✔ Firebase accessed only through repositories/adapters

✔ External providers isolated

✔ Security enforced

✔ Communication rules satisfied

✔ Layered architecture maintained

---

# 20. Version

| Item | Value |
|------|-------|
| Document | 03-Component-Relationships |
| Version | 1.0 |
| Status | Approved |
| Standard | UML 2.5.x |
