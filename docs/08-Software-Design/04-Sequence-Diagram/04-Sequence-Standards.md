# 04 – Sequence Diagram Standards

## Overview

This document defines the official UML Sequence Diagram standards for the **TechmoEDU Smart Learning Platform**.

The purpose of this document is to ensure that every sequence diagram follows a consistent structure, standardized notation, enterprise software engineering principles, and the OMG Unified Modeling Language (UML) 2.x specification.

These standards apply to every sequence diagram developed throughout the project lifecycle.

---

# Objectives

The objectives of these standards are to:

- Ensure consistency across all sequence diagrams.
- Improve readability and maintainability.
- Standardize message flow.
- Reduce implementation ambiguity.
- Improve traceability between UML artifacts.
- Support enterprise-level software documentation.

---

# Applicable Standards

This documentation complies with:

- OMG Unified Modeling Language (UML) 2.x
- IEEE 1016 – Software Design Description
- ISO/IEC/IEEE 42010 – Architecture Description
- Object-Oriented Analysis and Design Best Practices
- Enterprise Layered Architecture Guidelines

---

# Sequence Diagram Structure

Every sequence diagram SHALL contain the following elements.

## Mandatory Components

- Diagram Title
- Diagram Identifier
- Version
- Primary Actor
- Lifelines
- Activation Bars
- Messages
- Return Messages
- Combined Fragments
- Business Notes
- Error Handling
- End of Interaction

---

# Standard Lifeline Order

Lifelines must appear from left to right in the following order.

```
Actor

↓

Boundary (UI)

↓

Controller

↓

Business Service

↓

Repository

↓

Firebase Authentication

↓

Cloud Firestore

↓

Firebase Storage

↓

Notification Service

↓

Audit Log
```

No diagram should violate this ordering unless there is a justified architectural reason.

---

# Naming Standards

## Diagram Name

```
01-Student-Login-Sequence
```

## Participants

Use singular nouns.

Examples

```
Student

Teacher

CourseService

AttendanceRepository

AuthenticationController
```

Avoid abbreviations.

Incorrect

```
Ctrl

Svc

Repo1

Temp
```

---

# Message Naming Standards

Messages SHALL use clear business verbs.

Correct

```
authenticate()

registerStudent()

loadCourses()

validateEnrollment()

saveAttendance()

recordMarks()

generateReport()

publishAnnouncement()

uploadResource()

assignTeacher()
```

Incorrect

```
run()

process()

go()

doTask()

execute()
```

---

# Return Message Standards

Return messages should clearly indicate outcomes.

Examples

```
Authentication Successful

Validation Failed

Enrollment Created

Payment Completed

Report Generated

Permission Denied

Record Saved
```

---

# Activation Bar Standards

Activation bars shall represent execution duration.

Every synchronous operation must activate:

- Controller
- Service
- Repository

Nested activations are allowed where necessary.

---

# Combined Fragment Standards

## alt Fragment

Used for decision branches.

Examples

- Login Success / Failure
- Payment Success / Failure
- User Exists / User Not Found

---

## opt Fragment

Used for optional behavior.

Examples

- Upload Profile Image
- Send Email Verification
- Generate Optional Receipt

---

## loop Fragment

Used for repeated operations.

Examples

- Process Student List
- Save Attendance for Each Student
- Send Notifications to All Parents

---

## par Fragment

Used for parallel execution.

Examples

- Save Data
- Send Notification
- Write Audit Log

---

## break Fragment

Used for fatal errors.

Examples

- Authentication Failure
- Permission Denied
- Validation Failure

---

# Interaction Rules

Every request SHALL follow this flow.

```
Actor

↓

Boundary

↓

Controller

↓

Business Service

↓

Repository

↓

Firebase
```

Direct communication between Actor and Repository is prohibited.

Direct communication between UI and Database is prohibited.

---

# Service Layer Standards

Business logic SHALL exist only in services.

Services are responsible for:

- Validation
- Authorization
- Business Rules
- Workflow Coordination
- Transaction Management

Services SHALL NOT render UI.

---

# Repository Standards

Repositories SHALL only:

- Read Data
- Write Data
- Update Data
- Delete Data
- Execute Queries

Repositories SHALL NOT implement business logic.

---

# Security Standards

Every protected interaction must verify:

- Authentication
- Authorization
- User Status
- Role
- Institute Membership
- Permissions

Passwords SHALL NEVER appear in sequence diagrams.

Sensitive information SHALL NOT be logged.

---

# Firebase Standards

Only Repository or Infrastructure Services may communicate with:

- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging
- Cloud Functions

User Interface components SHALL NEVER access Firebase directly.

---

# Error Handling Standards

Every sequence diagram must include:

- Validation Errors
- Authentication Errors
- Authorization Errors
- Network Failures
- Firebase Exceptions
- Storage Failures
- Database Failures

These should be represented using **alt** or **break** fragments.

---

# Transaction Standards

Critical operations must be atomic.

Examples:

- Course Enrollment
- Fee Payment
- Marks Recording
- Attendance Saving
- User Creation

If any step fails:

- Rollback transaction.
- Notify the user.
- Write an audit log.

---

# Notification Standards

Notifications should be asynchronous.

Supported notification types:

- Email
- SMS
- Push Notification
- In-App Notification

Notification failures SHALL NOT interrupt the main business transaction.

---

# Audit Standards

Every important interaction must generate an audit log.

Required audit information:

- User ID
- Action
- Entity Type
- Entity ID
- Institute ID
- Timestamp
- Device Information
- IP Address
- Result (Success/Failure)

---

# Performance Standards

Sequence diagrams should minimize unnecessary interactions.

Recommended practices:

- Batch database operations
- Reuse loaded data
- Avoid duplicate queries
- Lazy loading where appropriate
- Cache frequently accessed data

---

# Diagram Layout Standards

Every diagram should follow these visual guidelines.

## Actor Position

Leftmost side.

---

## Boundary

Immediately after Actor.

---

## Controller

Center-left.

---

## Business Service

Center.

---

## Repository

Center-right.

---

## Firebase Services

Right side.

---

## Audit / Notification Services

Rightmost side.

---

# Diagram Formatting Standards

Use:

- Straight message lines
- Proper alignment
- Consistent spacing
- Clear participant names
- Readable notes
- Uniform font sizes

Avoid:

- Crossing lines
- Overlapping lifelines
- Ambiguous messages
- Excessive text inside diagrams

---

# Traceability Standards

Each sequence diagram SHALL reference:

- Functional Requirement
- Use Case
- Activity Diagram
- Class Diagram

This ensures complete traceability across the Software Design Specification.

---

# Documentation Deliverables

Every sequence diagram package shall include:

- Draw.io source (`.drawio`)
- PlantUML source (`.puml`)
- PNG preview (`.png`)
- README.md

---

# Quality Checklist

Before approving a sequence diagram, verify:

- Actor identified
- Lifelines ordered correctly
- Messages named properly
- Activation bars included
- Return messages defined
- Combined fragments used where necessary
- Error handling documented
- Business rules respected
- Security validations included
- Traceability completed

---

# Version Information

| Property | Value |
|----------|-------|
| Module | Sequence Diagram |
| Document | 04-Sequence-Standards.md |
| Version | 1.0 |
| UML Standard | UML 2.x |
| Documentation Standard | Enterprise Software Design Specification (SDS) |
| Architecture Style | Layered Architecture + Service-Oriented Design |
| Project | TechmoEDU Smart Learning Platform |

---

# Conclusion

These standards establish a unified approach for designing, documenting, and maintaining all Sequence Diagrams within the TechmoEDU Smart Learning Platform. Adhering to these guidelines ensures consistency, scalability, maintainability, and alignment with enterprise software engineering best practices.

---

**Project:** TechmoEDU Smart Learning Platform

**Module:** Sequence Diagram

**Prepared For:** University Final Year Project / Enterprise Software Development

**Copyright © TechmoEDU Smart Learning Platform**
