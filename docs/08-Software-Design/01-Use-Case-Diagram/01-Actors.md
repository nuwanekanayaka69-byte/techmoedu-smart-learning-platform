# 01 - Actors

> **Chapter 08 – Software Design**
>
> **Section:** Use Case Diagram

---

# Introduction

This document defines the primary actors of the TechmoEDU Smart Learning Platform.

An actor represents a person or external entity that interacts with the system to perform one or more business functions.

The TechmoEDU Smart Learning Platform supports multiple user roles with different responsibilities and access permissions. Role-Based Access Control (RBAC) is implemented to ensure that each actor can access only the features relevant to their responsibilities.

---

# Actor Overview

| Actor | Description |
|---------|-------------|
| Super Administrator | Overall system owner responsible for managing the entire platform. |
| Institute Administrator | Manages a specific educational institute within the platform. |
| Teacher | Conducts teaching activities and manages academic records. |
| Student | Learns through the platform and accesses academic information. |
| Parent | Monitors the academic progress and activities of linked students. |

---

# 01. Super Administrator

## Description

The Super Administrator is the highest privileged user in the entire system.

This actor manages the complete TechmoEDU Smart Learning Platform, including institutes, administrators, users, system configurations, security settings, and overall platform maintenance.

Only a limited number of trusted personnel should have this role.

---

## Responsibilities

- Manage the entire platform
- Create new educational institutes
- Approve institute registrations
- Manage Institute Administrators
- Manage system users
- Assign user roles
- Configure global system settings
- Manage subscription plans (Future)
- View system analytics
- Monitor platform health
- Monitor audit logs
- Backup and restore system data
- Manage security policies
- Enable or disable user accounts
- Publish platform-wide announcements
- Monitor storage usage
- Configure Firebase settings (Development)
- Manage API integrations (Future)

---

## Permissions

- Full System Access
- Read
- Create
- Update
- Delete
- Manage Roles
- Manage Security
- Access All Institutes

---

# 02. Institute Administrator

## Description

The Institute Administrator manages one educational institute within the TechmoEDU platform.

This role is responsible for managing teachers, students, courses, schedules, fees, and institute-level reports.

Institute Administrators cannot access data belonging to other institutes.

---

## Responsibilities

- Manage institute profile
- Manage teachers
- Manage students
- Manage parents
- Create courses
- Manage classrooms
- Schedule classes
- Assign teachers
- Publish announcements
- Manage attendance
- Manage examinations
- Manage marks
- Manage fee structures
- View institute reports
- Upload learning resources
- Manage gallery
- Generate reports

---

## Permissions

- Full Institute Access
- Cannot access other institutes
- Manage institute users
- Manage academic records

---

# 03. Teacher

## Description

Teachers conduct teaching activities and maintain academic information related to the courses assigned to them.

Teachers can only access data related to their assigned courses and students.

---

## Responsibilities

- Manage personal profile
- View assigned courses
- Conduct classes
- Record attendance
- Upload learning materials
- Publish assignments
- Record examination marks
- Update student progress
- Communicate with students
- Communicate with parents
- View class timetable
- View teaching reports
- Manage lesson resources

---

## Permissions

- Access assigned courses only
- Create academic records
- Update attendance
- Update marks
- Upload resources

---

# 04. Student

## Description

Students use the platform to participate in learning activities and monitor their academic progress.

Students only have access to their own information.

---

## Responsibilities

- Login securely
- Manage personal profile
- View enrolled courses
- Access learning resources
- Download notes
- View announcements
- View attendance
- View examination results
- View progress reports
- View fee status
- Submit assignments (Future)
- Join online classes (Future)

---

## Permissions

- Read personal information only
- Access enrolled courses only
- Cannot modify academic records

---

# 05. Parent

## Description

Parents can monitor the academic activities of one or more linked students.

Parents cannot modify student academic records.

---

## Responsibilities

- Login securely
- Manage profile
- Link children
- View child attendance
- View examination results
- View progress reports
- View fee status
- View announcements
- Download reports
- Receive notifications (Future)
- Communicate with teachers (Future)

---

## Permissions

- Read-only access
- View linked students only
- Cannot modify academic records

---

# Actor Relationship Summary

```text
                     Super Administrator
                              │
                              ▼
                  Institute Administrator
                              │
            ┌─────────────────┼─────────────────┐
            ▼                 ▼                 ▼
         Teacher           Student          Parent
```

---

# Access Level Matrix

| Feature | Super Admin | Institute Admin | Teacher | Student | Parent |
|-----------|:-----------:|:---------------:|:-------:|:-------:|:------:|
| Manage Institutes | ✅ | ❌ | ❌ | ❌ | ❌ |
| Manage Teachers | ✅ | ✅ | ❌ | ❌ | ❌ |
| Manage Students | ✅ | ✅ | ❌ | ❌ | ❌ |
| Manage Parents | ✅ | ✅ | ❌ | ❌ | ❌ |
| Manage Courses | ✅ | ✅ | Limited | ❌ | ❌ |
| Record Attendance | ✅ | ✅ | ✅ | ❌ | ❌ |
| Record Marks | ✅ | ✅ | ✅ | ❌ | ❌ |
| Upload Resources | ✅ | ✅ | ✅ | ❌ | ❌ |
| View Results | ✅ | ✅ | ✅ | ✅ | ✅ |
| View Attendance | ✅ | ✅ | ✅ | ✅ | ✅ |
| View Fees | ✅ | ✅ | ❌ | ✅ | ✅ |
| Manage Users | ✅ | ✅ | ❌ | ❌ | ❌ |
| System Configuration | ✅ | ❌ | ❌ | ❌ | ❌ |

---

# Security Model

The TechmoEDU Smart Learning Platform implements **Role-Based Access Control (RBAC)**.

Each authenticated user is assigned one predefined role.

System permissions are granted based on the assigned role, ensuring secure and controlled access to system resources.

---

# Version

Version 1.0
