# 04 – Sequence Diagram

## Overview

This module contains the complete UML Sequence Diagram documentation for the **TechmoEDU Smart Learning Platform**.

Sequence Diagrams illustrate how objects, users, services, and system components interact with each other over time to accomplish a specific business process.

Unlike Use Case Diagrams and Activity Diagrams, Sequence Diagrams focus on the chronological exchange of messages between actors and internal system components.

These diagrams are designed according to the **OMG Unified Modeling Language (UML) 2.x Specification** and follow enterprise software engineering best practices.

---

# Objectives

The objectives of this module are to:

- Model the runtime behaviour of the system.
- Describe object interactions in chronological order.
- Define communication between UI, Services, Firebase and Database.
- Support software architecture validation.
- Improve implementation accuracy.
- Reduce ambiguity during development.
- Provide implementation-ready technical documentation.

---

# Scope

This module documents the interaction flow of all major functional requirements of the TechmoEDU Smart Learning Platform.

The following functional areas are included:

- Authentication
- User Registration
- Course Management
- Student Enrollment
- Attendance Management
- Marks Recording
- Fee Management
- Learning Resource Management
- Announcement Management
- Parent–Student Linking
- Teacher Assignment
- Report Generation
- User Management

---

# UML Standard

All diagrams follow the UML 2.x Sequence Diagram specification.

The following UML elements are used throughout this documentation:

- Actor
- Lifeline
- Activation
- Synchronous Message
- Asynchronous Message
- Return Message
- Self Message
- Object Creation
- Object Destruction
- Combined Fragments
  - alt
  - opt
  - loop
  - par
  - break
- Guard Conditions
- Notes

---

# Architectural Layers

Every sequence diagram follows the same enterprise architecture.

```
Actor
   │
   ▼
User Interface (Boundary)
   │
   ▼
Application Controller
   │
   ▼
Business Service
   │
   ▼
Repository Layer
   │
   ▼
Firebase Authentication
Cloud Firestore
Firebase Storage
Cloud Functions
Notification Service
Audit Service
```

---

# Technology Stack

The sequence diagrams are designed based on the actual architecture of TechmoEDU.

| Layer | Technology |
|---------|------------|
| Frontend | React |
| Backend | Firebase |
| Authentication | Firebase Authentication |
| Database | Cloud Firestore |
| Storage | Firebase Storage |
| Notifications | Firebase Cloud Messaging |
| Reports | PDF Generator |
| Hosting | Firebase Hosting |
| Version Control | GitHub |

---

# Included Sequence Diagrams

This module contains the following sequence diagrams.

| No | Sequence Diagram |
|----|------------------|
| 01 | Student Login |
| 02 | Student Registration |
| 03 | Course Enrollment |
| 04 | Attendance Marking |
| 05 | Marks Recording |
| 06 | Fee Payment |
| 07 | Resource Upload |
| 08 | Announcement Publishing |
| 09 | Parent–Student Linking |
| 10 | Teacher Assignment |
| 11 | Report Generation |
| 12 | User Management |

---

# Folder Structure

```
04-Sequence-Diagram/
│
├── README.md
├── 01-Sequence-List.md
├── 02-Sequence-Descriptions.md
├── 03-Interaction-Rules.md
├── 04-Sequence-Standards.md
│
├── archive/
│   └── README.md
│
├── diagrams/
│   ├── README.md
│   │
│   ├── drawio/
│   │   ├── README.md
│   │   ├── 01-Student-Login-Sequence.drawio
│   │   ├── ...
│   │
│   ├── png/
│   │   ├── README.md
│   │   ├── 01-Student-Login-Sequence.png
│   │   ├── ...
│   │
│   └── plantuml/
│       ├── README.md
│       ├── 01-Student-Login-Sequence.puml
│       ├── ...
```

---

# Design Principles

The diagrams are developed according to the following software engineering principles.

- High Cohesion
- Low Coupling
- Separation of Concerns
- Layered Architecture
- Service-Oriented Design
- Single Responsibility Principle
- Reusability
- Scalability
- Maintainability
- Security by Design

---

# Naming Convention

Each sequence diagram follows the naming convention below.

```
01-Student-Login-Sequence
02-Student-Registration-Sequence
03-Course-Enrollment-Sequence
...
12-User-Management-Sequence
```

Each diagram includes:

- Draw.io source
- PNG preview
- PlantUML source

---

# Documentation Standards

Every sequence diagram package includes:

- Objective
- Actors
- Participants
- Preconditions
- Main Sequence
- Alternative Sequence
- Exception Sequence
- Postconditions
- Business Rules
- Related Use Case
- Related Activity Diagram
- Related Class Diagram

---

# Version

**Module Version:** 1.0

**Documentation Standard:** Enterprise Software Design Specification (SDS)

**UML Version:** UML 2.x

---

# Author

**Project:** TechmoEDU Smart Learning Platform

**Documentation Type:** Software Design Specification (SDS)

**Module:** Sequence Diagram

**Prepared For:** University Final Year Project / Enterprise Software Development

---

© TechmoEDU Smart Learning Platform
