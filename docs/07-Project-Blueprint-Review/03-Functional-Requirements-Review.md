# 03 - Functional Requirements Review

> **Project Blueprint Review Document**

---

# Document Information

| Item | Details |
|------|---------|
| Project Name | TechmoEDU Smart Learning Platform |
| Document Name | Functional Requirements Review |
| Document ID | TMSLP-PBR-03 |
| Version | 1.0 |
| Status | Approved for Development |
| Author | Nuwan S. Ekanayaka |
| Prepared By | TechmoEDU Development Team |
| Date | July 2026 |

---

# 1. Introduction

## 1.1 Purpose

The purpose of this document is to define, review, and validate all functional requirements of the **TechmoEDU Smart Learning Platform** before the software development process begins.

This document ensures that all stakeholders clearly understand the expected behavior of the system and provides developers with a complete reference for implementation.

---

## 1.2 Scope

This document covers functional requirements related to:

- Public Website
- Student Portal
- Teacher Portal
- Institute Administration
- Super Administration
- Parent Portal (Future)
- System-wide Functional Requirements

---

## 1.3 Objectives

The main objectives are:

- Identify all required system functions.
- Eliminate missing requirements before development.
- Reduce future design changes.
- Provide a development roadmap.
- Ensure software quality.

---

# 2. Functional Modules

The platform consists of the following major modules.

| Module | Status |
|---------|--------|
| Public Website | Version 1.0 |
| Student Portal | Version 1.0 |
| Teacher Portal | Version 1.1 |
| Institute Admin Dashboard | Version 1.0 |
| Super Admin Dashboard | Version 1.0 |
| Parent Portal | Version 2.0 |
| Online Learning | Version 2.0 |
| AI Features | Version 3.0 |

---

# 3. Public Website Functional Requirements

The public website represents the official online presence of TechmoEDU.

## Functional Requirements

### FR-PW-001

Display Home Page.

### FR-PW-002

Display institute information.

### FR-PW-003

Display teacher profile.

### FR-PW-004

Display available courses.

### FR-PW-005

Display class timetable.

### FR-PW-006

Display announcements and news.

### FR-PW-007

Display image gallery.

### FR-PW-008

Provide contact information.

### FR-PW-009

Allow online student registration.

### FR-PW-010

Provide Student Login.

---

# 4. Student Portal Functional Requirements

The Student Portal provides personalized services for registered students.

## Authentication

### FR-ST-001

Student shall login securely.

### FR-ST-002

Student shall logout securely.

### FR-ST-003

Forgot password functionality.

---

## Dashboard

### FR-ST-004

Display student profile.

### FR-ST-005

Display attendance summary.

### FR-ST-006

Display latest examination results.

### FR-ST-007

Display fee status.

### FR-ST-008

Display latest announcements.

---

## Learning

### FR-ST-009

Download notes.

### FR-ST-010

View assignments.

### FR-ST-011

View class timetable.

### FR-ST-012

View learning resources.

---

# 5. Teacher Portal Functional Requirements

Teachers manage academic activities.

## Student Management

### FR-TR-001

View assigned students.

### FR-TR-002

Search students.

---

## Attendance

### FR-TR-003

Mark attendance.

### FR-TR-004

Edit attendance.

### FR-TR-005

Generate attendance report.

---

## Examination

### FR-TR-006

Create examinations.

### FR-TR-007

Enter marks.

### FR-TR-008

Edit marks.

### FR-TR-009

Publish examination results.

---

## Resources

### FR-TR-010

Upload lesson notes.

### FR-TR-011

Upload assignments.

### FR-TR-012

Publish notices.

---

# 6. Institute Admin Dashboard Functional Requirements

Institute Administrators manage day-to-day operations.

---

## Student Management

### FR-AD-001

Register new students.

### FR-AD-002

Update student records.

### FR-AD-003

Deactivate student accounts.

### FR-AD-004

Search student records.

---

## Teacher Management

### FR-AD-005

Register teachers.

### FR-AD-006

Assign courses.

### FR-AD-007

Update teacher profiles.

---

## Course Management

### FR-AD-008

Create courses.

### FR-AD-009

Update course details.

### FR-AD-010

Assign teachers.

---

## Fee Management

### FR-AD-011

Record monthly payments.

### FR-AD-012

Generate payment receipts.

### FR-AD-013

View outstanding payments.

### FR-AD-014

Generate income reports.

---

## Content Management

### FR-AD-015

Publish notices.

### FR-AD-016

Manage gallery.

### FR-AD-017

Upload downloadable resources.

---

# 7. Super Admin Functional Requirements

Super Administrator has complete control over the platform.

### FR-SA-001

Manage all institutes.

### FR-SA-002

Manage administrators.

### FR-SA-003

Manage teachers.

### FR-SA-004

Manage students.

### FR-SA-005

Manage user permissions.

### FR-SA-006

System configuration.

### FR-SA-007

Backup management.

### FR-SA-008

Restore system backups.

### FR-SA-009

View system analytics.

### FR-SA-010

Manage platform settings.

---

# 8. Parent Portal Functional Requirements (Future Version)

Version 2.0

### FR-PA-001

Parent Login.

### FR-PA-002

View child attendance.

### FR-PA-003

View child examination results.

### FR-PA-004

View fee status.

### FR-PA-005

Receive announcements.

---

# 9. Future Functional Requirements

The following features are planned for future releases.

## Version 2.0

- Online Learning
- Assignment Submission
- Parent Portal
- Online Payments
- Video Lessons

## Version 3.0

- AI Assistant
- QR Attendance
- Face Recognition
- AI Report Generation
- Mobile Application

---

# 10. Functional Requirement Priority

| Priority | Description |
|-----------|-------------|
| High | Mandatory for Version 1.0 |
| Medium | Planned for Version 1.1 |
| Low | Future Development |

---

# 11. Assumptions

- Internet connectivity is available.
- Firebase services remain available.
- Students have authenticated accounts.
- Teachers are assigned to courses.
- Institute administrators maintain data accuracy.

---

# 12. Constraints

- Firebase Free Plan limitations.
- Internet availability.
- Browser compatibility.
- Mobile responsiveness.

---

# 13. Functional Requirement Traceability

| Requirement Group | Version |
|-------------------|---------|
| Public Website | 1.0 |
| Student Portal | 1.0 |
| Admin Dashboard | 1.0 |
| Teacher Portal | 1.1 |
| Parent Portal | 2.0 |
| AI Features | 3.0 |

---

# 14. Review Summary

The Functional Requirements Review confirms that all primary software functionalities required for Version 1.0 have been identified and documented.

Future enhancements have been separated into Version 2.0 and Version 3.0 to ensure a structured software development lifecycle.

---

# 15. Approval

| Role | Name | Status |
|------|------|--------|
| Project Owner | Nuwan S. Ekanayaka | Pending |
| System Architect | TechmoEDU Development Team | Approved |
| Reviewer | Project Blueprint Review | Approved |

---

**Document Version:** 1.0

**End of Document**
