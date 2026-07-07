# 02 - Use Cases

> **Chapter 08 – Software Design**
>
> **Section:** Use Case Diagram

---

# Document Information

| Item | Details |
|------|---------|
| Document | Use Cases |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | Draft |
| Author | Nuwan S. Ekanayaka |

---

# Introduction

This document defines the primary use cases of the TechmoEDU Smart Learning Platform.

A use case describes a specific function performed by the system in response to actions initiated by an actor. Each use case represents a business process or interaction between a user and the platform.

The platform follows Role-Based Access Control (RBAC), ensuring that each actor has access only to the functions relevant to their assigned role.

---

# Primary Actors

- Super Administrator
- Institute Administrator
- Teacher
- Student
- Parent

---

# Use Case Categories

The system functionality is divided into the following modules.

1. Authentication
2. User Management
3. Institute Management
4. Academic Management
5. Course Management
6. Student Management
7. Parent Management
8. Attendance Management
9. Examination Management
10. Fee Management
11. Learning Resources
12. Communication
13. Reports
14. System Administration

---

# 01 Authentication Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-001 | Login | All Users |
| UC-002 | Logout | All Users |
| UC-003 | Reset Password | All Users |
| UC-004 | Change Password | All Users |
| UC-005 | Update Profile | All Users |

---

# 02 User Management Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-006 | Create User | Super Admin |
| UC-007 | Edit User | Super Admin |
| UC-008 | Delete User | Super Admin |
| UC-009 | Assign Role | Super Admin |
| UC-010 | Activate User | Super Admin |
| UC-011 | Deactivate User | Super Admin |
| UC-012 | View Users | Super Admin |

---

# 03 Institute Management Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-013 | Create Institute | Super Admin |
| UC-014 | Update Institute | Super Admin |
| UC-015 | Delete Institute | Super Admin |
| UC-016 | Assign Institute Administrator | Super Admin |
| UC-017 | View Institute Dashboard | Institute Admin |
| UC-018 | Update Institute Profile | Institute Admin |

---

# 04 Teacher Management Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-019 | Add Teacher | Institute Admin |
| UC-020 | Update Teacher | Institute Admin |
| UC-021 | Remove Teacher | Institute Admin |
| UC-022 | Assign Teacher to Course | Institute Admin |
| UC-023 | View Teacher Profile | Teacher |

---

# 05 Student Management Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-024 | Register Student | Institute Admin |
| UC-025 | Update Student | Institute Admin |
| UC-026 | Remove Student | Institute Admin |
| UC-027 | Search Student | Teacher |
| UC-028 | View Student Profile | Teacher |
| UC-029 | View Own Profile | Student |

---

# 06 Parent Management Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-030 | Register Parent | Institute Admin |
| UC-031 | Link Parent to Student | Institute Admin |
| UC-032 | View Linked Children | Parent |
| UC-033 | Update Parent Profile | Parent |

---

# 07 Course Management Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-034 | Create Course | Institute Admin |
| UC-035 | Update Course | Institute Admin |
| UC-036 | Delete Course | Institute Admin |
| UC-037 | Enroll Student | Institute Admin |
| UC-038 | Assign Teacher | Institute Admin |
| UC-039 | View Courses | Student |

---

# 08 Attendance Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-040 | Record Attendance | Teacher |
| UC-041 | Edit Attendance | Teacher |
| UC-042 | View Attendance | Student |
| UC-043 | View Child Attendance | Parent |
| UC-044 | Attendance Reports | Institute Admin |

---

# 09 Examination Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-045 | Create Examination | Institute Admin |
| UC-046 | Record Marks | Teacher |
| UC-047 | Update Marks | Teacher |
| UC-048 | Publish Results | Institute Admin |
| UC-049 | View Results | Student |
| UC-050 | View Child Results | Parent |

---

# 10 Fee Management Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-051 | Create Fee Structure | Institute Admin |
| UC-052 | Record Payment | Institute Admin |
| UC-053 | View Payment History | Student |
| UC-054 | View Child Payments | Parent |
| UC-055 | Generate Fee Report | Institute Admin |

---

# 11 Learning Resources Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-056 | Upload Notes | Teacher |
| UC-057 | Upload Videos | Teacher |
| UC-058 | Upload Assignments | Teacher |
| UC-059 | Download Resources | Student |
| UC-060 | View Learning Materials | Student |

---

# 12 Communication Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-061 | Publish Announcement | Institute Admin |
| UC-062 | View Announcement | All Users |
| UC-063 | Send Notification | Institute Admin |
| UC-064 | Receive Notification | All Users |

---

# 13 Reports Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-065 | Student Progress Report | Teacher |
| UC-066 | Attendance Report | Teacher |
| UC-067 | Examination Report | Institute Admin |
| UC-068 | Financial Report | Institute Admin |
| UC-069 | Dashboard Analytics | Super Admin |

---

# 14 System Administration Module

| UC ID | Use Case | Actor |
|--------|----------|-------|
| UC-070 | View Audit Logs | Super Admin |
| UC-071 | Manage System Settings | Super Admin |
| UC-072 | Backup Database | Super Admin |
| UC-073 | Restore Database | Super Admin |
| UC-074 | Manage Security Policies | Super Admin |
| UC-075 | Manage Storage | Super Admin |

---

# Future Use Cases

The following features are planned for future releases.

| UC ID | Use Case |
|--------|----------|
| FUT-001 | AI Learning Recommendations |
| FUT-002 | Online Live Classes |
| FUT-003 | AI Attendance Recognition |
| FUT-004 | QR Code Attendance |
| FUT-005 | Online Payments |
| FUT-006 | Student Discussion Forum |
| FUT-007 | AI Chat Assistant |
| FUT-008 | Parent Messaging |
| FUT-009 | SMS Gateway Integration |
| FUT-010 | Mobile Application |

---

# Use Case Summary

| Category | Number of Use Cases |
|-----------|--------------------:|
| Authentication | 5 |
| User Management | 7 |
| Institute Management | 6 |
| Teacher Management | 5 |
| Student Management | 6 |
| Parent Management | 4 |
| Course Management | 6 |
| Attendance | 5 |
| Examination | 6 |
| Fee Management | 5 |
| Learning Resources | 5 |
| Communication | 4 |
| Reports | 5 |
| System Administration | 6 |
| Future Features | 10 |

---

# Total Use Cases

**Current Version:** 75 Use Cases

**Future Roadmap:** 10 Additional Use Cases

**Overall Planned Functionality:** 85 Use Cases

---

# Version

Version 1.0
