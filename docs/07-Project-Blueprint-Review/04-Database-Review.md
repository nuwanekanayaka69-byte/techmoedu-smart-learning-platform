# 04 - Database Review

> **Project Blueprint Review Document**

---

# Document Information

| Item | Details |
|------|---------|
| Project Name | TechmoEDU Smart Learning Platform |
| Document Name | Database Review |
| Document ID | TMSLP-PBR-04 |
| Version | 1.0 |
| Status | Approved for Development |
| Author | Nuwan S. Ekanayaka |
| Prepared By | TechmoEDU Development Team |
| Date | July 2026 |

---

# 1. Introduction

## 1.1 Purpose

This document defines the complete database architecture of the TechmoEDU Smart Learning Platform.

The objective is to ensure that all system data is stored securely, efficiently, and consistently while supporting future scalability.

---

## 1.2 Objectives

- Design a scalable cloud database.
- Maintain data consistency.
- Reduce data duplication.
- Support secure authentication.
- Improve system performance.
- Enable future feature expansion.

---

# 2. Database Technology

The platform will use **Google Firebase Firestore** as the primary cloud database.

## Reasons for Selecting Firestore

- Cloud Native
- No Server Management
- Real-Time Synchronization
- Automatic Scaling
- Secure Authentication Integration
- Offline Data Support
- Free Tier Available
- Mobile Friendly

---

# 3. Database Type

| Category | Selection |
|----------|-----------|
| Database Model | NoSQL |
| Database Engine | Firebase Firestore |
| Storage | Cloud |
| Synchronization | Real-Time |
| Authentication | Firebase Authentication |

---

# 4. Database Design Principles

The database is designed according to the following principles.

- Scalability
- Security
- Maintainability
- Performance
- Data Integrity
- Low Coupling
- High Cohesion

---

# 5. Firestore Collections

The platform database consists of the following collections.

| Collection | Purpose |
|------------|---------|
| users | User authentication data |
| students | Student profiles |
| teachers | Teacher profiles |
| institutes | Institute information |
| courses | Course information |
| classes | Class schedules |
| enrollments | Student enrollments |
| attendance | Attendance records |
| examinations | Examination details |
| marks | Student marks |
| fees | Monthly fee records |
| payments | Payment history |
| announcements | Notices |
| resources | Learning materials |
| gallery | Images |
| settings | System settings |
| audit_logs | Activity logs |

---

# 6. Collection Structure

---

## users

Stores authentication details.

### Fields

- uid
- email
- password (Managed by Firebase Authentication)
- role
- status
- lastLogin
- createdAt

---

## students

Stores student information.

### Fields

- studentId
- fullName
- gender
- dateOfBirth
- school
- grade
- parentName
- parentPhone
- address
- profilePhoto
- joinDate
- status
- userId

---

## teachers

Stores teacher information.

### Fields

- teacherId
- fullName
- qualification
- specialization
- phone
- email
- profilePhoto
- status
- userId

---

## institutes

Stores institute details.

### Fields

- instituteId
- instituteName
- address
- phone
- email
- logo
- status

---

## courses

Stores course information.

### Fields

- courseId
- courseName
- description
- grade
- monthlyFee
- duration
- teacherId
- status

---

## classes

Stores timetable information.

### Fields

- classId
- courseId
- className
- day
- startTime
- endTime
- classroom
- onlineLink
- teacherId

---

## enrollments

Stores course enrollment details.

### Fields

- enrollmentId
- studentId
- courseId
- enrolledDate
- status

---

## attendance

Stores attendance.

### Fields

- attendanceId
- studentId
- classId
- attendanceDate
- status
- remarks
- markedBy

---

## examinations

Stores examination information.

### Fields

- examId
- courseId
- examTitle
- totalMarks
- examDate

---

## marks

Stores examination results.

### Fields

- markId
- examId
- studentId
- obtainedMarks
- grade
- remarks

---

## fees

Stores monthly fee records.

### Fields

- feeId
- studentId
- courseId
- month
- amount
- dueDate
- status

---

## payments

Stores payment history.

### Fields

- paymentId
- feeId
- studentId
- amount
- paymentMethod
- transactionReference
- paymentDate
- receivedBy

---

## announcements

Stores notices.

### Fields

- announcementId
- title
- description
- audience
- publishDate
- expiryDate
- createdBy

---

## resources

Stores downloadable files.

### Fields

- resourceId
- title
- description
- fileURL
- courseId
- uploadedBy
- uploadedDate

---

## gallery

Stores gallery images.

### Fields

- imageId
- imageURL
- title
- uploadedBy
- uploadedDate

---

## settings

Stores system configuration.

### Fields

- systemName
- logo
- maintenanceMode
- contactEmail
- contactPhone

---

## audit_logs

Stores system activity.

### Fields

- logId
- userId
- action
- module
- timestamp
- ipAddress

---

# 7. Collection Relationships

Although Firestore is a NoSQL database, logical relationships exist.

Student
→ Enrollment
→ Course

Student
→ Attendance

Student
→ Marks

Student
→ Fees

Fee
→ Payment

Teacher
→ Course

Course
→ Class

Class
→ Attendance

Examination
→ Marks

---

# 8. Entity Relationship Overview

Student

↓

Enrollment

↓

Course

↓

Class

↓

Attendance

↓

Examination

↓

Marks

↓

Fees

↓

Payments

Teacher

↓

Course

Announcements

Gallery

Resources

Settings

---

# 9. Database Index Strategy

Indexes should be created for:

- studentId
- teacherId
- courseId
- classId
- examId
- attendanceDate
- paymentDate
- month
- role

---

# 10. Security Considerations

The database must enforce the following rules.

- Students may access only their own records.
- Teachers may access only assigned classes.
- Institute Admin manages institute data.
- Super Admin has unrestricted access.
- Authentication required for all protected collections.

---

# 11. Backup Strategy

Firebase automatic backups

Weekly exports

Monthly archive

Audit log retention

---

# 12. Scalability

The database design supports:

- Multiple Institutes
- Thousands of Students
- Multiple Teachers
- Unlimited Courses
- Cloud Expansion
- Future Mobile Application

---

# 13. Future Database Modules

Version 2.0

- Parent Collection
- Assignment Collection
- Online Exams
- Live Classes

Version 3.0

- AI Analytics
- QR Attendance
- Face Recognition Logs
- Notification History

---

# 14. Review Summary

The proposed database architecture provides a secure, scalable, maintainable, and cloud-native solution suitable for the TechmoEDU Smart Learning Platform.

Firebase Firestore has been selected due to its flexibility, scalability, and integration with Firebase Authentication and Firebase Storage.

---

# 15. Approval

| Role | Name | Status |
|------|------|--------|
| Project Owner | Nuwan S. Ekanayaka | Pending |
| Database Architect | TechmoEDU Development Team | Approved |
| Reviewer | Project Blueprint Review | Approved |

---

**Document Version:** 1.0

**End of Document**
