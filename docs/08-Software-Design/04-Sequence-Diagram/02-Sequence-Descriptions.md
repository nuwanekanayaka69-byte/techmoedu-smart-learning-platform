# 02 – Sequence Diagram Descriptions

## Overview

This document provides detailed specifications for all UML Sequence Diagrams used in the **TechmoEDU Smart Learning Platform**.

Each sequence description defines the runtime interaction between actors, user interfaces, controllers, services, repositories, Firebase components, and supporting infrastructure.

The purpose of this document is to ensure consistency between Use Cases, Activity Diagrams, Class Diagrams, and Sequence Diagrams.

---

# Documentation Standard

Each sequence description includes:

- Objective
- Primary Actor
- Supporting Actors
- Participants
- Trigger
- Preconditions
- Main Interaction Flow
- Alternative Flow
- Exception Flow
- Postconditions
- Business Rules
- Related Use Case
- Related Activity Diagram
- Related Class Diagram

---

# SQ-01 Student Login Sequence

## Objective

Authenticate a registered student and securely grant access to the platform dashboard.

### Primary Actor

Student

### Supporting Actors

- Firebase Authentication
- Cloud Firestore

### Participants

- Student
- Login Page
- Authentication Controller
- Authentication Service
- Firebase Authentication
- User Repository
- Cloud Firestore
- Dashboard

### Trigger

Student selects **Login**.

### Preconditions

- Student account exists.
- Account is active.
- Internet connection is available.

### Main Interaction Flow

1. Student enters credentials.
2. Login Page validates input.
3. Authentication Controller receives request.
4. Authentication Service authenticates user.
5. Firebase Authentication verifies credentials.
6. User profile is loaded from Firestore.
7. Audit log is created.
8. Dashboard is displayed.

### Alternative Flow

- Invalid password.
- Email not verified.

### Exception Flow

- Firebase unavailable.
- Network timeout.
- User account suspended.

### Postconditions

Authenticated session is created.

### Business Rules

- Email must be verified.
- Account must be active.

### Related Use Case

Student Login

### Related Activity Diagram

Student Login Activity

### Related Class Diagram

User and Role Class

---

# SQ-02 Student Registration Sequence

## Objective

Register a new student account.

### Primary Actor

Student

### Supporting Actors

Institute Administrator

### Participants

- Student
- Registration Page
- Registration Controller
- User Service
- Firebase Authentication
- Cloud Firestore

### Trigger

Student submits registration form.

### Preconditions

- Email address is unique.
- Required fields completed.

### Main Interaction Flow

1. Student enters details.
2. System validates information.
3. Firebase Authentication creates account.
4. User profile saved.
5. Verification email sent.
6. Audit log created.

### Alternative Flow

Duplicate email.

### Exception Flow

Validation failure.

### Postconditions

Student account created.

### Business Rules

Email must be unique.

### Related Use Case

Student Registration

### Related Activity Diagram

Student Registration Activity

### Related Class Diagram

User and Role Class

---

# SQ-03 Course Enrollment Sequence

## Objective

Enroll a student in an available course.

### Primary Actor

Student

### Participants

- Student
- Enrollment Page
- Enrollment Controller
- Course Service
- Enrollment Repository
- Firestore

### Trigger

Student clicks **Enroll**.

### Preconditions

- Course available.
- Student active.

### Main Interaction Flow

1. Load available courses.
2. Select course.
3. Validate eligibility.
4. Create enrollment.
5. Save enrollment.
6. Notify student.

### Alternative Flow

Course already enrolled.

### Exception Flow

Course full.

### Postconditions

Enrollment completed.

### Business Rules

Maximum 5 active courses.

### Related Use Case

Course Enrollment

### Related Activity Diagram

Course Enrollment Activity

### Related Class Diagram

Academic Management Class

---

# SQ-04 Attendance Marking Sequence

## Objective

Record student attendance.

### Primary Actor

Teacher

### Participants

Teacher, Attendance Page, Attendance Controller, Attendance Service, Firestore

### Trigger

Teacher opens attendance screen.

### Preconditions

Assigned class session exists.

### Main Interaction Flow

1. Load class list.
2. Display students.
3. Mark attendance.
4. Save records.
5. Update summary.
6. Write audit log.

### Alternative Flow

Student absent.

### Exception Flow

Database failure.

### Postconditions

Attendance stored.

### Business Rules

Only assigned teacher may mark attendance.

### Related Class Diagram

Attendance and Examination Class

---

# SQ-05 Marks Recording Sequence

## Objective

Record examination marks.

### Primary Actor

Teacher

### Participants

Teacher, Marks Page, Examination Service, Firestore

### Trigger

Teacher selects examination.

### Preconditions

Examination exists.

### Main Interaction Flow

1. Load students.
2. Enter marks.
3. Validate range.
4. Calculate grades.
5. Save marks.
6. Publish if approved.

### Alternative Flow

Incomplete marks.

### Exception Flow

Invalid mark.

### Postconditions

Marks stored.

### Business Rules

Score must be between 0 and maximum mark.

---

# SQ-06 Fee Payment Sequence

## Objective

Process student fee payments.

### Primary Actor

Student / Parent

### Participants

Payment Page, Payment Service, Firestore

### Main Interaction Flow

1. View invoice.
2. Select payment.
3. Process payment.
4. Generate receipt.
5. Notify user.

### Business Rules

Receipt generated for every successful payment.

---

# SQ-07 Resource Upload Sequence

## Objective

Upload learning resources.

### Primary Actor

Teacher

### Participants

Teacher, Upload Page, Firebase Storage

### Main Interaction Flow

1. Select file.
2. Validate file.
3. Upload Storage.
4. Save metadata.
5. Notify students.

### Business Rules

Only assigned teachers may upload.

---

# SQ-08 Announcement Publishing Sequence

## Objective

Publish announcements.

### Primary Actor

Institute Administrator

### Participants

Announcement Page, Notification Service

### Main Interaction Flow

1. Create announcement.
2. Validate.
3. Publish.
4. Notify recipients.

### Business Rules

Only administrators may publish institute-wide announcements.

---

# SQ-09 Parent–Student Linking Sequence

## Objective

Link parent and student accounts.

### Primary Actor

Parent

### Participants

Parent, Parent Service, Firestore

### Main Interaction Flow

1. Search student.
2. Verify identity.
3. Send request.
4. Approve link.
5. Save relationship.

### Business Rules

Maximum 3 linked children.

---

# SQ-10 Teacher Assignment Sequence

## Objective

Assign teachers to institutes and courses.

### Primary Actor

Institute Administrator

### Participants

Assignment Service

### Main Interaction Flow

1. Select teacher.
2. Select institute.
3. Select course.
4. Validate assignment.
5. Save assignment.

### Business Rules

Teacher may belong to multiple institutes.

---

# SQ-11 Report Generation Sequence

## Objective

Generate academic and administrative reports.

### Primary Actor

Administrator / Teacher

### Participants

Reporting Service

### Main Interaction Flow

1. Select report.
2. Retrieve data.
3. Generate report.
4. Export PDF.

### Business Rules

Reports are generated based on user permissions.

---

# SQ-12 User Management Sequence

## Objective

Manage platform users.

### Primary Actor

Super Administrator

### Participants

User Management Page, User Service

### Main Interaction Flow

1. Search users.
2. Create or edit account.
3. Assign roles.
4. Save changes.
5. Write audit log.

### Business Rules

Only Super Administrators may manage platform-wide users.

---

# Summary

These sequence descriptions define the runtime behaviour of the TechmoEDU Smart Learning Platform and provide complete traceability between functional requirements, UML artefacts, and implementation components.

---

**Document:** 02-Sequence-Descriptions.md

**Module:** Sequence Diagram

**Version:** 1.0

**Documentation Standard:** Enterprise Software Design Specification (SDS)

**Project:** TechmoEDU Smart Learning Platform

© TechmoEDU Smart Learning Platform
