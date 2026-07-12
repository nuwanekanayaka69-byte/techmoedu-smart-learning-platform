# 01 - Class List

> Chapter 08 – Software Design

# 01 - Class List

> **Chapter 08 – Software Design**
>
> **Section:** UML Class Diagram

---

# Document Information

| Item | Details |
|------|---------|
| Document | Class List |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | Approved |
| Author | Nuwan S. Ekanayaka |
| Last Updated | 2026 |

---

# Purpose

This document defines all major domain classes used by the TechmoEDU Smart Learning Platform.

The identified classes form the foundation of the system architecture and are used throughout the following software engineering artifacts:

- UML Class Diagrams
- Sequence Diagrams
- Component Diagrams
- Database Design
- Firestore Collections
- Backend Services
- Frontend Models
- API Specifications

---

# Design Principles

The class model follows these software engineering principles.

- Object-Oriented Design
- SOLID Principles
- Low Coupling
- High Cohesion
- Separation of Concerns
- Multi-Institute Architecture
- Role-Based Access Control (RBAC)
- Firestore Optimized Data Model

---

# Class Categories

The platform classes are grouped into the following domains.

| Category | Purpose |
|-----------|----------|
| Identity & Access | User authentication and authorization |
| Institute Management | Institute administration |
| Academic Management | Courses and teaching |
| Student Management | Student records |
| Parent Management | Parent linkage |
| Attendance Management | Attendance tracking |
| Examination Management | Exams and marks |
| Finance Management | Fees and payments |
| Resource Management | Learning materials |
| Communication | Announcements and notifications |
| Reporting | Reports |
| Audit | Activity logging |

---

# Complete Class Inventory

| No | Class | Category | Responsibility | Firestore Collection |
|---:|--------|-----------|----------------|----------------------|
| 01 | User | Identity | Base user entity | users |
| 02 | Role | Identity | Role definitions | roles |
| 03 | Permission | Identity | Permission rules | permissions |
| 04 | SuperAdministrator | Identity | Entire platform management | users |
| 05 | InstituteAdministrator | Identity | Institute administration | users |
| 06 | Teacher | Academic | Teaching activities | users |
| 07 | Student | Academic | Learning activities | users |
| 08 | Parent | Academic | Parent access | users |
| 09 | Institute | Institute | Institute information | institutes |
| 10 | InstituteMembership | Institute | User institute mapping | instituteMemberships |
| 11 | TeacherAssignment | Institute | Teacher allocations | teacherAssignments |
| 12 | ParentStudentLink | Parent | Parent-child relationship | parentStudentLinks |
| 13 | Course | Academic | Course management | courses |
| 14 | Enrollment | Academic | Student enrollments | enrollments |
| 15 | ClassSession | Academic | Class schedules | classSessions |
| 16 | Attendance | Attendance | Attendance records | attendance |
| 17 | Examination | Examination | Examination details | examinations |
| 18 | Mark | Examination | Student marks | marks |
| 19 | FeeStructure | Finance | Fee configuration | feeStructures |
| 20 | Payment | Finance | Fee payments | payments |
| 21 | Receipt | Finance | Payment receipts | receipts |
| 22 | LearningResource | Resource | Learning materials | resources |
| 23 | Assignment | Resource | Assignments | assignments |
| 24 | Submission | Resource | Assignment submissions | submissions |
| 25 | Announcement | Communication | Platform announcements | announcements |
| 26 | Notification | Communication | User notifications | notifications |
| 27 | Report | Reporting | Report generation | reports |
| 28 | AuditLog | Audit | Activity logging | auditLogs |

---

# Identity Hierarchy

```
User
│
├── SuperAdministrator
├── InstituteAdministrator
├── Teacher
├── Student
└── Parent
```

---

# Institute Domain

Classes

- Institute
- InstituteMembership
- TeacherAssignment

Responsibilities

- Institute registration
- Institute ownership
- Teacher allocation
- Multi-institute support

---

# Academic Domain

Classes

- Course
- Enrollment
- ClassSession
- Attendance
- Examination
- Mark

Responsibilities

- Course management
- Enrollment
- Timetable
- Attendance
- Examination
- Mark recording

---

# Finance Domain

Classes

- FeeStructure
- Payment
- Receipt

Responsibilities

- Fee configuration
- Payment processing
- Receipt generation

---

# Learning Domain

Classes

- LearningResource
- Assignment
- Submission

Responsibilities

- Upload resources
- Assignment publishing
- Student submissions

---

# Communication Domain

Classes

- Announcement
- Notification

Responsibilities

- Institute announcements
- Push notifications

---

# Reporting Domain

Classes

- Report

Responsibilities

- Attendance Reports
- Marks Reports
- Fee Reports
- Student Reports
- Teacher Reports

---

# Audit Domain

Classes

- AuditLog

Responsibilities

- Login logs
- Security logs
- User activity logs
- Data modification history

---

# Firestore Mapping

| Collection | Main Class |
|------------|------------|
| users | User |
| institutes | Institute |
| instituteMemberships | InstituteMembership |
| teacherAssignments | TeacherAssignment |
| courses | Course |
| enrollments | Enrollment |
| classSessions | ClassSession |
| attendance | Attendance |
| examinations | Examination |
| marks | Mark |
| feeStructures | FeeStructure |
| payments | Payment |
| receipts | Receipt |
| resources | LearningResource |
| assignments | Assignment |
| submissions | Submission |
| announcements | Announcement |
| notifications | Notification |
| reports | Report |
| auditLogs | AuditLog |

---

# Dependency Summary

The following class groups depend on one another.

```
Identity
    │
    ▼
Institute
    │
    ▼
Academic
    │
    ▼
Attendance
    │
    ▼
Examination
    │
    ▼
Finance
    │
    ▼
Communication
    │
    ▼
Reporting
    │
    ▼
Audit
```

---

# Statistics

| Item | Count |
|------|------:|
| Total Classes | 28 |
| Identity Classes | 8 |
| Institute Classes | 3 |
| Academic Classes | 6 |
| Finance Classes | 3 |
| Resource Classes | 3 |
| Communication Classes | 2 |
| Reporting Classes | 1 |
| Audit Classes | 1 |

---

# Deliverables

This document is used as the reference for:

- UML Class Diagram
- Database Design
- Firestore Collections
- Backend Development
- Frontend Models
- API Design
- Testing

---

# Version History

| Version | Date | Description |
|----------|------|-------------|
| 1.0 | 2026 | Initial Enterprise Class List |
