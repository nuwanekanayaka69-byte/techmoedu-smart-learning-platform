# TechmoEDU Smart Learning Platform

# 02-State-Machine-Descriptions

**Module**

State Machine Diagram Module

**Document Type**

Enterprise UML Design Specification

**Version**

1.0

---

# Purpose

This document provides detailed specifications for every UML State Machine Diagram within the TechmoEDU Smart Learning Platform.

Each State Machine defines the complete lifecycle of a business entity, including:

- Initial State
- Business States
- Transition Events
- Guard Conditions
- Entry Actions
- Exit Actions
- Internal Activities
- Exception States
- Recovery States
- Final State

The document serves as the primary behavioral specification for developers, testers, software architects, and system maintainers.

---

# UML State Machine Description Template

Each State Machine shall contain the following information.

- Objective
- Primary Entity
- Initial State
- States
- Transition Events
- Guard Conditions
- Entry Actions
- Exit Actions
- Internal Activities
- Main Lifecycle
- Alternative Lifecycle
- Exception States
- Recovery Process
- Final State
- Business Rules
- Related UML Artifacts

---

# SM-01 User Account State Machine

## Objective

Model the complete lifecycle of a platform user account from creation to archival while enforcing authentication, authorization, security, and account management policies.

## Primary Entity

User

## Initial State

Account Created

## States

- Account Created
- Verification Pending
- Email Verified
- Active
- Password Reset Pending
- Locked
- Suspended
- Reactivated
- Disabled
- Archived

## Transition Events

- createAccount()
- verifyEmail()
- activate()
- login()
- logout()
- resetPassword()
- suspend()
- reactivate()
- disable()
- archive()

## Guard Conditions

- Email verified
- Password valid
- Account active
- Administrator approval
- Security policy satisfied

## Entry Actions

- Create profile
- Generate verification token
- Assign default role
- Record audit log

## Exit Actions

- Save account status
- Update last modified time

## Internal Activities

- Monitor login attempts
- Validate sessions
- Refresh security tokens

## Main Lifecycle

Created

↓

Verification Pending

↓

Email Verified

↓

Active

↓

Disabled

↓

Archived

## Alternative Flow

Created

↓

Verification Pending

↓

Verification Failed

↓

Verification Retry

↓

Email Verified

## Exception States

- Locked
- Suspended
- Authentication Failed

## Recovery Process

Locked

↓

Administrator Unlock

↓

Active

## Final State

Archived

## Business Rules

- Email verification is mandatory.
- Locked users cannot log in.
- Suspended users cannot access resources.
- Archived users are read-only.

## Related UML Artifacts

Use Case

- User Login

Activity

- Login Activity

Sequence

- User Management Sequence

Class

- User and Role Class

---

# SM-02 Student Registration State Machine

## Objective

Manage the complete lifecycle of student registration.

## Primary Entity

Student Registration

## Initial State

Draft

## States

- Draft
- Submitted
- Validation Pending
- Approved
- Registered
- Rejected
- Cancelled

## Transition Events

- submit()
- validate()
- approve()
- reject()
- register()
- cancel()

## Guard Conditions

- Required documents uploaded
- Age valid
- Parent information available

## Entry Actions

- Create registration record

## Exit Actions

- Update admission status

## Internal Activities

- Validate submitted documents
- Check duplicate registration

## Main Lifecycle

Draft

↓

Submitted

↓

Validation Pending

↓

Approved

↓

Registered

## Exception States

Rejected

Cancelled

## Recovery

Rejected

↓

Student Corrects Data

↓

Submitted

## Final State

Registered

## Business Rules

- Duplicate registrations are prohibited.
- Required documents must be complete.

---

# SM-03 Course State Machine

## Objective

Model the lifecycle of a course.

## Initial State

Draft

## States

Draft

Review

Published

Active

Suspended

Completed

Archived

## Business Rules

- Only approved courses become Active.
- Archived courses cannot be edited.

---

# SM-04 Course Enrollment State Machine

## Objective

Manage enrollment lifecycle.

## Initial State

Enrollment Requested

## States

Requested

Eligibility Checking

Payment Pending

Approved

Active

Completed

Cancelled

Rejected

## Business Rules

- Payment required before activation.
- Student eligibility must be verified.

---

# SM-05 Attendance Session State Machine

## Objective

Manage attendance recording sessions.

## Initial State

Scheduled

## States

Scheduled

Open

Recording

Submitted

Verified

Locked

## Business Rules

- Locked attendance cannot be modified.
- Corrections require administrator approval.

---

# SM-06 Examination State Machine

## Objective

Represent examination lifecycle.

## States

Draft

Scheduled

Open

In Progress

Completed

Marks Pending

Results Published

Archived

## Business Rules

- Results cannot be published before marks approval.
- Archived examinations are immutable.

---

# SM-07 Marks and Results State Machine

## Objective

Manage marks from entry to publication.

## States

Not Entered

Draft

Submitted

Under Review

Approved

Published

Corrected

Locked

## Business Rules

- Published marks require approval.
- Locked results cannot be edited.

---

# SM-08 Fee Payment State Machine

## Objective

Model payment processing.

## States

Invoice Created

Pending

Processing

Paid

Failed

Refunded

Closed

## Business Rules

- Payments are atomic.
- Refunds require authorization.

---

# SM-09 Learning Resource State Machine

## Objective

Manage uploaded learning resources.

## States

Selected

Uploading

Virus Scan

Metadata Pending

Published

Archived

Deleted

## Business Rules

- Resources must pass virus scanning.
- Metadata is mandatory before publishing.

---

# SM-10 Announcement State Machine

## Objective

Manage announcements.

## States

Draft

Scheduled

Published

Expired

Archived

## Business Rules

- Expired announcements become read-only.
- Scheduled announcements publish automatically.

---

# SM-11 Parent Student Link State Machine

## Objective

Manage parent-child relationships.

## States

Requested

Verification Pending

Approved

Active

Suspended

Rejected

Unlinked

## Business Rules

- Parent identity verification is mandatory.
- Duplicate links are prohibited.

---

# SM-12 Teacher Assignment State Machine

## Objective

Manage teacher assignments.

## States

Proposed

Validation

Approved

Assigned

Active

Completed

Cancelled

## Business Rules

- Teachers may belong to multiple institutes.
- Timetable conflicts are prohibited.

---

# Common State Machine Rules

Every State Machine shall:

- Begin with one Initial State.
- End with one Final State.
- Use meaningful state names.
- Define transition events.
- Define guard conditions.
- Include entry and exit actions.
- Support exception handling.
- Support recovery transitions.
- Be synchronized with Activity, Sequence, Class, and Use Case Diagrams.

---

# Traceability Matrix

| State Machine | Use Case | Activity | Sequence | Class |
|---------------|----------|----------|----------|-------|
| User Account | Login | Login Activity | User Management | User & Role |
| Student Registration | Registration | Registration Activity | Registration Sequence | Academic |
| Course | Course Management | Course Activity | Course Sequence | Academic |
| Enrollment | Enrollment | Enrollment Activity | Enrollment Sequence | Academic |
| Attendance | Attendance | Attendance Activity | Attendance Sequence | Attendance |
| Examination | Examination | Examination Activity | Examination Sequence | Examination |
| Results | Marks | Marks Activity | Marks Sequence | Examination |
| Payment | Fee Payment | Payment Activity | Payment Sequence | Payment |
| Resource | Upload Resource | Upload Activity | Resource Upload | Resource |
| Announcement | Publish Announcement | Announcement Activity | Announcement Sequence | Communication |
| Parent Link | Parent Linking | Linking Activity | Parent Linking | User |
| Teacher Assignment | Teacher Assignment | Assignment Activity | Assignment Sequence | Institute |

---

# Version History

| Version | Description |
|----------|-------------|
| 1.0 | Initial Enterprise State Machine Specification |
