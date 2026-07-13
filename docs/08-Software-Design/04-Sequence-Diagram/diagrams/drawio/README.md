# Draw.io Source Repository

## Overview

The **drawio** directory contains the editable Draw.io source files for all UML Sequence Diagrams developed for the **TechmoEDU Smart Learning Platform**.

These files represent the master design artifacts and serve as the primary source for all UML diagram modifications. Every exported PNG image and PlantUML model must remain synchronized with the corresponding Draw.io source.

The Draw.io files are considered the authoritative visual design documents within the Software Design Specification (SDS).

---

# Purpose

The objectives of this directory are to:

- Store editable UML Sequence Diagram source files.
- Maintain the master version of every sequence diagram.
- Support collaborative editing.
- Simplify future modifications.
- Preserve enterprise-level documentation quality.
- Ensure consistency between UML artifacts.

---

# Directory Structure

```
drawio/
│
├── README.md
│
├── 01-Student-Login-Sequence.drawio
├── 02-Student-Registration-Sequence.drawio
├── 03-Course-Enrollment-Sequence.drawio
├── 04-Attendance-Marking-Sequence.drawio
├── 05-Marks-Recording-Sequence.drawio
├── 06-Fee-Payment-Sequence.drawio
├── 07-Resource-Upload-Sequence.drawio
├── 08-Announcement-Publishing-Sequence.drawio
├── 09-Parent-Student-Linking-Sequence.drawio
├── 10-Teacher-Assignment-Sequence.drawio
├── 11-Report-Generation-Sequence.drawio
└── 12-User-Management-Sequence.drawio
```

---

# File Naming Standard

Every file shall follow the standard naming convention.

```
01-Student-Login-Sequence.drawio

02-Student-Registration-Sequence.drawio

03-Course-Enrollment-Sequence.drawio

...

12-User-Management-Sequence.drawio
```

Rules

- Two-digit numbering.
- Descriptive business name.
- Use hyphens (`-`) between words.
- No spaces.
- File extension must be `.drawio`.

---

# Diagram Standards

Every Draw.io diagram shall include:

- Diagram Title
- Diagram Identifier
- Version Number
- Primary Actor
- Lifelines
- Activation Bars
- Messages
- Return Messages
- Combined Fragments
- Business Notes
- Error Handling
- Footer Information

---

# UML Elements

The following UML elements are permitted.

## Actors

- Student
- Parent
- Teacher
- Institute Administrator
- Super Administrator

---

## Boundary Objects

- Login Page
- Registration Page
- Dashboard
- Attendance Page
- Payment Page
- Report Page

---

## Controllers

- Authentication Controller
- User Controller
- Course Controller
- Attendance Controller
- Examination Controller
- Payment Controller
- Report Controller

---

## Services

- Authentication Service
- User Service
- Course Service
- Attendance Service
- Examination Service
- Payment Service
- Notification Service
- Audit Service

---

## Repositories

- User Repository
- Course Repository
- Attendance Repository
- Examination Repository
- Payment Repository

---

## Infrastructure

- Firebase Authentication
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging
- Cloud Functions

---

# Visual Layout Standard

Every diagram should follow the same left-to-right layout.

```
Actor

↓

Boundary

↓

Controller

↓

Business Service

↓

Repository

↓

Firebase Services

↓

Notification Service

↓

Audit Log
```

This layout must remain consistent across all sequence diagrams.

---

# Color Guidelines

Recommended color scheme

| Component | Suggested Color |
|-----------|-----------------|
| Actor | Blue |
| Boundary | Light Blue |
| Controller | Green |
| Service | Orange |
| Repository | Purple |
| Firebase | Red |
| Notification | Cyan |
| Audit Log | Gray |

> Maintain the same color mapping throughout the project for visual consistency.

---

# Editing Guidelines

When editing a diagram:

- Preserve the numbering.
- Do not rename participants unnecessarily.
- Maintain alignment.
- Avoid crossing message lines.
- Keep lifelines vertically aligned.
- Update the version if structural changes are made.

---

# Export Rules

After every modification:

1. Save the updated `.drawio` file.
2. Export a new `.png` preview.
3. Synchronize the corresponding `.puml` file.
4. Verify naming consistency.
5. Commit all related changes together.

---

# Quality Checklist

Before committing a Draw.io file:

- Diagram opens correctly.
- All participants are named.
- Messages are readable.
- Activation bars are aligned.
- Combined fragments are complete.
- Notes are positioned correctly.
- No overlapping elements.
- PNG export updated.
- PlantUML source synchronized.

---

# Relationship with Other Directories

Each Draw.io source file must have matching files in:

```
png/

plantuml/
```

Example

```
drawio/
01-Student-Login-Sequence.drawio

png/
01-Student-Login-Sequence.png

plantuml/
01-Student-Login-Sequence.puml
```

---

# Version Control

Every modification should include:

- Version Number
- Author
- Modified Date
- Change Summary

Example

| Property | Value |
|----------|-------|
| Diagram | Student Login Sequence |
| Version | v1.2 |
| Modified | 2026-07-13 |
| Author | TechmoEDU Development Team |
| Changes | Added audit logging and MFA validation |

---

# Best Practices

- Keep one diagram per file.
- Use consistent fonts and spacing.
- Apply the standard participant order.
- Keep message names action-oriented.
- Include business notes where necessary.
- Validate diagram before export.

---

# Repository Responsibilities

This directory is responsible for maintaining:

- Master editable diagrams.
- Enterprise UML consistency.
- Long-term maintainability.
- Collaboration-ready documentation.
- Accurate source files for exports.

---

# Version Information

| Property | Value |
|----------|-------|
| Module | Sequence Diagram |
| Directory | diagrams/drawio |
| Version | 1.0 |
| Documentation Standard | Enterprise Software Design Specification (SDS) |
| UML Standard | OMG UML 2.x |
| Project | TechmoEDU Smart Learning Platform |

---

# Conclusion

The **drawio** directory is the primary source of truth for all editable UML Sequence Diagrams in the TechmoEDU Smart Learning Platform. Maintaining these files according to the defined standards ensures consistency, collaboration, traceability, and long-term maintainability of the project's Software Design Specification.

---

**Project:** TechmoEDU Smart Learning Platform

**Module:** Sequence Diagram

**Directory:** diagrams/drawio

**Status:** Master Editable UML Repository

**Copyright © TechmoEDU Smart Learning Platform**
