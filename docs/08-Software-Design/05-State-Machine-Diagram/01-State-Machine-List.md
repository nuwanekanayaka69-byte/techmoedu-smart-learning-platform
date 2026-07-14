# TechmoEDU Smart Learning Platform

# 01-State-Machine-List

**Module**

State Machine Diagram Module

**Document Type**

Enterprise UML Design Specification

**Version**

1.0

---

# Purpose

This document defines the complete list of UML State Machine Diagrams required for the TechmoEDU Smart Learning Platform.

Each State Machine represents the complete lifecycle of a major business entity from its initial state to its final state, including all intermediate transitions, business events, guard conditions, exception states, and recovery mechanisms.

These diagrams complement the Use Case, Activity, Sequence, and Class Diagrams by modeling object behavior throughout its lifetime.

---

# Objectives

The objectives of this document are to:

- Identify all business entities requiring lifecycle modeling.
- Define the scope of each State Machine Diagram.
- Ensure complete behavioral coverage of the platform.
- Maintain consistency across all UML artifacts.
- Support implementation, testing, and maintenance.
- Provide traceability to Functional Requirements and Use Cases.

---

# State Machine Diagram Catalogue

| ID | State Machine | Primary Entity | Priority | Status |
|----|---------------|---------------|----------|--------|
| SM-01 | User Account State Machine | User | High | Planned |
| SM-02 | Student Registration State Machine | Student Registration | High | Planned |
| SM-03 | Course State Machine | Course | High | Planned |
| SM-04 | Course Enrollment State Machine | Enrollment | High | Planned |
| SM-05 | Attendance Session State Machine | Attendance Session | High | Planned |
| SM-06 | Examination State Machine | Examination | High | Planned |
| SM-07 | Marks & Results State Machine | Examination Result | High | Planned |
| SM-08 | Fee Payment State Machine | Payment | High | Planned |
| SM-09 | Learning Resource State Machine | Resource | Medium | Planned |
| SM-10 | Announcement State Machine | Announcement | Medium | Planned |
| SM-11 | Parent–Student Link State Machine | ParentStudentLink | Medium | Planned |
| SM-12 | Teacher Assignment State Machine | TeacherAssignment | High | Planned |

---

# Diagram Summary

---

## SM-01

### User Account State Machine

**Primary Entity**

User

**Purpose**

Models the lifecycle of a platform user account including authentication, activation, suspension, reactivation, and archival.

**Related Modules**

- Authentication
- Authorization
- User Management
- Security

---

## SM-02

### Student Registration State Machine

**Primary Entity**

Student Registration

**Purpose**

Represents the registration workflow from draft submission through approval and successful enrollment.

**Related Modules**

- Student Registration
- Admission
- Parent Linking

---

## SM-03

### Course State Machine

**Primary Entity**

Course

**Purpose**

Models the lifecycle of academic courses including creation, publication, activation, suspension, completion, and archival.

**Related Modules**

- Course Management
- Institute Management

---

## SM-04

### Course Enrollment State Machine

**Primary Entity**

Enrollment

**Purpose**

Models student enrollment requests, eligibility checking, payment validation, approval, cancellation, and completion.

**Related Modules**

- Enrollment
- Payment
- Attendance

---

## SM-05

### Attendance Session State Machine

**Primary Entity**

Attendance Session

**Purpose**

Represents attendance recording sessions from scheduling to final locking.

**Related Modules**

- Attendance
- Teacher Assignment

---

## SM-06

### Examination State Machine

**Primary Entity**

Examination

**Purpose**

Models examination scheduling, execution, completion, and publication.

**Related Modules**

- Examination
- Results

---

## SM-07

### Marks and Results State Machine

**Primary Entity**

Result

**Purpose**

Represents the lifecycle of marks from initial entry through approval and publication.

**Related Modules**

- Examination
- Reports

---

## SM-08

### Fee Payment State Machine

**Primary Entity**

Payment

**Purpose**

Models invoice creation, payment processing, settlement, reconciliation, refunds, and closure.

**Related Modules**

- Finance
- Student Management

---

## SM-09

### Learning Resource State Machine

**Primary Entity**

Learning Resource

**Purpose**

Represents resource uploading, validation, publication, versioning, archival, and deletion.

**Related Modules**

- Learning Resources
- Course Management

---

## SM-10

### Announcement State Machine

**Primary Entity**

Announcement

**Purpose**

Models the complete announcement publishing lifecycle.

**Related Modules**

- Communication
- Notification

---

## SM-11

### Parent–Student Link State Machine

**Primary Entity**

ParentStudentLink

**Purpose**

Represents verification, approval, activation, suspension, and unlinking of parent-student relationships.

**Related Modules**

- Parent Portal
- Student Management

---

## SM-12

### Teacher Assignment State Machine

**Primary Entity**

TeacherAssignment

**Purpose**

Models assigning teachers to institutes and courses including validation, approval, activation, suspension, and completion.

**Related Modules**

- Institute Management
- Academic Management

---

# Dependency Matrix

| State Machine | Related Use Case | Related Activity | Related Sequence | Related Class |
|---------------|-----------------|-----------------|-----------------|--------------|
| User Account | User Login | Login Activity | User Management Sequence | User & Role Class |
| Student Registration | Student Registration | Registration Activity | Registration Sequence | Academic Class |
| Course | Course Management | Course Activity | Course Sequence | Academic Class |
| Enrollment | Course Enrollment | Enrollment Activity | Enrollment Sequence | Academic Class |
| Attendance | Attendance | Attendance Activity | Attendance Sequence | Attendance Class |
| Examination | Examination | Examination Activity | Examination Sequence | Examination Class |
| Results | Marks Recording | Marks Activity | Marks Sequence | Examination Class |
| Fee Payment | Fee Payment | Payment Activity | Payment Sequence | Payment Class |
| Resource | Resource Upload | Upload Activity | Upload Sequence | Resource Class |
| Announcement | Publish Announcement | Announcement Activity | Announcement Sequence | Communication Class |
| Parent Link | Parent Linking | Linking Activity | Parent Linking Sequence | User Class |
| Teacher Assignment | Teacher Assignment | Assignment Activity | Assignment Sequence | Institute Class |

---

# Priority Classification

## Critical

- User Account
- Student Registration
- Course
- Enrollment
- Attendance
- Examination
- Results
- Fee Payment

---

## Medium

- Learning Resources
- Announcements
- Parent Linking
- Teacher Assignment

---

# Enterprise Modeling Principles

Every State Machine Diagram shall:

- Follow UML 2.x State Machine Specification.
- Include Initial and Final States.
- Include all business states.
- Include transition events.
- Include guard conditions.
- Include entry, exit, and internal actions.
- Include error and recovery states.
- Maintain consistency with Class, Activity, Sequence, and Use Case Diagrams.
- Be fully editable using Draw.io.
- Provide PlantUML source.
- Include a high-resolution PNG export.
- Be accompanied by a professional README.
- Be packaged as a ZIP archive.

---

# Naming Convention

```
01-User-Account-State-Machine

02-Student-Registration-State-Machine

03-Course-State-Machine

04-Course-Enrollment-State-Machine

05-Attendance-Session-State-Machine

06-Examination-State-Machine

07-Marks-Results-State-Machine

08-Fee-Payment-State-Machine

09-Learning-Resource-State-Machine

10-Announcement-State-Machine

11-Parent-Student-Link-State-Machine

12-Teacher-Assignment-State-Machine
```

---

# Expected Deliverables

Each State Machine Diagram package shall include:

- Editable Draw.io Diagram
- High Resolution PNG
- Complete PlantUML Source
- Professional README
- ZIP Package

---

# Success Criteria

The State Machine Module shall be considered complete when:

- All twelve State Machine Diagrams have been created.
- Every lifecycle is fully modeled.
- Business rules are represented.
- Error and recovery states are included.
- Documentation is synchronized with all other UML artifacts.
- All diagrams successfully render in Draw.io and PlantUML.
- All deliverables pass enterprise documentation quality review.

---

# Version History

| Version | Date | Description |
|----------|------|-------------|
| 1.0 | Initial Release | Enterprise State Machine Catalogue |
