# TechmoEDU Smart Learning Platform

# Archive Directory

**Module**

State Machine Diagram Module

**Directory**

archive/

**Document Type**

Archive Management Specification

**Version**

1.0

---

# Purpose

The **archive/** directory stores historical, backup, deprecated, draft, and superseded versions of State Machine Diagram artifacts.

This directory ensures that previous revisions remain available for reference, auditing, rollback, and comparison without affecting the active documentation.

Archived files are **not** considered part of the current production documentation.

---

# Objectives

The objectives of the archive directory are to:

- Preserve historical UML artifacts.
- Support version comparison.
- Enable rollback to previous revisions.
- Maintain architectural traceability.
- Protect completed releases from accidental modification.
- Retain obsolete diagrams for audit purposes.

---

# Scope

The archive directory may contain previous versions of:

- Draw.io diagrams
- PlantUML source files
- PNG exports
- Documentation
- Review copies
- Deprecated models
- Experimental designs
- Backup ZIP packages

---

# Typical Archived Files

Examples include:

```
01-User-Account-State-Machine-v1.drawio

01-User-Account-State-Machine-v2.drawio

Attendance-StateMachine-Draft.puml

Old-Announcement-State.png

Deprecated-StateMachine.zip
```

---

# Archive Policy

Files should be archived when:

- A newer version replaces the current document.
- Major design revisions occur.
- A diagram becomes deprecated.
- A release snapshot is created.
- A rollback point is required.
- Experimental versions are retired.

---

# Naming Convention

Archived files should include version information.

Examples

```
<StateMachine>-v1.drawio

<StateMachine>-v2.drawio

<StateMachine>-Draft.drawio

<StateMachine>-Backup.drawio

<StateMachine>-Deprecated.drawio
```

Examples

```
UserAccount-v1.drawio

CourseEnrollment-v3.puml

AttendanceSession-Backup.png

Announcement-Draft.zip
```

---

# Versioning Standard

Recommended version format:

```
v1.0

v1.1

v1.2

v2.0

v3.0
```

Major versions indicate significant architectural changes.

Minor versions indicate incremental improvements.

Patch versions indicate documentation corrections.

---

# Release Snapshot Policy

Each major release may include an archive snapshot.

Example

```
Release-1.0-StateMachines.zip

Release-2.0-StateMachines.zip
```

Snapshots should contain:

- Draw.io sources
- PlantUML files
- PNG exports
- README files
- Release notes

---

# Backup Policy

Every significant milestone should be backed up before changes are made.

Recommended backup points:

- Before major refactoring
- Before release
- Before diagram restructuring
- Before deleting obsolete artifacts

---

# Rollback Policy

Rollback is permitted when:

- A released diagram contains modeling errors.
- UML inconsistencies are detected.
- Business rules change unexpectedly.
- Repository corruption occurs.

Rollback must use the latest verified archive version.

---

# File Integrity Rules

Archived files:

- Shall not overwrite production files.
- Shall preserve original filenames where practical.
- Shall remain readable.
- Shall not be edited after archival unless explicitly restored.

---

# Retention Policy

Recommended retention periods:

| Artifact Type | Retention |
|--------------|-----------|
| Draft Versions | Until next stable release |
| Major Releases | Permanent |
| Deprecated Diagrams | Permanent |
| Experimental Versions | Until review completion |
| Backup Packages | Permanent |

---

# Security Policy

The archive directory shall:

- Preserve document integrity.
- Prevent unauthorized modification.
- Exclude confidential credentials.
- Store only documentation artifacts.
- Follow repository access policies.

---

# Directory Structure

```
archive/

├── Release-1.0/

├── Release-2.0/

├── Drafts/

├── Deprecated/

├── Backup/

└── README.md
```

---

# Recommended Archive Contents

The archive directory may include:

- Historical Draw.io diagrams
- Previous PlantUML files
- Legacy PNG exports
- Deprecated documentation
- Backup ZIP packages
- Release snapshots
- Design review copies

---

# Repository Guidelines

Do not place active working files inside this directory.

Only finalized historical versions should be archived.

Current production diagrams must remain in:

```
diagrams/

drawio/

png/

plantuml/
```

---

# Related Documents

- README.md
- 01-State-Machine-List.md
- 02-State-Machine-Descriptions.md
- 03-State-Transition-Rules.md
- 04-State-Machine-Standards.md

---

# Best Practices

✔ Archive only completed revisions.

✔ Never overwrite archived versions.

✔ Maintain version numbering.

✔ Preserve original timestamps where possible.

✔ Keep archive read-only after release.

✔ Document the reason for archival in release notes.

✔ Store ZIP packages together with their corresponding source files.

---

# Version History

| Version | Date | Description |
|----------|------|-------------|
| 1.0 | Initial Release | Archive Directory Specification |

---

# Approval

Prepared For

**TechmoEDU Smart Learning Platform**

Software Design Documentation

Enterprise Archive Management Specification

Approved by

Software Architecture Team

---
