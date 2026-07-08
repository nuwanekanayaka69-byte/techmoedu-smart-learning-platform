# 01 - Activity List

> **Chapter 08 – Software Design**
>
> **Section:** Activity Diagram

---

## Document Information

| Item | Details |
|------|---------|
| Document | Activity List |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | Draft |
| Author | Nuwan S. Ekanayaka |

---

## Introduction

This document lists the main UML Activity Diagrams planned for the TechmoEDU Smart Learning Platform.

Each activity diagram represents an important workflow in the system and will be maintained in three formats:

- **Draw.io** – editable diagram file
- **PNG** – preview image for documentation
- **PlantUML** – source file for diagram generation

---

## Activity Diagram List

| ID | Activity Diagram | Primary Actor | Draw.io File | PNG File | PlantUML File |
|---|---|---|---|---|---|
| AD-001 | Student Login Activity | Student / All Users | `diagrams/drawio/01-Student-Login-Activity.drawio` | `diagrams/png/01-Student-Login-Activity.png` | `diagrams/plantuml/01-Student-Login-Activity.puml` |
| AD-002 | Student Registration Activity | Institute Admin | `diagrams/drawio/02-Student-Registration-Activity.drawio` | `diagrams/png/02-Student-Registration-Activity.png` | `diagrams/plantuml/02-Student-Registration-Activity.puml` |
| AD-003 | Course Enrollment Activity | Institute Admin | `diagrams/drawio/03-Course-Enrollment-Activity.drawio` | `diagrams/png/03-Course-Enrollment-Activity.png` | `diagrams/plantuml/03-Course-Enrollment-Activity.puml` |
| AD-004 | Attendance Marking Activity | Teacher | `diagrams/drawio/04-Attendance-Marking-Activity.drawio` | `diagrams/png/04-Attendance-Marking-Activity.png` | `diagrams/plantuml/04-Attendance-Marking-Activity.puml` |
| AD-005 | Marks Recording Activity | Teacher | `diagrams/drawio/05-Marks-Recording-Activity.drawio` | `diagrams/png/05-Marks-Recording-Activity.png` | `diagrams/plantuml/05-Marks-Recording-Activity.puml` |
| AD-006 | Fee Payment Activity | Institute Admin | `diagrams/drawio/06-Fee-Payment-Activity.drawio` | `diagrams/png/06-Fee-Payment-Activity.png` | `diagrams/plantuml/06-Fee-Payment-Activity.puml` |
| AD-007 | Resource Upload Activity | Teacher / Institute Admin | `diagrams/drawio/07-Resource-Upload-Activity.drawio` | `diagrams/png/07-Resource-Upload-Activity.png` | `diagrams/plantuml/07-Resource-Upload-Activity.puml` |
| AD-008 | Announcement Publishing Activity | Institute Admin / Teacher | `diagrams/drawio/08-Announcement-Publishing-Activity.drawio` | `diagrams/png/08-Announcement-Publishing-Activity.png` | `diagrams/plantuml/08-Announcement-Publishing-Activity.puml` |
| AD-009 | Parent Student Linking Activity | Institute Admin | `diagrams/drawio/09-Parent-Student-Linking-Activity.drawio` | `diagrams/png/09-Parent-Student-Linking-Activity.png` | `diagrams/plantuml/09-Parent-Student-Linking-Activity.puml` |
| AD-010 | Teacher Assignment Activity | Institute Admin | `diagrams/drawio/10-Teacher-Assignment-Activity.drawio` | `diagrams/png/10-Teacher-Assignment-Activity.png` | `diagrams/plantuml/10-Teacher-Assignment-Activity.puml` |
| AD-011 | Report Generation Activity | Institute Admin / Teacher | `diagrams/drawio/11-Report-Generation-Activity.drawio` | `diagrams/png/11-Report-Generation-Activity.png` | `diagrams/plantuml/11-Report-Generation-Activity.puml` |
| AD-012 | User Management Activity | Super Admin | `diagrams/drawio/12-User-Management-Activity.drawio` | `diagrams/png/12-User-Management-Activity.png` | `diagrams/plantuml/12-User-Management-Activity.puml` |

---

## Activity Diagram Summary

| Category | Activities |
|---|---|
| Authentication | Student Login Activity |
| Student Management | Student Registration, Course Enrollment |
| Academic Management | Attendance Marking, Marks Recording |
| Finance | Fee Payment |
| Content Management | Resource Upload, Announcement Publishing |
| Parent Management | Parent Student Linking |
| Teacher Management | Teacher Assignment |
| Reporting | Report Generation |
| System Administration | User Management |

---

## File Organization Standard

Each activity diagram must be stored using the following format:

```text
diagrams/
├── drawio/
│   └── <Activity-Name>.drawio
├── png/
│   └── <Activity-Name>.png
└── plantuml/
    └── <Activity-Name>.puml
```

---

## Version

Version 1.0
---

# Revision History

| Version | Date | Author | Description |
|----------|------------|--------------------|--------------------------|
| 1.0 | 2026-07 | Nuwan S. Ekanayaka | Initial Activity List |

---

# Review Status

| Role | Status |
|------|--------|
| System Analyst | Approved |
| Software Architect | Approved |
| Project Owner | Approved |

---

# Related Documents

- 01-Use-Case-Diagram
- 02-Activity-Descriptions
- System Architecture
- Database Design
