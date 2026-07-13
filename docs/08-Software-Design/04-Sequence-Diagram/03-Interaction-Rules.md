# 03 – Interaction Rules

## Overview

This document defines the interaction rules used throughout all UML Sequence Diagrams of the **TechmoEDU Smart Learning Platform**.

The purpose of these rules is to ensure that every sequence diagram follows a consistent structure, standardized message flow, enterprise architecture principles, and the OMG UML 2.x Specification.

This document acts as the official interaction guideline for all runtime communications within the system.

---

# Objectives

The objectives of this document are to:

- Standardize runtime interactions.
- Define communication rules between software layers.
- Maintain consistency across all sequence diagrams.
- Improve software maintainability.
- Simplify implementation.
- Reduce design ambiguity.
- Improve traceability between UML models and source code.

---

# Enterprise Layer Architecture

Every interaction must follow the standard layered architecture below.

```
Actor
   │
   ▼
Boundary (UI)
   │
   ▼
Controller
   │
   ▼
Business Service
   │
   ▼
Repository
   │
   ▼
Firebase Services
```

No layer may bypass another layer unless explicitly defined.

---

# Interaction Principles

All interactions shall follow these principles.

- Separation of Concerns
- Single Responsibility Principle
- Low Coupling
- High Cohesion
- Dependency Injection
- Service-Oriented Design
- Repository Pattern
- Layered Architecture

---

# Actor Interaction Rules

Actors may communicate only with Boundary objects.

Actors SHALL NOT communicate directly with:

- Controllers
- Services
- Repositories
- Firebase
- Database

Correct

```
Student
     │
     ▼
Login Page
```

Incorrect

```
Student
     │
     ▼
Firestore
```

---

# Boundary Rules

Boundary objects:

- Receive user input
- Display responses
- Validate UI fields
- Forward requests to Controllers

Boundary objects SHALL NOT

- Access Firestore
- Execute business logic
- Perform authentication
- Calculate business rules

---

# Controller Rules

Controllers:

- Receive requests
- Validate request structure
- Coordinate services
- Return responses

Controllers SHALL NOT

- Store data directly
- Call Firebase Authentication directly
- Execute SQL
- Generate reports

---

# Business Service Rules

Business Services are responsible for

- Business logic
- Validation
- Authorization
- Rule enforcement
- Workflow coordination

Services SHALL NOT

- Render UI
- Display messages
- Manipulate screens

---

# Repository Rules

Repositories are responsible for

- Reading Firestore
- Writing Firestore
- Query execution
- Data mapping

Repositories SHALL NOT

- Perform authentication
- Apply business rules
- Render UI

---

# Firebase Rules

Only repositories or dedicated infrastructure services may communicate with

- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- Cloud Messaging
- Cloud Functions

Direct UI access is prohibited.

---

# Authentication Rules

Authentication flow

```
Actor
   │
Boundary
   │
Controller
   │
Authentication Service
   │
Firebase Authentication
```

Rules

- Passwords never stored locally.
- Authentication tokens must be validated.
- Expired sessions must be rejected.
- Suspended users cannot authenticate.

---

# Authorization Rules

Authorization occurs after authentication.

Every protected request shall verify

- User Role
- Permissions
- Institute Membership
- Account Status

---

# Message Rules

Messages shall use meaningful verbs.

Examples

```
authenticate()

register()

loadCourses()

saveAttendance()

recordMarks()

generateReport()

publishAnnouncement()

assignTeacher()

linkParent()

uploadResource()
```

Avoid generic names such as

```
process()

run()

execute()

doWork()

action()
```

---

# Synchronous Messages

Use synchronous messages when

- Immediate response required
- Validation required
- Database update required

Examples

```
authenticate()

save()

update()

delete()

publish()
```

---

# Asynchronous Messages

Use asynchronous messages when

- Sending notifications
- Email delivery
- SMS
- Background processing
- Report generation
- Logging

Examples

```
sendNotification()

sendEmail()

generatePDF()

writeAuditLog()
```

---

# Return Message Rules

Every synchronous message should return

- Success
- Failure
- Validation Error
- Business Error
- Permission Error

---

# Activation Rules

Activation bars represent execution time.

Every Controller

↓

activates Service

↓

Service activates Repository

↓

Repository activates Firebase

↓

returns response

---

# Combined Fragment Rules

## alt

Used for

- Login success
- Login failure
- Payment success
- Payment failure

---

## opt

Used when

Operation is optional.

Example

```
Upload profile image
```

---

## loop

Used when

Processing collections.

Example

```
for each Student
```

---

## par

Used when

Multiple independent operations execute simultaneously.

Example

- Save Attendance
- Send Notification

---

## break

Used when

Fatal validation failure occurs.

---

# Validation Rules

Every user request must validate

- Required fields
- Data type
- User permissions
- Business rules
- Institute ownership

---

# Exception Rules

Every sequence must handle

- Invalid input
- Authentication failure
- Authorization failure
- Validation error
- Network timeout
- Firebase unavailable
- Storage failure
- Database failure

---

# Transaction Rules

Critical operations shall execute atomically.

Examples

- Course Enrollment
- Fee Payment
- Marks Recording
- Attendance Saving

Rollback required if any step fails.

---

# Notification Rules

Notifications are asynchronous.

Supported channels

- Email
- Push Notification
- SMS
- In-App Notification

Notification failure SHALL NOT cancel the main transaction.

---

# Audit Rules

Every critical operation shall create an audit log.

Minimum fields

- User ID
- Timestamp
- Action
- Entity
- Entity ID
- Institute ID
- IP Address
- Device Information

---

# Security Rules

Sensitive data shall never appear inside

- Sequence Diagram Notes
- Debug Messages
- Logs

Passwords shall never be transmitted in plain text.

JWT Tokens must be validated before authorization.

---

# Firebase Communication Rules

Allowed communication

```
UI

↓

Controller

↓

Service

↓

Repository

↓

Firestore
```

Forbidden

```
UI

↓

Firestore
```

---

# Performance Rules

Avoid

- Duplicate queries
- Unnecessary reads
- Multiple authentication requests

Prefer

- Batch operations
- Cached lookups
- Lazy loading

---

# Logging Rules

Log

- Login
- Logout
- Registration
- Attendance
- Marks
- Payments
- User Changes
- Teacher Assignment
- Parent Linking

---

# Diagram Quality Standards

Every sequence diagram shall include

- Actor
- Lifelines
- Activation Bars
- Return Messages
- alt Fragment
- opt Fragment
- loop Fragment (where applicable)
- Business Notes
- Error Handling
- Proper Message Names

---

# Traceability

Each Sequence Diagram must reference

- Functional Requirement
- Use Case
- Activity Diagram
- Class Diagram

This ensures complete Software Design traceability.

---

# Compliance

This document complies with

- OMG UML 2.x Specification
- IEEE 1016 Software Design Description
- ISO/IEC/IEEE 42010 Architecture Description
- Enterprise Software Design Best Practices

---

# Summary

The interaction rules defined in this document establish a consistent communication model for the TechmoEDU Smart Learning Platform.

Following these rules ensures that all Sequence Diagrams remain accurate, maintainable, secure, scalable, and fully aligned with the project's layered architecture and Software Design Specification.

---

## Document Information

| Property | Value |
|----------|-------|
| Module | Sequence Diagram |
| Document | 03-Interaction-Rules.md |
| Version | 1.0 |
| Documentation Standard | Enterprise Software Design Specification (SDS) |
| UML Standard | UML 2.x |
| Architecture Style | Layered Architecture + Service-Oriented Design |
| Project | TechmoEDU Smart Learning Platform |

---

**© TechmoEDU Smart Learning Platform**
