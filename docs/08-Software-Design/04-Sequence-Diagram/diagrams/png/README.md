# PNG Preview Repository

## Overview

The **png** directory contains exported PNG preview images for all UML Sequence Diagrams developed for the **TechmoEDU Smart Learning Platform**.

These images provide a static visual representation of each sequence diagram and are intended for documentation, presentations, reports, GitHub previews, architecture reviews, and academic submissions.

The PNG files are generated from the corresponding Draw.io and PlantUML source files. Therefore, every PNG image must remain synchronized with its associated editable and text-based source artifacts.

---

# Purpose

The objectives of this directory are to:

- Store preview images of all UML Sequence Diagrams.
- Support Software Design Specification (SDS) documentation.
- Improve GitHub repository readability.
- Provide diagrams for presentations and reports.
- Support architecture review sessions.
- Preserve high-quality visual documentation.
- Enable quick diagram viewing without editing tools.

---

# Directory Structure

```
png/
│
├── README.md
│
├── 01-Student-Login-Sequence.png
├── 02-Student-Registration-Sequence.png
├── 03-Course-Enrollment-Sequence.png
├── 04-Attendance-Marking-Sequence.png
├── 05-Marks-Recording-Sequence.png
├── 06-Fee-Payment-Sequence.png
├── 07-Resource-Upload-Sequence.png
├── 08-Announcement-Publishing-Sequence.png
├── 09-Parent-Student-Linking-Sequence.png
├── 10-Teacher-Assignment-Sequence.png
├── 11-Report-Generation-Sequence.png
└── 12-User-Management-Sequence.png
```

---

# File Naming Standard

Every PNG preview shall follow the standard naming convention.

```
01-Student-Login-Sequence.png

02-Student-Registration-Sequence.png

03-Course-Enrollment-Sequence.png

...

12-User-Management-Sequence.png
```

Rules

- Use two-digit numbering.
- Use descriptive business names.
- Separate words using hyphens (`-`).
- Avoid spaces and special characters.
- File extension must be `.png`.

---

# PNG Image Standards

Every exported image should include:

- Diagram title
- Actor
- Lifelines
- Activation bars
- Messages
- Return messages
- Combined fragments
- Business notes
- Error handling paths
- Footer information (if applicable)

---

# Export Quality Standards

PNG files should be exported using the following recommendations.

| Property | Recommended Value |
|----------|-------------------|
| Format | PNG |
| Resolution | High (minimum 300 DPI for print) |
| Background | White |
| Text | Sharp and readable |
| Scaling | 100% or higher |
| Compression | Lossless |

---

# Visual Quality Guidelines

Each PNG preview should:

- Be fully readable without zooming where practical.
- Maintain consistent spacing and alignment.
- Preserve the original Draw.io layout.
- Avoid cropped participants or messages.
- Display notes and fragments clearly.
- Use uniform fonts and font sizes.

---

# Synchronization Rules

Each PNG image must correspond to the following files.

```
drawio/
01-Student-Login-Sequence.drawio

plantuml/
01-Student-Login-Sequence.puml

png/
01-Student-Login-Sequence.png
```

If a Draw.io or PlantUML source is modified, the PNG preview **must be regenerated**.

---

# Repository Responsibilities

This directory is responsible for:

- Visual documentation.
- GitHub previews.
- Academic reports.
- Architecture review material.
- Presentation assets.
- Design verification.

---

# Usage

PNG previews are intended for:

- Software Design Specification (SDS)
- Project documentation
- University reports
- Technical presentations
- GitHub repository previews
- Architecture walkthroughs
- Stakeholder demonstrations

PNG previews are **not** intended to replace the editable Draw.io or PlantUML source files.

---

# Quality Checklist

Before committing a PNG image, verify that:

- The image is up to date.
- The entire diagram is visible.
- Text is readable.
- No overlapping objects exist.
- Lifelines are complete.
- Combined fragments are visible.
- Notes are readable.
- The filename matches the Draw.io and PlantUML source.

---

# Version Control

PNG files should be updated whenever:

- Business logic changes.
- Diagram structure changes.
- Participants are added or removed.
- Message flow changes.
- Combined fragments are modified.
- Notes or documentation are updated.

Example

| Property | Value |
|----------|-------|
| Diagram | Student Login Sequence |
| Version | v1.2 |
| Export Date | 2026-07-13 |
| Source | Draw.io / PlantUML |
| Status | Current |

---

# Best Practices

- Export PNG after every approved diagram change.
- Keep filenames synchronized with source files.
- Avoid manual image editing.
- Preserve original aspect ratio.
- Use consistent export settings for all diagrams.
- Verify readability before publishing.

---

# Related Directories

```
diagrams/

├── drawio/
├── png/
└── plantuml/
```

All three repositories must remain synchronized.

---

# Compliance

This repository follows:

- OMG UML 2.x Specification
- IEEE 1016 Software Design Description
- ISO/IEC/IEEE 42010 Architecture Description
- Enterprise Documentation Best Practices

---

# Version Information

| Property | Value |
|----------|-------|
| Module | Sequence Diagram |
| Directory | diagrams/png |
| Version | 1.0 |
| Documentation Standard | Enterprise Software Design Specification (SDS) |
| UML Standard | OMG UML 2.x |
| Project | TechmoEDU Smart Learning Platform |

---

# Conclusion

The **png** directory provides high-quality visual representations of all UML Sequence Diagrams within the TechmoEDU Smart Learning Platform. By maintaining synchronized, high-resolution preview images, the project ensures clear communication, effective documentation, and professional presentation of its software architecture.

---

**Project:** TechmoEDU Smart Learning Platform

**Module:** Sequence Diagram

**Directory:** diagrams/png

**Status:** Official PNG Preview Repository

**Copyright © TechmoEDU Smart Learning Platform**
