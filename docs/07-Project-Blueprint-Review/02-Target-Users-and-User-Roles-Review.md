# 02 - Target Users & User Roles Review

---

# Document Information

| Item | Value |
|------|-------|
| Document Name | Target Users & User Roles Review |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | In Progress |
| Prepared By | Nuwan S. Ekanayaka |
| Review Phase | Blueprint Review |

---

# Purpose

This document defines the target users, user roles, and system responsibilities of the TechmoEDU Smart Learning Platform.

The objective of this review is to ensure that every user has a clearly defined purpose, responsibility, and permission before software development begins.

---

# Target Users

| User Group | Version | Status | Description |
|------------|---------|--------|-------------|
| Visitors | 1.0 | ✅ | Public users who browse the website. |
| Students | 1.0 | ✅ | Students who access learning resources and courses. |
| Teachers | 1.0 | ✅ | Teachers who manage classes and learning materials. |
| Institute Administrators | 1.0 | ✅ | Administrators responsible for managing an educational institute. |
| Parents | 2.0 | ⏳ | Parents who monitor student progress. |
| Adult Learners | 2.0 | ⏳ | Independent learners using the platform. |
| Educational Institutions | 2.0 | ⏳ | Schools, academies, and training centers. |

---

# User Roles

| Role | Version | Description |
|------|---------|-------------|
| Super Admin | 1.0 | Manage the entire TechmoEDU Platform. |
| Institute Admin | 1.0 | Manage one educational institute. |
| Teacher | 1.0 | Manage students, classes, attendance, and learning resources. |
| Student | 1.0 | Access courses, notices, assessments, and learning materials. |
| Visitor | 1.0 | Browse the public website. |
| Parent | 2.0 | Monitor student progress and communicate with teachers. |

---

# Role Responsibilities

## Super Admin

### Responsibilities

- Manage the entire platform.
- Register educational institutes.
- Manage subscriptions.
- Monitor platform usage.
- Manage global settings.
- Approve institute administrators.

---

## Institute Administrator

### Responsibilities

- Manage institute profile.
- Register teachers.
- Register students.
- Create courses.
- Publish notices.
- Monitor institute reports.

---

## Teacher

### Responsibilities

- Create classes.
- Upload learning resources.
- Mark attendance.
- Record assessment marks.
- Publish assignments.
- Communicate with students.

---

## Student

### Responsibilities

- View courses.
- Download learning materials.
- Submit assignments.
- View attendance.
- View examination results.
- Receive announcements.

---

## Parent (Future Version)

### Responsibilities

- View child progress.
- View attendance.
- View examination results.
- Receive institute notices.
- Contact teachers.

---

## Visitor

### Responsibilities

- Browse website.
- View courses.
- View announcements.
- Contact the institute.

---

# User Permission Matrix

| Feature | Super Admin | Institute Admin | Teacher | Student | Parent | Visitor |
|---------|:-----------:|:---------------:|:-------:|:-------:|:------:|:-------:|
| Manage Platform | ✅ | ❌ | ❌ | ❌ | ❌ | ❌ |
| Manage Institute | ✅ | ✅ | ❌ | ❌ | ❌ | ❌ |
| Manage Teachers | ✅ | ✅ | ❌ | ❌ | ❌ | ❌ |
| Manage Students | ✅ | ✅ | ✅ | ❌ | ❌ | ❌ |
| Manage Courses | ✅ | ✅ | ✅ | ❌ | ❌ | ❌ |
| Upload Learning Materials | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ |
| View Learning Materials | ❌ | ❌ | ✅ | ✅ | ❌ | ✅ |
| Record Attendance | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ |
| View Attendance | ❌ | ✅ | ✅ | ✅ | ✅ | ❌ |
| Record Marks | ❌ | ❌ | ✅ | ❌ | ❌ | ❌ |
| View Marks | ❌ | ✅ | ✅ | ✅ | ✅ | ❌ |
| Publish Notices | ❌ | ✅ | ✅ | ❌ | ❌ | ❌ |

---

# Platform Architecture Decisions

| Decision | Status |
|----------|--------|
| Multi-Institute Architecture | ✅ Approved |
| Multiple Institute Administrators | ✅ Approved |
| Teachers can work in multiple institutes | ✅ Approved |
| Students can enroll in multiple courses | ✅ Approved |
| Parents can monitor multiple children | ✅ Approved |
| Platform designed for future nationwide expansion | ✅ Approved |

---

# Future Expansion

The platform is designed to support the following future features:

- Parent Portal
- Adult Learning Portal
- Mobile Application
- AI Learning Assistant
- Online Payment Gateway
- Digital Certificates
- Learning Analytics
- Multi-language Support

---

# Review Summary

| Review Item | Status |
|-------------|--------|
| Target Users | ✅ Approved |
| User Roles | ✅ Approved |
| Responsibilities | ✅ Approved |
| Permission Matrix | ✅ Approved |
| Scalability | ✅ Approved |
| Future Expansion | ✅ Approved |

---

# Final Status

🟢 **APPROVED**

---

**Document Version :** 1.0

**Prepared By :** Nuwan S. Ekanayaka

**Review Status :** Blueprint Review Approved
