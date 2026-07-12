# 03 - Class Diagram

> **Chapter 08 – Software Design**

---

## Overview

This section documents the UML Class Diagram model of the TechmoEDU Smart Learning Platform.

The Class Diagram defines the main domain classes, attributes, operations, inheritance structures, associations, compositions, aggregations, and multiplicity rules used by the platform.

It provides the structural foundation for:

- Frontend data models
- Firebase Firestore collections
- Backend services
- Validation rules
- Role-based access control
- Future API development
- Software implementation

---

## Objectives

The objectives of this section are to:

- Identify the core system classes
- Define class attributes and operations
- Document relationships among classes
- Define inheritance and composition structures
- Establish multiplicity constraints
- Align the UML model with Firestore collections
- Support implementation and testing

---

## Core Class Categories

### Identity and Access

- User
- Role
- Permission
- SuperAdministrator
- InstituteAdministrator
- Teacher
- Student
- Parent

### Institute Management

- Institute
- InstituteMembership
- TeacherAssignment
- ParentStudentLink

### Academic Management

- Course
- ClassSession
- Enrollment
- Attendance
- Examination
- Mark

### Financial Management

- FeeStructure
- Payment
- Receipt

### Content and Communication

- LearningResource
- Announcement
- Notification

### Reporting and Auditing

- Report
- AuditLog

---

## Planned Documents

| File | Description |
|---|---|
| `01-Class-List.md` | Complete list of platform classes |
| `02-Class-Descriptions.md` | Detailed class specifications |
| `03-Relationships.md` | Class associations and dependencies |
| `04-Multiplicity-Rules.md` | Relationship cardinality rules |
| `diagrams/drawio/` | Editable Draw.io diagrams |
| `diagrams/png/` | PNG preview images |
| `diagrams/plantuml/` | PlantUML source files |
| `archive/` | Previous diagram versions |

---

## Planned Class Diagrams

1. Overall Domain Class Diagram
2. User and Role Class Diagram
3. Institute Management Class Diagram
4. Academic Management Class Diagram
5. Attendance and Examination Class Diagram
6. Fee and Payment Class Diagram
7. Resource and Announcement Class Diagram

---

## Diagram Formats

Each approved Class Diagram will be maintained in:

- `.drawio` — Editable Draw.io source
- `.png` — Documentation preview
- `.puml` — PlantUML source

---

## UML Notation

The diagrams will use standard UML notation for:

- Classes
- Attributes
- Operations
- Generalization
- Association
- Aggregation
- Composition
- Dependency
- Multiplicity
- Visibility modifiers

---

## Version

**Version:** 1.0  
**Status:** In Progress  
**Author:** Nuwan S. Ekanayaka
