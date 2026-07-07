# 03 - System Boundary

> **Chapter 08 – Software Design**
>
> **Section:** Use Case Diagram

---

# Document Information

| Item | Details |
|------|---------|
| Document | System Boundary |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | Draft |
| Author | Nuwan S. Ekanayaka |
| Last Updated | 2026 |

---

# Introduction

The System Boundary defines the scope of the TechmoEDU Smart Learning Platform.

It clearly distinguishes between the internal functionality of the system and the external actors that interact with it.

The boundary serves as the foundation for the UML Use Case Diagram by identifying which services belong to the system and which actions are performed by users outside the system.

---

# Purpose

The objectives of the System Boundary are to:

- Define the scope of the platform.
- Identify external actors.
- Identify internal services.
- Separate business processes from user interactions.
- Provide a clear foundation for UML Use Case Diagrams.
- Support system analysis and software design.

---

# System Name

**TechmoEDU Smart Learning Platform**

---

# External Actors

The following actors exist outside the system boundary and interact with the platform.

| Actor | Description |
|--------|-------------|
| Super Administrator | Manages the entire platform |
| Institute Administrator | Manages one educational institute |
| Teacher | Conducts teaching and manages academic records |
| Student | Uses learning services |
| Parent | Monitors linked student information |

---

# Internal System Modules

The following modules exist inside the system boundary.

## Authentication Module

- Login
- Logout
- Password Reset
- Profile Management

---

## User Management

- User Registration
- Role Assignment
- User Profile
- Account Activation
- Account Deactivation

---

## Institute Management

- Institute Registration
- Institute Profile
- Institute Settings
- Institute Dashboard

---

## Teacher Management

- Teacher Registration
- Teacher Assignment
- Teacher Profile
- Teacher Dashboard

---

## Student Management

- Student Registration
- Student Enrollment
- Student Profile
- Student Dashboard

---

## Parent Management

- Parent Registration
- Parent Linking
- Parent Dashboard

---

## Course Management

- Course Creation
- Course Enrollment
- Course Assignment
- Course Information

---

## Attendance Management

- Record Attendance
- Edit Attendance
- View Attendance
- Attendance Reports

---

## Examination Management

- Create Examination
- Record Marks
- Publish Results
- Generate Reports

---

## Fee Management

- Fee Structure
- Record Payments
- Payment History
- Financial Reports

---

## Learning Resources

- Upload Notes
- Upload Videos
- Upload Assignments
- Download Resources

---

## Communication

- Announcements
- Notifications
- Messages (Future)

---

## Reports

- Student Reports
- Attendance Reports
- Financial Reports
- Analytics Dashboard

---

## System Administration

- System Settings
- Audit Logs
- Backup
- Restore
- Security Policies

---

# System Boundary Overview

```text
                    External Environment

 ┌─────────────────────────────────────────────────────────────┐
 │                                                             │
 │   Super Admin                                               │
 │   Institute Admin                                           │
 │   Teacher                                                   │
 │   Student                                                   │
 │   Parent                                                    │
 │                                                             │
 └─────────────────────────────────────────────────────────────┘

                    interacts with

══════════════════════════════════════════════════════════════════

            TechmoEDU Smart Learning Platform

 ┌─────────────────────────────────────────────────────────────┐
 │                                                             │
 │ Authentication                                              │
 │ User Management                                             │
 │ Institute Management                                        │
 │ Teacher Management                                          │
 │ Student Management                                          │
 │ Parent Management                                           │
 │ Course Management                                           │
 │ Attendance Management                                       │
 │ Examination Management                                      │
 │ Fee Management                                              │
 │ Learning Resources                                          │
 │ Communication                                               │
 │ Reports                                                     │
 │ System Administration                                       │
 │                                                             │
 └─────────────────────────────────────────────────────────────┘
```

---

# System Boundary Rules

## Inside the Boundary

The system is responsible for:

- User authentication
- Authorization
- Data validation
- Business logic
- Data storage
- Report generation
- File storage
- Notifications
- Security enforcement

---

## Outside the Boundary

Actors are responsible for:

- Logging into the system
- Providing accurate information
- Managing educational activities
- Viewing reports
- Updating personal profiles
- Making operational decisions

---

# External Systems

The TechmoEDU platform integrates with the following external services.

| External System | Purpose |
|-----------------|---------|
| Firebase Authentication | User authentication |
| Cloud Firestore | Database |
| Firebase Storage | File storage |
| Firebase Hosting | Website hosting |
| GitHub | Source code repository |

---

# System Boundary Principles

The platform follows these design principles.

- Role-Based Access Control (RBAC)
- Separation of Responsibilities
- Secure Authentication
- Cloud-Based Architecture
- Scalability
- Maintainability
- High Availability
- Modular Design

---

# Relationship with Other UML Diagrams

This document supports the following UML diagrams.

| Diagram | Relationship |
|----------|--------------|
| Use Case Diagram | Defines system scope |
| Activity Diagram | Describes workflows |
| Sequence Diagram | Shows interactions |
| Class Diagram | Defines system objects |
| Component Diagram | Defines software components |
| Deployment Diagram | Defines infrastructure |

---

# Summary

The System Boundary establishes a clear separation between external users and internal system functionality.

It provides a well-defined scope for the TechmoEDU Smart Learning Platform and serves as the basis for all subsequent UML diagrams.

---

# Version

Version 1.0
