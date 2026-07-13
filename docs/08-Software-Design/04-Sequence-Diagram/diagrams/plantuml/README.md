# PlantUML Source Repository

## Overview

The **plantuml** directory contains the official PlantUML source code for all UML Sequence Diagrams developed for the **TechmoEDU Smart Learning Platform**.

These source files provide a text-based representation of each sequence diagram and serve as the primary artifacts for automated UML generation, version control, continuous integration (CI), documentation portability, and architecture validation.

Every PlantUML source file corresponds to a Draw.io diagram and a PNG preview. All three artifacts must remain synchronized throughout the project lifecycle.

---

# Purpose

The objectives of this directory are to:

- Maintain text-based UML source files.
- Support automatic diagram generation.
- Improve Git version control.
- Simplify collaborative development.
- Enable continuous integration pipelines.
- Preserve architecture traceability.
- Ensure long-term maintainability.

---

# Directory Structure

```
plantuml/
│
├── README.md
│
├── 01-Student-Login-Sequence.puml
├── 02-Student-Registration-Sequence.puml
├── 03-Course-Enrollment-Sequence.puml
├── 04-Attendance-Marking-Sequence.puml
├── 05-Marks-Recording-Sequence.puml
├── 06-Fee-Payment-Sequence.puml
├── 07-Resource-Upload-Sequence.puml
├── 08-Announcement-Publishing-Sequence.puml
├── 09-Parent-Student-Linking-Sequence.puml
├── 10-Teacher-Assignment-Sequence.puml
├── 11-Report-Generation-Sequence.puml
└── 12-User-Management-Sequence.puml
```

---

# File Naming Standard

Every PlantUML source file shall follow the standard naming convention.

```
01-Student-Login-Sequence.puml

02-Student-Registration-Sequence.puml

03-Course-Enrollment-Sequence.puml

...

12-User-Management-Sequence.puml
```

Rules

- Two-digit numbering.
- Business-oriented names.
- Hyphen-separated words.
- No spaces.
- Extension must be `.puml`.

---

# PlantUML Standards

Every source file shall include:

- Diagram title
- Version information
- Actor definitions
- Participants
- Lifelines
- Activation bars
- Messages
- Return messages
- Combined fragments
- Notes
- Footer information

---

# Standard Participants

PlantUML diagrams may include:

## Actors

- Student
- Parent
- Teacher
- Institute Administrator
- Super Administrator

---

## Boundary Components

- Login Page
- Registration Page
- Dashboard
- Attendance Page
- Marks Page
- Payment Page
- Resource Upload Page
- Report Page

---

## Controllers

- Authentication Controller
- User Controller
- Course Controller
- Attendance Controller
- Examination Controller
- Payment Controller
- Report Controller

---

## Services

- Authentication Service
- User Service
- Course Service
- Attendance Service
- Examination Service
- Payment Service
- Notification Service
- Audit Service

---

## Repositories

- User Repository
- Course Repository
- Attendance Repository
- Examination Repository
- Payment Repository

---

## Infrastructure

- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging
- Cloud Functions

---

# UML Syntax Standards

Use official PlantUML syntax.

Examples

```
@startuml

actor Student

boundary LoginPage

control AuthenticationController

control AuthenticationService

database Firestore

Student -> LoginPage : Enter Credentials

LoginPage -> AuthenticationController : authenticate()

AuthenticationController -> AuthenticationService : authenticate()

AuthenticationService -> Firestore : validate()

Firestore --> AuthenticationService : User Data

AuthenticationService --> AuthenticationController : Success

AuthenticationController --> LoginPage : Display Dashboard

@enduml
```

---

# Combined Fragment Standards

The following fragments should be used where appropriate.

## alt

Examples

- Login Success / Failure
- Payment Success / Failure
- Permission Granted / Denied

---

## opt

Examples

- Upload Profile Image
- Send Verification Email
- Generate Receipt

---

## loop

Examples

- Save Attendance
- Record Marks
- Notify Parents

---

## par

Examples

- Save Data
- Send Notifications
- Write Audit Log

---

## break

Examples

- Validation Failure
- Authentication Failure
- Permission Denied

---

# Synchronization Rules

Every PlantUML file must have matching files.

```
drawio/

png/

plantuml/
```

Example

```
01-Student-Login-Sequence.drawio

01-Student-Login-Sequence.png

01-Student-Login-Sequence.puml
```

All three artifacts must represent the same system behaviour.

---

# Version Control Standards

PlantUML files are the preferred format for Git version control because they are text-based.

Each significant update should include:

- Version
- Author
- Modified Date
- Change Summary

Example

| Property | Value |
|----------|-------|
| Diagram | Student Login Sequence |
| Version | v1.1 |
| Modified | 2026-07-13 |
| Author | TechmoEDU Development Team |
| Changes | Added account lockout logic |

---

# Editing Guidelines

When editing PlantUML files:

- Preserve diagram numbering.
- Keep participant names consistent.
- Use meaningful message names.
- Group related interactions.
- Avoid duplicated participants.
- Maintain readable indentation.
- Validate syntax before committing.

---

# Quality Checklist

Before committing a PlantUML file:

- Syntax validated.
- Diagram renders successfully.
- Participants correctly ordered.
- Messages clearly named.
- Combined fragments complete.
- Notes included where necessary.
- Draw.io version synchronized.
- PNG preview regenerated.

---

# Repository Responsibilities

This directory is responsible for:

- Text-based UML source management.
- Automated UML generation.
- Git-friendly documentation.
- CI/CD integration.
- Long-term architecture maintenance.
- Cross-platform portability.

---

# Related Directories

```
diagrams/

├── drawio/
├── png/
└── plantuml/
```

The PlantUML directory complements the Draw.io and PNG repositories and should always remain synchronized with them.

---

# Compliance

This repository follows:

- OMG UML 2.x Specification
- PlantUML Official Syntax
- IEEE 1016 Software Design Description
- ISO/IEC/IEEE 42010 Architecture Description
- Enterprise Software Engineering Best Practices

---

# Version Information

| Property | Value |
|----------|-------|
| Module | Sequence Diagram |
| Directory | diagrams/plantuml |
| Version | 1.0 |
| Documentation Standard | Enterprise Software Design Specification (SDS) |
| UML Standard | OMG UML 2.x |
| Project | TechmoEDU Smart Learning Platform |

---

# Conclusion

The **plantuml** directory serves as the authoritative repository for all text-based UML Sequence Diagram definitions. By maintaining consistent syntax, synchronized artifacts, and version-controlled source files, the project achieves greater maintainability, collaboration, automation, and architectural consistency.

---

**Project:** TechmoEDU Smart Learning Platform

**Module:** Sequence Diagram

**Directory:** diagrams/plantuml

**Status:** Official PlantUML Source Repository

**Copyright © TechmoEDU Smart Learning Platform**
