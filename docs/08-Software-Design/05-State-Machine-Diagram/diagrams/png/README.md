# TechmoEDU Smart Learning Platform

# PNG Directory

**Module**

State Machine Diagram Module

**Directory**

`diagrams/png/`

**Document Type**

Enterprise PNG Export and Publication Standard

**Version**

1.0

---

# Purpose

The **png/** directory stores the approved high-resolution PNG exports of all UML State Machine Diagrams created for the TechmoEDU Smart Learning Platform.

PNG files provide a stable, portable, and presentation-ready representation of the diagrams for use in project documentation, academic reports, software design reviews, presentations, training materials, and repository previews.

These images are generated from the approved Draw.io or PlantUML source files and shall not be edited directly.

---

# Objectives

The objectives of this directory are to:

- Store high-quality diagram exports.
- Support project documentation and reports.
- Provide readable visuals for presentations.
- Preserve a stable representation of approved diagrams.
- Maintain consistency with Draw.io and PlantUML sources.
- Support academic and enterprise documentation requirements.
- Enable quick repository previews without opening source files.

---

# Scope

This directory contains only approved `.png` exports of State Machine Diagrams.

The following files shall not be stored in this directory:

- Draw.io source files
- PlantUML source files
- Screenshots
- Temporary exports
- Draft images
- PDF files
- Implementation source code
- Unapproved diagram revisions

---

# Directory Structure

```text
png/
│
├── README.md
│
├── 01-User-Account-State-Machine.png
├── 02-Student-Registration-State-Machine.png
├── 03-Course-State-Machine.png
├── 04-Course-Enrollment-State-Machine.png
├── 05-Attendance-Session-State-Machine.png
├── 06-Examination-State-Machine.png
├── 07-Marks-Results-State-Machine.png
├── 08-Fee-Payment-State-Machine.png
├── 09-Learning-Resource-State-Machine.png
├── 10-Announcement-State-Machine.png
├── 11-Parent-Student-Link-State-Machine.png
└── 12-Teacher-Assignment-State-Machine.png
```

---

# File Naming Convention

Each PNG file shall follow the naming pattern:

```text
<Sequence Number>-<Business Entity>-State-Machine.png
```

Examples:

```text
01-User-Account-State-Machine.png

05-Attendance-Session-State-Machine.png

12-Teacher-Assignment-State-Machine.png
```

Filename rules:

- Use the same base filename as the Draw.io and PlantUML files.
- Use two-digit sequence numbering.
- Use hyphens between words.
- Avoid spaces and special characters.
- Use the `.png` extension in lowercase.
- Do not add labels such as `final`, `new`, `latest`, or `copy`.

---

# Source of Truth

PNG files are generated outputs and are not the primary editable source.

The approved source files are:

```text
diagrams/drawio/*.drawio

diagrams/plantuml/*.puml
```

A PNG file shall always correspond to the latest approved source version.

Direct editing of PNG files is prohibited.

---

# Export Standards

Each diagram shall be exported using the following recommended settings.

| Setting | Required Standard |
|---|---|
| File Format | PNG |
| Resolution | High Resolution |
| DPI | 300 DPI or higher |
| Scale | 100% minimum |
| Crop | Enabled |
| Transparent Background | Disabled |
| Background | White |
| Border | Minimal |
| Quality | Maximum |
| Anti-Aliasing | Enabled |
| Text Rendering | Clear and readable |
| Image Orientation | Match source diagram |

For large diagrams, the export scale may be increased to maintain readability.

---

# Resolution Requirements

Recommended minimum image dimensions:

| Diagram Complexity | Recommended Minimum Width |
|---|---:|
| Simple State Machine | 1600 px |
| Medium State Machine | 2000 px |
| Complex Enterprise State Machine | 2400 px |
| Presentation or Thesis Use | 3000 px or higher |

The diagram must remain readable at normal document zoom.

---

# Print Quality Standard

PNG exports intended for academic reports, thesis documents, or printed design specifications shall:

- Use at least 300 DPI.
- Maintain a white background.
- Preserve clear text and connector lines.
- Avoid compression artifacts.
- Use consistent margins.
- Fit within the target document page without excessive scaling.
- Remain legible when printed in colour or grayscale.

---

# Visual Quality Standards

Every PNG export shall:

- Clearly display the diagram title.
- Show all states without clipping.
- Show all transition arrows.
- Preserve guard conditions.
- Preserve entry, exit, and do activities.
- Maintain readable font sizes.
- Avoid overlapping labels.
- Avoid broken connectors.
- Avoid cropped notes or annotations.
- Maintain consistent spacing and alignment.

---

# Colour Standards

PNG colours shall remain synchronized with the approved diagram source.

Recommended visual conventions:

| Element | Recommended Appearance |
|---|---|
| Initial State | Black |
| Final State | Black outline |
| Standard Business State | Light blue |
| Composite State | Light green |
| Choice or Decision State | Light orange |
| Error State | Light red |
| Recovery State | Light yellow |
| Notes | Light gray |
| Transition Arrows | Dark gray or black |

Colours shall support readability and shall not be used as the only method of communicating meaning.

---

# Typography Standards

Recommended typography:

| Element | Standard |
|---|---|
| Font Family | Arial or equivalent sans-serif |
| Diagram Title | 20–28 pt equivalent |
| State Name | 12–16 pt equivalent |
| Transition Label | 10–13 pt equivalent |
| Notes | 10–12 pt equivalent |
| State Name Style | Bold |
| Actions | Regular |
| Notes | Regular or italic |

Text shall remain readable after the PNG is inserted into Markdown, Word, PDF, or PowerPoint documents.

---

# Export Workflow

The standard PNG generation workflow is:

```text
Approved Requirement
        ↓
Update Draw.io Source
        ↓
Update PlantUML Source
        ↓
Validate Diagram Logic
        ↓
Render Diagram
        ↓
Export High-Resolution PNG
        ↓
Compare PNG with Source
        ↓
Update README and Documentation
        ↓
Git Commit
        ↓
Release
```

---

# Synchronization Policy

Whenever a State Machine Diagram changes:

1. Update the Draw.io source.
2. Update the PlantUML source.
3. Validate both representations.
4. Export a new PNG.
5. Replace the outdated PNG.
6. Confirm filename consistency.
7. Review related documentation.
8. Commit all related files together.

The PNG must never represent an older diagram version than the corresponding source files.

---

# Documentation Usage

PNG files may be used in:

- Software Requirement Specifications
- Software Design Specifications
- University Final Year Project reports
- Architecture review documents
- Technical presentations
- PowerPoint presentations
- User manuals
- Administrator manuals
- Test documentation
- GitHub repository previews
- Training and teaching materials

---

# Markdown Usage

Recommended Markdown format:

```md
![User Account State Machine](diagrams/png/01-User-Account-State-Machine.png)
```

When used from another directory, the relative path must be updated correctly.

---

# Word and PDF Usage

When inserting PNG diagrams into Word or PDF documents:

- Preserve the original aspect ratio.
- Avoid stretching the image.
- Use landscape orientation for wide diagrams.
- Add a figure number and caption.
- Keep text readable.
- Reference the diagram in the document body.
- Use page breaks where necessary.

Example caption:

```text
Figure 5.1: User Account State Machine Diagram
```

---

# Presentation Usage

For PowerPoint or presentation slides:

- Use one major diagram per slide where possible.
- Use a high-resolution PNG.
- Avoid reducing the image below readable size.
- Use zoomed sections for complex diagrams.
- Preserve the original diagram colours.
- Add a short explanatory caption.

---

# Repository Rules

The PNG directory shall follow these rules:

- One PNG file per State Machine Diagram.
- No duplicate or temporary images.
- No manually edited screenshots.
- No watermarks unless officially required.
- No low-resolution exports.
- No inconsistent filenames.
- No outdated diagrams.
- No confidential or sensitive data.

---

# Version Control Rules

PNG files are binary files and cannot be meaningfully line-diffed.

Therefore:

- Update PNG files only when source diagrams change.
- Commit the PNG with its related Draw.io and PlantUML files.
- Use clear commit messages.
- Avoid unnecessary repeated exports.
- Archive major historical versions in the `archive/` directory.

Recommended commit message:

```text
docs: update user account state machine diagram
```

---

# Validation Checklist

Before committing a PNG file, verify:

- The filename matches the Draw.io and PlantUML files.
- The latest approved source was used.
- The image opens without errors.
- The title is visible.
- The initial state is visible.
- The final state is visible.
- All business states are visible.
- Transition labels are readable.
- Guard conditions are readable.
- Entry, exit, and do activities are visible.
- Error and recovery states are present where required.
- No content is cropped.
- No connectors are broken.
- No text overlaps.
- The background is correct.
- Resolution is sufficient.
- The PNG matches the source diagram.

---

# Quality Assurance Rules

A PNG export shall be rejected if:

- It is blurred or pixelated.
- Important labels are unreadable.
- States are cropped.
- Transition lines overlap excessively.
- The diagram does not match the source.
- The filename is incorrect.
- The image contains draft content.
- The export resolution is too low.
- Required UML elements are missing.

---

# Accessibility Considerations

PNG diagrams should:

- Use adequate colour contrast.
- Avoid relying only on colour.
- Use readable font sizes.
- Include meaningful captions in documents.
- Include alternative text in Markdown or web content.
- Preserve clear labels for all transitions.

Example alternative text:

```md
![State lifecycle of a TechmoEDU user account from creation to archival](diagrams/png/01-User-Account-State-Machine.png)
```

---

# Archive Policy

Older PNG versions shall not remain in the active `png/` directory.

Historical versions should be moved to:

```text
archive/
```

Recommended archive filename:

```text
01-User-Account-State-Machine-v1.0.png
```

---

# Related Directories

```text
diagrams/
├── drawio/
├── png/
└── plantuml/

archive/
```

---

# Related Documents

- `README.md`
- `01-State-Machine-List.md`
- `02-State-Machine-Descriptions.md`
- `03-State-Transition-Rules.md`
- `04-State-Machine-Standards.md`
- `archive/README.md`
- `diagrams/README.md`
- `drawio/README.md`
- `plantuml/README.md`

---

# Completion Criteria

The PNG directory is considered complete when:

- All twelve approved State Machine Diagrams have PNG exports.
- Every file follows the naming convention.
- Every PNG matches its Draw.io and PlantUML source.
- All diagrams satisfy resolution and readability requirements.
- No draft or outdated images remain in the active directory.
- All diagram packages pass quality review.

---

# Version History

| Version | Date | Description |
|---|---|---|
| 1.0 | Initial Release | Enterprise PNG Export and Publication Standard |

---

# Approval

Prepared For:

**TechmoEDU Smart Learning Platform**

Software Design Documentation

Enterprise PNG Export and Publication Standard

Approved By:

Software Architecture Team
