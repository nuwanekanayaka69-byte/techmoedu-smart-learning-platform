# 01 – Sequence Diagram List

## Overview

This document provides the complete list of UML Sequence Diagrams used in the **TechmoEDU Smart Learning Platform**.

Each sequence diagram represents the interaction between system actors, user interfaces, application services, repositories, Firebase services, and supporting infrastructure for a specific business process.

The sequence diagrams are designed according to the **OMG UML 2.x Specification** and follow enterprise software engineering best practices.

---

# Purpose

The objectives of this document are to:

- Identify all sequence diagrams used in the project.
- Define the business process represented by each diagram.
- Specify the primary actors and participating system components.
- Map each sequence diagram to its corresponding Use Case, Activity Diagram, and Class Diagram.
- Maintain consistency throughout the Software Design Specification (SDS).

---

# Sequence Diagram Catalogue

| ID | Sequence Diagram | Primary Actor | Description | Related Use Case | Related Activity |
|----|------------------|---------------|-------------|------------------|------------------|
| SQ-01 | Student Login Sequence | Student | Authenticates a student and grants access to the dashboard. | Student Login | Student Login Activity |
| SQ-02 | Student Registration Sequence | Student | Registers a new student account and stores profile information. | Student Registration | Student Registration Activity |
| SQ-03 | Course Enrollment Sequence | Student | Enrolls a student into an available course after validation. | Course Enrollment | Course Enrollment Activity |
| SQ-04 | Attendance Marking Sequence | Teacher | Records attendance for a scheduled class session. | Attendance Management | Attendance Marking Activity |
| SQ-05 | Marks Recording Sequence | Teacher | Records examination marks and calculates grades. | Marks Recording | Marks Recording Activity |
| SQ-06 | Fee Payment Sequence | Student / Parent | Processes course fee payments and generates receipts. | Fee Payment | Fee Payment Activity |
| SQ-07 | Resource Upload Sequence | Teacher | Uploads learning materials to Firebase Storage. | Resource Upload | Resource Upload Activity |
| SQ-08 | Announcement Publishing Sequence | Institute Administrator | Publishes announcements to selected users. | Announcement Management | Announcement Publishing Activity |
| SQ-09 | Parent–Student Linking Sequence | Parent | Links a parent account with one or more student accounts. | Parent Linking | Parent–Student Linking Activity |
| SQ-10 | Teacher Assignment Sequence | Institute Administrator | Assigns teachers to institutes and courses. | Teacher Assignment | Teacher Assignment Activity |
| SQ-11 | Report Generation Sequence | Administrator / Teacher | Generates academic, attendance, and financial reports. | Report Generation | Report Generation Activity |
| SQ-12 | User Management Sequence | Super Administrator | Creates, updates, suspends, and manages platform users. | User Management | User Management Activity |

---

# Sequence Diagram Classification

## Authentication Module

| Diagram |
|----------|
| Student Login |
| Student Registration |

---

## Academic Module

| Diagram |
|----------|
| Course Enrollment |
| Attendance Marking |
| Marks Recording |

---

## Financial Module

| Diagram |
|----------|
| Fee Payment |

---

## Learning Resource Module

| Diagram |
|----------|
| Resource Upload |
| Announcement Publishing |

---

## Administration Module

| Diagram |
|----------|
| Parent–Student Linking |
| Teacher Assignment |
| Report Generation |
| User Management |

---

# Standard Participants

Every sequence diagram uses one or more of the following participants.

## External Actors

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
- Attendance Screen
- Marks Screen
- Payment Page
- Upload Page
- Announcement Page
- Reports Page
- User Management Page

---

## Control Objects

- Authentication Controller
- User Controller
- Course Controller
- Attendance Controller
- Examination Controller
- Payment Controller
- Resource Controller
- Notification Controller
- Report Controller

---

## Service Layer

- Authentication Service
- User Service
- Course Service
- Attendance Service
- Examination Service
- Payment Service
- Storage Service
- Notification Service
- Reporting Service
- Audit Service

---

## Repository Layer

- User Repository
- Course Repository
- Attendance Repository
- Examination Repository
- Payment Repository
- Resource Repository

---

## Infrastructure

- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging
- Cloud Functions
- PDF Generator

---

# Sequence Diagram Naming Convention

All sequence diagrams follow the naming convention below.

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

---

# Deliverables

Each sequence diagram package shall include:

- Draw.io editable diagram (`.drawio`)
- PlantUML source (`.puml`)
- PNG preview (`.png`)
- README documentation

---

# Traceability Matrix

| Sequence Diagram | Use Case | Activity Diagram | Class Diagram |
|------------------|----------|------------------|---------------|
| Student Login | Student Login | Student Login Activity | User & Role Class |
| Student Registration | Student Registration | Student Registration Activity | User & Role Class |
| Course Enrollment | Course Enrollment | Course Enrollment Activity | Academic Management Class |
| Attendance Marking | Attendance Management | Attendance Marking Activity | Attendance & Examination Class |
| Marks Recording | Marks Recording | Marks Recording Activity | Attendance & Examination Class |
| Fee Payment | Fee Payment | Fee Payment Activity | Fee & Payment Class |
| Resource Upload | Resource Upload | Resource Upload Activity | Resource & Communication Class |
| Announcement Publishing | Announcement Management | Announcement Publishing Activity | Resource & Communication Class |
| Parent–Student Linking | Parent Linking | Parent–Student Linking Activity | Institute Management Class |
| Teacher Assignment | Teacher Assignment | Teacher Assignment Activity | Institute Management Class |
| Report Generation | Report Generation | Report Generation Activity | Academic Management Class |
| User Management | User Management | User Management Activity | User & Role Class |

---

# Summary

This document serves as the master catalogue for all Sequence Diagrams within the TechmoEDU Smart Learning Platform. It provides complete traceability between functional requirements, use cases, activity diagrams, class diagrams, and runtime interactions, ensuring consistency across the Software Design Specification.

---

**Module:** Sequence Diagram  
**Document:** 01-Sequence-List.md  
**Version:** 1.0  
**Documentation Standard:** Enterprise Software Design Specification (SDS)

© TechmoEDU Smart Learning Platform
