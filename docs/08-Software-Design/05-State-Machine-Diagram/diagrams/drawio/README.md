# TechmoEDU Smart Learning Platform

# Draw.io Directory

**Module**

State Machine Diagram Module

**Directory**

diagrams/drawio/

**Document Type**

Enterprise Draw.io Modeling Standard

**Version**

1.0

---

# Purpose

The **drawio/** directory stores the editable source files of all UML State Machine Diagrams created using Draw.io (diagrams.net).

These files are the primary modeling artifacts used by software architects, developers, business analysts, and system designers during analysis, design, review, and maintenance.

Every exported PNG and PlantUML diagram shall correspond to an approved Draw.io source.

---

# Objectives

This directory has the following objectives:

- Maintain editable UML diagrams.
- Preserve diagram quality.
- Support collaborative editing.
- Simplify future modifications.
- Ensure consistency across all diagrams.
- Maintain traceability with software documentation.

---

# Scope

This directory contains only editable **.drawio** files.

No exported images, screenshots, generated documents, or implementation source code shall be stored here.

---

# Directory Structure

```
drawio/

├── README.md

├── 01-User-Account-State-Machine.drawio

├── 02-Student-Registration-State-Machine.drawio

├── 03-Course-State-Machine.drawio

├── 04-Course-Enrollment-State-Machine.drawio

├── 05-Attendance-Session-State-Machine.drawio

├── 06-Examination-State-Machine.drawio

├── 07-Marks-Results-State-Machine.drawio

├── 08-Fee-Payment-State-Machine.drawio

├── 09-Learning-Resource-State-Machine.drawio

├── 10-Announcement-State-Machine.drawio

├── 11-Parent-Student-Link-State-Machine.drawio

└── 12-Teacher-Assignment-State-Machine.drawio
```

---

# File Naming Convention

Each file shall follow the format:

```
<Sequence Number>-<Business Entity>-State-Machine.drawio
```

Examples

```
01-User-Account-State-Machine.drawio

05-Attendance-Session-State-Machine.drawio

12-Teacher-Assignment-State-Machine.drawio
```

---

# Diagram Canvas Standards

Every diagram shall use:

Canvas Size

- Automatic

Grid

- Enabled

Grid Size

- 10 px

Page View

- Enabled

Guides

- Enabled

Snap to Grid

- Enabled

Connection Points

- Enabled

Shadow

- Disabled

Rounded Connectors

- Enabled

---

# Diagram Orientation

Preferred layout:

Top → Bottom

Alternative:

Left → Right

Avoid unnecessary crossing connectors.

Maintain logical state progression.

---

# UML Elements

Every Draw.io diagram shall use official UML State Machine notation.

Required elements:

- Initial State
- Final State
- State
- Composite State
- Choice
- Junction
- Fork
- Join
- History State
- Terminate State
- Note

---

# State Design Standard

State boxes shall contain:

State Name

Entry Action

Do Activity

Exit Action

Example

```
Active

entry / initializeSession()

do / monitorActivity()

exit / saveLastAccess()
```

---

# Transition Standard

Transitions shall follow:

```
event [guard] / action
```

Example

```
approveEnrollment

[paymentCompleted]

/

activateEnrollment()
```

---

# Connector Rules

All connectors shall:

- Use orthogonal routing where possible.
- Have visible arrow heads.
- Avoid overlapping states.
- Minimize crossing lines.
- Maintain consistent spacing.

---

# Color Standard

Recommended colors:

Initial State

Black

Business States

Light Blue

Composite States

Light Green

Choice Nodes

Orange

Error States

Light Red

Recovery States

Light Yellow

Final State

Black Outline

Notes

Light Gray

---

# Typography Standard

Font

Arial

Font Size

12–14 pt

Heading

Bold

State Names

Bold

Actions

Regular

Notes

Italic

---

# Alignment Rules

All states shall:

- Be equally spaced.
- Align vertically or horizontally.
- Maintain consistent margins.
- Avoid overlapping objects.

---

# Layering Rules

Recommended layers:

Layer 1

States

Layer 2

Transitions

Layer 3

Notes

Layer 4

Annotations

---

# Validation Checklist

Before saving:

✓ Initial State exists.

✓ Final State exists.

✓ State names follow naming rules.

✓ Entry actions defined.

✓ Exit actions defined.

✓ Internal activities defined where required.

✓ Transition labels complete.

✓ Guard conditions enclosed in brackets.

✓ Layout readable.

✓ No overlapping connectors.

✓ No disconnected objects.

---

# Synchronization Policy

Whenever a Draw.io diagram changes:

1. Update the Draw.io file.
2. Export a new PNG.
3. Update the PlantUML source if required.
4. Review documentation.
5. Commit all files together.

---

# Export Rules

PNG export shall use:

Resolution

300 DPI or higher

Transparent Background

Disabled

Crop

Enabled

Scale

100%

Border

Minimum

Quality

Maximum

---

# Repository Workflow

```
Business Requirement

↓

Draw.io Modeling

↓

Architecture Review

↓

Diagram Validation

↓

PNG Export

↓

PlantUML Synchronization

↓

Documentation Update

↓

Git Commit

↓

Release
```

---

# Collaboration Guidelines

When editing diagrams:

- Do not rename existing files unnecessarily.
- Preserve UML notation.
- Maintain naming consistency.
- Record major structural changes in commit messages.
- Review with another contributor before release.

---

# Best Practices

- One diagram per file.
- Keep diagrams modular.
- Avoid visual clutter.
- Use meaningful state names.
- Keep transitions short and readable.
- Maintain consistent spacing.
- Follow UML 2.5.x standards.

---

# Related Directories

```
diagrams/

drawio/

png/

plantuml/

archive/
```

---

# Related Documents

- README.md
- 01-State-Machine-List.md
- 02-State-Machine-Descriptions.md
- 03-State-Transition-Rules.md
- 04-State-Machine-Standards.md
- diagrams/README.md
- archive/README.md

---

# Version History

| Version | Date | Description |
|----------|------|-------------|
| 1.0 | Initial Release | Enterprise Draw.io Modeling Standard |

---

# Approval

Prepared For

**TechmoEDU Smart Learning Platform**

Software Design Documentation

Enterprise Draw.io Modeling Standard

Approved by

Software Architecture Team

---
