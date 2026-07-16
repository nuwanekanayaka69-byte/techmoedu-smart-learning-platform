# 01 – Component List

> **TechmoEDU Smart Learning Platform**
>
> Enterprise Architecture Documentation
>
> UML Component Diagram Module
>
> Version 1.0

---

# 1. Purpose

This document defines the complete inventory of software components that make up the TechmoEDU Smart Learning Platform.

Each component represents an independently maintainable architectural unit responsible for a specific business capability or technical service.

The component inventory serves as the official reference for:

- Software Architecture
- Component Diagrams
- Development Planning
- API Design
- Security Review
- Testing Strategy
- Deployment Mapping

---

# 2. Component Categories

The entire platform is divided into the following major component groups.

| Category | Description |
|----------|-------------|
| Presentation | User Interfaces |
| Identity & Access | Authentication and Authorization |
| User Management | User Accounts |
| Institute Management | Multi-Institute Management |
| Academic Management | Courses and Teaching |
| Attendance & Assessment | Attendance and Marks |
| Financial Management | Fees and Payments |
| Resource Management | Learning Materials |
| Communication | Notifications |
| Parent Services | Parent Portal |
| Reporting | Reports and Analytics |
| Infrastructure | Firebase Services |

---

# 3. Master Component Inventory

---

## CMP-001

### Public Website Component

Purpose

Provides the public-facing website.

Responsibilities

- Home Page
- About
- Contact
- Institute Information
- Course Listing

Priority

High

Owner

Frontend

---

## CMP-002

### Authentication Component

Purpose

Provides secure authentication.

Responsibilities

- Login
- Logout
- Registration
- Password Reset
- Session Management
- MFA (Future)

Priority

Critical

Owner

Identity Team

---

## CMP-003

### Authorization Component

Purpose

Controls user permissions.

Responsibilities

- Role Validation
- Permission Checking
- Institute Scope
- Resource Ownership
- Policy Enforcement

Priority

Critical

---

## CMP-004

### User Management Component

Responsibilities

- User Profiles
- Account Lifecycle
- Account Status
- Password Changes
- User Preferences

Priority

Critical

---

## CMP-005

### Institute Management Component

Responsibilities

- Institutes
- Branches
- Academic Years
- Terms
- Institute Settings

Priority

High

---

## CMP-006

### Teacher Management Component

Responsibilities

- Teacher Profiles
- Qualifications
- Employment
- Availability

Priority

High

---

## CMP-007

### Student Management Component

Responsibilities

- Student Profiles
- Admissions
- Registration
- Academic Status

Priority

Critical

---

## CMP-008

### Parent Management Component

Responsibilities

- Parent Profiles
- Guardian Information
- Parent Portal

Priority

Medium

---

## CMP-009

### Parent–Student Relationship Component

Responsibilities

- Parent Linking
- Verification
- Relationship Lifecycle
- Permissions

Priority

High

---

## CMP-010

### Teacher Assignment Component

Responsibilities

- Assign Teachers
- Multiple Institutes
- Workload
- Timetable Validation

Priority

Critical

---

## CMP-011

### Course Management Component

Responsibilities

- Courses
- Subjects
- Levels
- Categories

Priority

Critical

---

## CMP-012

### Enrollment Component

Responsibilities

- Enrollment
- Approval
- Student Allocation
- Capacity

Priority

Critical

---

## CMP-013

### Attendance Component

Responsibilities

- Sessions
- Attendance
- Attendance Reports

Priority

Critical

---

## CMP-014

### Examination Component

Responsibilities

- Exams
- Schedules
- Papers

Priority

High

---

## CMP-015

### Marks Management Component

Responsibilities

- Marks
- Grades
- GPA
- Results

Priority

Critical

---

## CMP-016

### Fee Management Component

Responsibilities

- Fee Structures
- Discounts
- Scholarships

Priority

High

---

## CMP-017

### Payment Component

Responsibilities

- Payments
- Receipts
- Refunds
- Payment Status

Priority

High

---

## CMP-018

### Learning Resource Component

Responsibilities

- Upload
- Download
- Categories
- Permissions

Priority

High

---

## CMP-019

### Announcement Component

Responsibilities

- Publish
- Schedule
- Archive

Priority

Medium

---

## CMP-020

### Notification Component

Responsibilities

- Email
- SMS
- Push Notifications
- In-App Notifications

Priority

High

---

## CMP-021

### Reporting Component

Responsibilities

- Reports
- Dashboards
- Export
- Analytics

Priority

High

---

## CMP-022

### Audit Component

Responsibilities

- Audit Logs
- Security Logs
- Activity History

Priority

Critical

---

## CMP-023

### Monitoring Component

Responsibilities

- Health Monitoring
- Error Tracking
- Metrics

Priority

Medium

---

## CMP-024

### Firebase Authentication Adapter

Responsibilities

- Firebase Auth Integration

Priority

Critical

---

## CMP-025

### Firestore Repository

Responsibilities

- Database Access
- CRUD
- Queries

Priority

Critical

---

## CMP-026

### Firebase Storage Adapter

Responsibilities

- File Storage
- Resource Storage

Priority

High

---

## CMP-027

### Cloud Functions Component

Responsibilities

- Business Automation
- Scheduled Jobs
- Triggers

Priority

High

---

## CMP-028

### Firebase Hosting Component

Responsibilities

- Web Hosting

Priority

Medium

---

## CMP-029

### Firebase Cloud Messaging Component

Responsibilities

- Push Notifications

Priority

Medium

---

## CMP-030

### External Integration Component

Responsibilities

- Email Providers
- SMS Providers
- Payment Gateways

Priority

Medium

---

# 4. Component Statistics

| Metric | Value |
|---------|------:|
| Total Components | 30 |
| Business Components | 18 |
| Infrastructure Components | 7 |
| Communication Components | 2 |
| Security Components | 3 |

---

# 5. Development Priority

## Phase 01

- Authentication
- Authorization
- User Management
- Institute Management

---

## Phase 02

- Course Management
- Enrollment
- Teacher Assignment

---

## Phase 03

- Attendance
- Marks
- Resources

---

## Phase 04

- Fees
- Payments
- Notifications

---

## Phase 05

- Reports
- Monitoring
- Audit

---

## 6. Traceability

Every component listed here is referenced by:

- Component Diagrams
- Deployment Diagrams
- Package Diagrams
- Class Diagrams
- Sequence Diagrams
- State Machine Diagrams

This ensures complete architectural traceability across the TechmoEDU Smart Learning Platform.

---

# Version

| Item | Value |
|------|-------|
| Document | 01-Component-List |
| Version | 1.0 |
| Status | Approved |
| Standard | UML 2.5.x |
