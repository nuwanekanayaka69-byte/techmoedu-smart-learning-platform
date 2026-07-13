# Archive

## Overview

The **archive** directory stores historical, deprecated, superseded, experimental, and backup versions of UML Sequence Diagram artifacts used throughout the development of the **TechmoEDU Smart Learning Platform**.

Archived files are retained for documentation traceability, design evolution, version comparison, auditing, and recovery purposes. Files contained in this directory are **not considered part of the active Software Design Specification (SDS)**.

---

# Purpose

The archive directory is maintained to:

- Preserve previous versions of sequence diagrams.
- Maintain design history.
- Support version comparison.
- Record architectural evolution.
- Keep backup copies before major modifications.
- Preserve experimental designs.
- Support auditing and academic review.

---

# Archive Policy

Only the following types of files should be stored in this directory.

## Previous Diagram Versions

Examples

```
01-Student-Login-Sequence-v1.drawio

01-Student-Login-Sequence-v2.drawio

05-Marks-Recording-Sequence-beta.drawio
```

---

## Deprecated Designs

Sequence diagrams that are no longer used.

Examples

```
Old Login Flow

Legacy Payment Flow

Deprecated Notification Flow
```

---

## Experimental Designs

Prototype or research diagrams.

Examples

```
Prototype Authentication

Alternative Enrollment Flow

Experimental Notification Architecture
```

---

## Backup Files

Backup copies created before major updates.

Examples

```
Backup-2026-07-12.drawio

Pre-Refactoring-Version.drawio
```

---

## Review Copies

Copies created during:

- Supervisor Review
- Internal Review
- UML Validation
- Architecture Review

---

# Naming Convention

Archived files should use descriptive names.

Recommended format

```
<Diagram-Name>-v1

<Diagram-Name>-v2

<Diagram-Name>-Draft

<Diagram-Name>-Review

<Diagram-Name>-Deprecated

<Diagram-Name>-Backup-YYYY-MM-DD
```

Examples

```
01-Student-Login-Sequence-v1.drawio

01-Student-Login-Sequence-v2.drawio

03-Course-Enrollment-Sequence-Draft.drawio

05-Marks-Recording-Sequence-Backup-2026-07-13.drawio
```

---

# Directory Structure

```
archive/

├── README.md

├── Authentication/
│
├── Enrollment/
│
├── Attendance/
│
├── Examination/
│
├── Payment/
│
├── Resources/
│
├── Administration/
│
└── Reviews/
```

> **Note:**  
> These subfolders are optional and should only be created if archived content grows significantly.

---

# Version Management

Every archived artifact should include:

- Version Number
- Author
- Archive Date
- Reason for Archiving
- Related Active Diagram
- Change Summary

Example

| Property | Value |
|----------|-------|
| Version | v2 |
| Archive Date | 2026-07-13 |
| Status | Deprecated |
| Replaced By | Student Login Sequence v3 |
| Reason | Updated authentication workflow |
| Author | TechmoEDU Development Team |

---

# Archive Rules

The following files **should** be archived:

- Deprecated diagrams
- Previous approved versions
- Experimental models
- Backup copies
- Architecture review copies

The following files **should not** be archived:

- Current production diagrams
- Approved final versions
- Active UML documentation
- Temporary exported images
- Automatically generated files

---

# Retention Policy

Archive files should be retained until:

- The project is completed.
- A major system redesign occurs.
- Repository maintenance requires cleanup.

Historical versions should never be deleted without proper review.

---

# Relationship with Active Documentation

The active sequence diagrams are located in:

```
04-Sequence-Diagram/

├── diagrams/
│
├── drawio/

├── png/

└── plantuml/
```

The archive directory exists only to preserve historical references.

---

# Best Practices

When archiving:

- Never overwrite previous versions.
- Use meaningful version numbers.
- Record the reason for archiving.
- Keep archived diagrams read-only where possible.
- Archive before major structural changes.
- Preserve related documentation together.

---

# Notes

Files in this directory:

- Are not maintained as active design documents.
- Should not be referenced by developers during implementation.
- Exist solely for historical reference, auditing, comparison, and recovery.

---

# Version Information

| Property | Value |
|----------|-------|
| Module | Sequence Diagram |
| Directory | archive |
| Version | 1.0 |
| Documentation Standard | Enterprise Software Design Specification (SDS) |
| Project | TechmoEDU Smart Learning Platform |

---

# Conclusion

The **archive** directory preserves the historical evolution of the Sequence Diagram module while keeping the active Software Design Specification clean, organized, and maintainable. Proper archiving supports version control, traceability, academic review, and long-term project governance.

---

**Project:** TechmoEDU Smart Learning Platform

**Module:** Sequence Diagram

**Directory:** archive

**Status:** Documentation Archive

**Copyright © TechmoEDU Smart Learning Platform**
