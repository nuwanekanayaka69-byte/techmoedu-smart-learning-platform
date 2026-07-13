# 04 - Multiplicity Rules

> **Chapter 08 – Software Design**
>
> **Section:** UML Class Diagram

---

# Document Information

| Item | Details |
|------|---------|
| Document | Multiplicity Rules |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | Approved |
| Author | Nuwan S. Ekanayaka |
| Last Updated | 2026 |

---

# Purpose

This document defines the multiplicity (cardinality) rules used in the UML Class Diagrams of the TechmoEDU Smart Learning Platform.

Multiplicity specifies how many instances of one class may be associated with instances of another class. These rules ensure consistency between the UML design, Firestore collections, backend services, and business logic.

---

# Objectives

This document aims to:

- Define cardinality constraints between domain classes.
- Support UML Class Diagram creation.
- Align object relationships with Firestore collections.
- Enforce business validation rules.
- Improve consistency during implementation.

---

# UML Multiplicity Symbols

| Multiplicity | Meaning |
|-------------|---------|
| `1` | Exactly one |
| `0..1` | Zero or one |
| `*` | Many |
| `0..*` | Zero or many |
| `1..*` | One or many |
| `0..5` | Zero to five |
| `2..3` | Minimum two, maximum three |

---

# Identity & Access Rules

## User ↔ Role

```
Role 1 -------- 0..* User
```

### Rule

- Every User must have exactly one Role.
- One Role may be assigned to many Users.

---

## Role ↔ Permission

```
Role 1 -------- 0..* Permission
```

### Rule

A Role may contain multiple Permissions.

---

# Institute Management Rules

## Institute ↔ InstituteAdministrator

```
Institute 1 -------- 1 InstituteAdministrator
```

### Rule

Each Institute must have exactly one Institute Administrator.

---

## Institute ↔ Teacher

```
Institute 1 -------- 0..* Teacher
Teacher 0..* -------- 0..* Institute
```

### Rule

Teachers may teach in multiple Institutes.

---

## Institute ↔ Student

```
Institute 1 -------- 0..* Student
```

### Rule

Every Student belongs to one Institute.

---

## Institute ↔ Course

```
Institute 1 -------- 0..* Course
```

### Rule

Each Course belongs to exactly one Institute.

---

# Academic Rules

## Teacher ↔ Course

```
Teacher 0..* -------- 0..* Course
```

### Rule

A Teacher may teach multiple Courses.

A Course may have multiple Teachers.

---

## Student ↔ Enrollment

```
Student 1 -------- 0..5 Enrollment
```

### Rule

A Student may enroll in a maximum of five Courses.

---

## Course ↔ Enrollment

```
Course 1 -------- 0..* Enrollment
```

### Rule

A Course may have many enrolled Students.

---

## Course ↔ ClassSession

```
Course 1 -------- 0..* ClassSession
```

### Rule

Each Course contains multiple teaching sessions.

---

# Attendance Rules

## ClassSession ↔ Attendance

```
ClassSession 1 -------- 0..* Attendance
```

### Rule

Attendance records belong to one Class Session.

---

## Student ↔ Attendance

```
Student 1 -------- 0..* Attendance
```

### Rule

Each Attendance record belongs to one Student.

---

# Examination Rules

## Examination ↔ Mark

```
Examination 1 -------- 0..* Mark
```

### Rule

Every Examination contains multiple Marks.

---

## Student ↔ Mark

```
Student 1 -------- 0..* Mark
```

### Rule

Students receive multiple Marks.

---

# Parent Rules

## Parent ↔ ParentStudentLink

```
Parent 1 -------- 2..3 ParentStudentLink
```

### Rule

A Parent may be linked with two or three children.

---

## ParentStudentLink ↔ Student

```
ParentStudentLink 1 -------- 1 Student
```

### Rule

Each Link references one Student.

---

# Finance Rules

## FeeStructure ↔ Payment

```
FeeStructure 1 -------- 0..* Payment
```

### Rule

Payments are based on Fee Structures.

---

## Student ↔ Payment

```
Student 1 -------- 0..* Payment
```

### Rule

Students may have multiple Payments.

---

## Payment ↔ Receipt

```
Payment 1 -------- 1 Receipt
```

### Rule

Every Payment generates exactly one Receipt.

---

# Resource Management Rules

## Course ↔ LearningResource

```
Course 1 -------- 0..* LearningResource
```

### Rule

Each Course may contain many Resources.

---

## Teacher ↔ LearningResource

```
Teacher 1 -------- 0..* LearningResource
```

### Rule

Teachers upload Learning Resources.

---

## Assignment ↔ Submission

```
Assignment 1 -------- 0..* Submission
```

### Rule

One Assignment may receive many Submissions.

---

## Student ↔ Submission

```
Student 1 -------- 0..* Submission
```

### Rule

Students may submit multiple Assignments.

---

# Communication Rules

## Course ↔ Announcement

```
Course 1 -------- 0..* Announcement
```

### Rule

Announcements belong to Courses.

---

## Announcement ↔ Notification

```
Announcement 1 -------- 0..* Notification
```

### Rule

One Announcement generates many Notifications.

---

# Reporting Rules

## Report ↔ Student

```
Report 1 -------- 0..* Student
```

### Rule

Reports summarize one or more Student records.

---

# Audit Rules

## User ↔ AuditLog

```
User 1 -------- 0..* AuditLog
```

### Rule

Every Audit Log belongs to exactly one User.

---

# Firestore Multiplicity Mapping

| Parent Collection | Child Collection | Relationship |
|-------------------|------------------|-------------|
| institutes | courses | One-to-Many |
| institutes | users | One-to-Many |
| courses | enrollments | One-to-Many |
| courses | classSessions | One-to-Many |
| classSessions | attendance | One-to-Many |
| examinations | marks | One-to-Many |
| feeStructures | payments | One-to-Many |
| payments | receipts | One-to-One |
| assignments | submissions | One-to-Many |
| announcements | notifications | One-to-Many |
| users | auditLogs | One-to-Many |

---

# Business Validation Rules

The following constraints must always be enforced:

1. Every User must have one Role.
2. Every Student belongs to one Institute.
3. Every Course belongs to one Institute.
4. Students may enroll in a maximum of five Courses.
5. A Parent may be linked to two or three Students.
6. Every Attendance record belongs to one Student and one Class Session.
7. Every Mark belongs to one Student and one Examination.
8. Every Payment belongs to one Student.
9. Every Receipt belongs to one Payment.
10. Every Announcement belongs to one Course.
11. Every AuditLog belongs to one User.

---

# Multiplicity Summary

| Relationship Type | Count |
|-------------------|------:|
| One-to-One | 3 |
| One-to-Many | 14 |
| Many-to-Many | 2 |
| Limited Multiplicity | 2 |

---

# Design Principles

The multiplicity model follows:

- Object-Oriented Design
- SOLID Principles
- High Cohesion
- Low Coupling
- Firestore Best Practices
- Multi-Institute Architecture
- Role-Based Access Control
- Referential Integrity

---

# Deliverables

This document supports:

- UML Class Diagrams
- Firestore Design
- Backend Entity Models
- React Domain Models
- API Development
- Validation Rules
- Software Testing

---

# Next Phase

➡ **UML Class Diagram Design**

The following diagrams will be created:

1. Overall Domain Class Diagram
2. User and Role Class Diagram
3. Institute Management Class Diagram
4. Academic Management Class Diagram
5. Attendance and Examination Class Diagram
6. Fee and Payment Class Diagram
7. Resource and Communication Class Diagram

These diagrams will be delivered in:

- `.drawio`
- `.png`
- `.puml`
