# Sequence Diagrams Repository

## Overview

The **diagrams** directory contains all UML Sequence Diagram artifacts for the **TechmoEDU Smart Learning Platform**.

This directory serves as the central repository for every sequence diagram developed during the Software Design phase.

Each sequence diagram represents the runtime interaction between actors, user interfaces, controllers, services, repositories, Firebase infrastructure, and supporting system components.

All diagrams comply with the **OMG UML 2.x Specification** and the project's **Enterprise Software Design Specification (SDS)**.

---

# Purpose

The objectives of this directory are to:

- Store all Sequence Diagrams in one location.
- Maintain a clear separation of diagram formats.
- Improve documentation organization.
- Support collaborative development.
- Simplify version management.
- Improve traceability.
- Support future maintenance.

---

# Directory Structure

```
diagrams/
│
├── README.md
│
├── drawio/
│   ├── README.md
│   ├── 01-Student-Login-Sequence.drawio
│   ├── 02-Student-Registration-Sequence.drawio
│   ├── ...
│
├── png/
│   ├── README.md
│   ├── 01-Student-Login-Sequence.png
│   ├── 02-Student-Registration-Sequence.png
│   ├── ...
│
└── plantuml/
    ├── README.md
    ├── 01-Student-Login-Sequence.puml
    ├── 02-Student-Registration-Sequence.puml
    ├── ...
```

---

# Directory Responsibilities

## drawio/

Contains editable Draw.io source files.

Purpose

- UML editing
- Design modifications
- Collaborative updates
- Architecture refinement

File Format

```
.drawio
```

---

## png/

Contains exported PNG preview images.

Purpose

- Documentation
- GitHub preview
- Reports
- Presentations
- Software Design Specification

File Format

```
.png
```

---

## plantuml/

Contains PlantUML source code.

Purpose

- Version control
- Automatic diagram generation
- CI/CD documentation
- UML portability

File Format

```
.puml
```

---

# Diagram Naming Convention

Every sequence diagram follows a standard naming convention.

```
01-Student-Login-Sequence

02-Student-Registration-Sequence

03-Course-Enrollment-Sequence

04-Attendance-Marking-Sequence

05-Marks-Recording-Sequence

06-Fee-Payment-Sequence

07-Resource-Upload-Sequence

08-Announcement-Publishing-Sequence

09-Parent-Student-Linking-Sequence

10-Teacher-Assignment-Sequence

11-Report-Generation-Sequence

12-User-Management-Sequence
```

Each diagram must have matching filenames across all three formats.

Example

```
drawio/
01-Student-Login-Sequence.drawio

png/
01-Student-Login-Sequence.png

plantuml/
01-Student-Login-Sequence.puml
```

---

# UML Compliance

All diagrams shall comply with:

- OMG UML 2.x Specification
- IEEE 1016 Software Design Description
- ISO/IEC/IEEE 42010 Architecture Description
- Enterprise Software Engineering Best Practices

---

# Standard Participants

Sequence diagrams may include:

## Actors

- Student
- Parent
- Teacher
- Institute Administrator
- Super Administrator

---

## Boundary Objects

- Login Page
- Registration Page
- Dashboard
- Attendance Page
- Payment Page
- Report Page

---

## Control Objects

- Authentication Controller
- Course Controller
- Attendance Controller
- Examination Controller
- Payment Controller
- Report Controller

---

## Service Layer

- Authentication Service
- User Service
- Course Service
- Attendance Service
- Examination Service
- Payment Service
- Notification Service
- Audit Service

---

## Repository Layer

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

# Quality Requirements

Every diagram shall include:

- Actor
- Lifelines
- Activation Bars
- Synchronous Messages
- Return Messages
- Combined Fragments
- Business Notes
- Exception Handling
- Security Validation
- Audit Logging

---

# Version Control

Every update should preserve:

- Diagram Number
- Version
- Modification Date
- Author
- Change Summary

Example

| Property | Value |
|----------|-------|
| Diagram | 01-Student-Login-Sequence |
| Version | v1.1 |
| Modified | 2026-07-13 |
| Author | TechmoEDU Development Team |
| Changes | Added MFA validation |

---

# Traceability

Each sequence diagram must be linked to:

- Functional Requirement
- Use Case
- Activity Diagram
- Class Diagram
- Sequence Description

This ensures complete traceability throughout the Software Design Specification.

---

# Best Practices

When creating diagrams:

- Use meaningful participant names.
- Maintain left-to-right architectural flow.
- Keep messages concise and action-oriented.
- Avoid crossing message lines.
- Include alternative and exception flows.
- Keep diagram layout consistent across modules.

---

# Repository Maintenance

Before committing changes:

- Verify all three formats exist.
- Ensure filenames match.
- Validate PlantUML syntax.
- Confirm Draw.io file opens correctly.
- Export updated PNG previews.
- Update documentation if required.

---

# Version Information

| Property | Value |
|----------|-------|
| Module | Sequence Diagram |
| Directory | diagrams |
| Version | 1.0 |
| Documentation Standard | Enterprise Software Design Specification (SDS) |
| UML Standard | UML 2.x |
| Project | TechmoEDU Smart Learning Platform |

---

# Conclusion

The **diagrams** directory is the authoritative repository for all Sequence Diagram artifacts. Maintaining this directory according to the defined standards ensures consistency, traceability, collaboration, and long-term maintainability of the TechmoEDU Smart Learning Platform documentation.

---

**Project:** TechmoEDU Smart Learning Platform

**Module:** Sequence Diagram

**Directory:** diagrams

**Status:** Active UML Repository

**Copyright © TechmoEDU Smart Learning Platform**
