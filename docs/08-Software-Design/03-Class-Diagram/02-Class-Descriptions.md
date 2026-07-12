# 02 - Class Descriptions

> **Chapter 08 – Software Design**
>
> **Section:** UML Class Diagram

---

# Document Information

| Item | Details |
|------|---------|
| Document | Class Descriptions |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | Approved |
| Author | Nuwan S. Ekanayaka |
| Last Updated | 2026 |

---

# Purpose

This document provides detailed specifications for every domain class used in the TechmoEDU Smart Learning Platform.

Each class definition includes:

- Responsibilities
- Attributes
- Operations
- Relationships
- Firestore Mapping
- Business Rules

These specifications serve as the foundation for:

- UML Class Diagrams
- Firestore Database
- Backend Services
- React Models
- API Development
- Software Testing

---

# Standard Class Template

Each class is documented using the following structure.

1. Purpose
2. Responsibilities
3. Attributes
4. Operations
5. Relationships
6. Firestore Collection
7. Business Rules

---

# 01. User

## Purpose

Represents every authenticated platform user.

## Responsibilities

- Login
- Logout
- Profile Management
- Password Reset
- Account Status

## Attributes

| Attribute | Type |
|------------|------|
| userId | String |
| firstName | String |
| lastName | String |
| email | String |
| passwordHash | String |
| phone | String |
| profileImage | String |
| roleId | String |
| instituteId | String |
| status | Enum |
| createdAt | Timestamp |

## Operations

- login()
- logout()
- updateProfile()
- changePassword()
- deactivateAccount()

## Relationships

- User belongs to one Role.
- User belongs to one Institute.

## Firestore

users

---

# 02. Role

## Purpose

Defines system access levels.

## Attributes

- roleId
- roleName
- description

## Operations

- assignRole()
- removeRole()

## Relationships

One Role → Many Users

Firestore:

roles

---

# 03. Permission

## Purpose

Defines permissions assigned to roles.

### Operations

- grantPermission()
- revokePermission()

Firestore:

permissions

---

# 04. SuperAdministrator

## Purpose

Controls the entire platform.

## Responsibilities

- Manage Institutes
- Manage System Users
- View Reports
- Configure Platform
- Manage Security

### Operations

- createInstitute()
- disableInstitute()
- createAdmin()
- generateReports()

---

# 05. InstituteAdministrator

Responsibilities

- Manage Teachers
- Manage Students
- Manage Courses
- Manage Fees
- Publish Announcements

Operations

- approveTeacher()
- enrollStudent()
- assignCourse()

---

# 06. Teacher

Responsibilities

- Manage Classes
- Upload Resources
- Mark Attendance
- Record Marks
- Publish Assignments

Operations

- uploadResource()
- recordAttendance()
- recordMarks()
- publishAssignment()

---

# 07. Student

Responsibilities

- Enroll Courses
- View Resources
- Submit Assignments
- View Marks
- Pay Fees

Operations

- enrollCourse()
- submitAssignment()
- downloadResource()

---

# 08. Parent

Responsibilities

- View Child Progress
- View Attendance
- View Marks
- View Fee Status

Operations

- viewChild()
- receiveNotification()

---

# 09. Institute

Attributes

- instituteId
- instituteName
- address
- phone
- email

Operations

- registerInstitute()
- updateInstitute()

---

# 10. InstituteMembership

Purpose

Maintains user membership within institutes.

Operations

- assignMember()
- removeMember()

---

# 11. TeacherAssignment

Purpose

Assign teachers to courses.

Operations

- assignTeacher()
- reassignTeacher()

---

# 12. ParentStudentLink

Purpose

Connects parents with children.

Operations

- linkStudent()
- unlinkStudent()

---

# 13. Course

Responsibilities

- Manage Subjects
- Schedule Classes

Operations

- createCourse()
- archiveCourse()

---

# 14. Enrollment

Responsibilities

- Student Registration
- Enrollment Approval

Operations

- enroll()
- cancelEnrollment()

---

# 15. ClassSession

Responsibilities

- Schedule Lessons
- Conduct Sessions

Operations

- createSession()
- updateSession()

---

# 16. Attendance

Responsibilities

- Store Attendance

Operations

- markAttendance()
- updateAttendance()

---

# 17. Examination

Responsibilities

- Create Exams
- Publish Exams

Operations

- createExam()
- publishExam()

---

# 18. Mark

Responsibilities

- Store Results

Operations

- recordMark()
- calculateGrade()

---

# 19. FeeStructure

Responsibilities

- Configure Fees

Operations

- createFee()
- updateFee()

---

# 20. Payment

Responsibilities

- Store Payments

Operations

- recordPayment()
- verifyPayment()

---

# 21. Receipt

Responsibilities

- Generate Receipts

Operations

- generateReceipt()

---

# 22. LearningResource

Responsibilities

- Store Learning Files

Operations

- uploadResource()
- deleteResource()

---

# 23. Assignment

Responsibilities

- Publish Assignments

Operations

- createAssignment()
- closeAssignment()

---

# 24. Submission

Responsibilities

- Receive Student Work

Operations

- submitAssignment()
- resubmitAssignment()

---

# 25. Announcement

Responsibilities

- Publish Notices

Operations

- publishAnnouncement()
- archiveAnnouncement()

---

# 26. Notification

Responsibilities

- Notify Users

Operations

- sendNotification()
- markAsRead()

---

# 27. Report

Responsibilities

Generate

- Student Reports
- Teacher Reports
- Attendance Reports
- Fee Reports
- Performance Reports

Operations

- generatePDF()
- exportExcel()

---

# 28. AuditLog

Responsibilities

Maintain

- Login History
- CRUD Logs
- Security Events

Operations

- writeLog()
- searchLog()

---

# Summary Statistics

| Item | Count |
|------|------:|
| Total Classes | 28 |
| Identity Classes | 8 |
| Academic Classes | 6 |
| Institute Classes | 3 |
| Finance Classes | 3 |
| Resource Classes | 3 |
| Communication Classes | 2 |
| Reporting Classes | 1 |
| Audit Classes | 1 |

---

# Deliverables

This document supports:

- UML Class Diagram
- Firestore Database
- Backend Models
- API Development
- React Models
- Firebase Services
- Software Testing

---

# Next Document

➡ **03-Relationships.md**

The next document defines:

- Association
- Aggregation
- Composition
- Generalization
- Dependency
- Multiplicity
