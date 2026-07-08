# 02 - Activity Descriptions
| Item | Value |
|------|--------|
| Activity ID | AD-001 |
| Activity Name | Student Login Activity |
| Priority | High |
| Complexity | Low |
| Estimated Duration | 5 Seconds |
> **Chapter 08 – Software Design**
>
> ## Business Rules

BR-001

Only active users are allowed to log in.

BR-002

Only authenticated users may access dashboards.

BR-003

Role-based permissions must be applied after successful login.
## Related Services

- Firebase Authentication
- Cloud Firestore
- Cloud Functions
## Future Improvements

- Multi-factor Authentication

- Google Login

- Biometric Login

- Session Timeout

> **Section:** Activity Diagram

---

# Document Information

| Item | Details |
|------|---------|
| Document | Activity Descriptions |
| Project | TechmoEDU Smart Learning Platform |
| Version | 1.0 |
| Status | Draft |
| Author | Nuwan S. Ekanayaka |

---

# Introduction

This document provides detailed specifications for each UML Activity Diagram used in the TechmoEDU Smart Learning Platform.

Each activity represents a business workflow within the system and defines how users and the system interact to complete a specific process.

The descriptions provided in this document serve as the foundation for:

- UML Activity Diagrams
- System Design
- Database Operations
- Backend Logic
- Frontend Workflows
- Testing Scenarios

---

# AD-001 Student Login Activity

## Objective

Authenticate a registered user and provide secure access according to the assigned role.

## Primary Actor

- Super Administrator
- Institute Administrator
- Teacher
- Student
- Parent

## Preconditions

- User account exists.
- User account is active.
- Internet connection is available.
- Firebase Authentication service is online.

## Main Workflow

1. User opens Login page.
2. User enters Email.
3. User enters Password.
4. User clicks Login.
5. System validates input.
6. Firebase Authentication verifies credentials.
7. User role is identified.
8. Dashboard is loaded.
9. Login activity is logged.

## Alternative Workflow

- User selects Forgot Password.
- Password reset email is sent.

## Exception Flow

- Invalid email
- Incorrect password
- Disabled account
- Network failure

## Postconditions

- User session created.
- Dashboard displayed.
- User permissions loaded.

## Related Activity Diagram

01-Student-Login-Activity

## Related Use Case

UC-001 Login

---

# AD-002 Student Registration Activity

## Objective

Register a new student into the platform.

## Primary Actor

Institute Administrator

## Preconditions

- Administrator is authenticated.
- Institute exists.

## Main Workflow

1. Open Student Management.
2. Click Add Student.
3. Enter student details.
4. Validate information.
5. Generate Student ID.
6. Create Firebase Authentication account.
7. Save student profile.
8. Confirmation displayed.

## Alternative Workflow

- Parent account linked immediately.

## Exception Flow

- Duplicate email.
- Missing required fields.

## Postconditions

- Student account created.
- Student profile stored.

## Related Activity Diagram

02-Student-Registration-Activity

## Related Use Case

UC-005 Register Student

---

# AD-003 Course Enrollment Activity

## Objective

Enroll a student into one or more courses.

## Primary Actor

Institute Administrator

## Preconditions

- Student exists.
- Course exists.

## Main Workflow

1. Search student.
2. Select course.
3. Check enrollment limit.
4. Confirm enrollment.
5. Update database.
6. Notify student.

## Alternative Workflow

- Enroll into multiple courses.

## Exception Flow

- Course full.
- Student already enrolled.

## Postconditions

- Enrollment created.

## Related Activity Diagram

03-Course-Enrollment-Activity

## Related Use Case

UC-010 Course Enrollment

---

# AD-004 Attendance Marking Activity

## Objective

Record student attendance.

## Primary Actor

Teacher

## Preconditions

- Teacher assigned to class.

## Main Workflow

1. Open class.
2. Open attendance.
3. Select date.
4. Mark attendance.
5. Save.
6. System updates attendance records.

## Alternative Workflow

- Edit attendance before locking.

## Exception Flow

- Duplicate attendance.
- Save failure.

## Postconditions

- Attendance updated.

## Related Activity Diagram

04-Attendance-Marking-Activity

## Related Use Case

UC-020 Attendance Management

---

# AD-005 Marks Recording Activity

## Objective

Record examination marks.

## Primary Actor

Teacher

## Preconditions

- Assessment created.

## Main Workflow

1. Select class.
2. Select exam.
3. Enter marks.
4. Validate.
5. Calculate totals.
6. Save.

## Alternative Workflow

- Bulk import marks.

## Exception Flow

- Invalid marks.

## Postconditions

- Results updated.

## Related Activity Diagram

05-Marks-Recording-Activity

## Related Use Case

UC-025 Examination Management

---

# AD-006 Fee Payment Activity

## Objective

Manage student fee payments.

## Primary Actor

Institute Administrator

## Preconditions

- Student enrolled.

## Main Workflow

1. Search student.
2. View balance.
3. Record payment.
4. Generate receipt.
5. Update balance.

## Alternative Workflow

- Partial payment.

## Exception Flow

- Invalid payment.

## Postconditions

- Payment history updated.

## Related Activity Diagram

06-Fee-Payment-Activity

## Related Use Case

UC-030 Fee Management

---

# AD-007 Resource Upload Activity

## Objective

Upload learning materials.

## Primary Actor

Teacher

## Preconditions

- Teacher logged in.

## Main Workflow

1. Select course.
2. Upload file.
3. Validate.
4. Save to Firebase Storage.
5. Update database.

## Alternative Workflow

- Upload multiple resources.

## Exception Flow

- File too large.
- Unsupported format.

## Postconditions

- Resource published.

## Related Activity Diagram

07-Resource-Upload-Activity

## Related Use Case

UC-040 Learning Resources

---

# AD-008 Announcement Publishing Activity

## Objective

Publish announcements.

## Primary Actor

Institute Administrator / Teacher

## Preconditions

- Logged in.

## Main Workflow

1. Create announcement.
2. Select recipients.
3. Publish.
4. Notify users.

## Alternative Workflow

- Schedule announcement.

## Exception Flow

- Missing content.

## Postconditions

- Announcement available.

## Related Activity Diagram

08-Announcement-Publishing-Activity

## Related Use Case

UC-045 Announcement Management

---

# AD-009 Parent Student Linking Activity

## Objective

Link parents with students.

## Primary Actor

Institute Administrator

## Preconditions

- Parent exists.
- Student exists.

## Main Workflow

1. Search parent.
2. Search student.
3. Link accounts.
4. Save.

## Alternative Workflow

- Link multiple children.

## Exception Flow

- Invalid parent.

## Postconditions

- Parent can access student.

## Related Activity Diagram

09-Parent-Student-Linking-Activity

## Related Use Case

UC-050 Parent Management

---

# AD-010 Teacher Assignment Activity

## Objective

Assign teachers to courses.

## Primary Actor

Institute Administrator

## Preconditions

- Teacher exists.
- Course exists.

## Main Workflow

1. Select teacher.
2. Select course.
3. Assign.
4. Save.

## Alternative Workflow

- Multiple courses.

## Exception Flow

- Duplicate assignment.

## Postconditions

- Teacher assignment updated.

## Related Activity Diagram

10-Teacher-Assignment-Activity

## Related Use Case

UC-055 Teacher Management

---

# AD-011 Report Generation Activity

## Objective

Generate academic reports.

## Primary Actor

Institute Administrator / Teacher

## Preconditions

- Required data available.

## Main Workflow

1. Select report.
2. Apply filters.
3. Generate.
4. Preview.
5. Export PDF.

## Alternative Workflow

- Export Excel.

## Exception Flow

- No data.

## Postconditions

- Report generated.

## Related Activity Diagram

11-Report-Generation-Activity

## Related Use Case

UC-060 Reporting

---

# AD-012 User Management Activity

## Objective

Manage platform users and permissions.

## Primary Actor

Super Administrator

## Preconditions

- Super Admin logged in.

## Main Workflow

1. View users.
2. Create/Edit/Delete user.
3. Assign role.
4. Save.

## Alternative Workflow

- Disable account.

## Exception Flow

- Duplicate account.
- Permission denied.

## Postconditions

- User records updated.

## Related Activity Diagram

12-User-Management-Activity

## Related Use Case

UC-070 User Management

---

# Revision History

| Version | Date | Author | Description |
|----------|------------|--------------------|---------------------------|
| 1.0 | 2026-07 | Nuwan S. Ekanayaka | Initial Activity Descriptions |

---

# Review Status

| Reviewer | Status |
|------------|-----------|
| System Analyst | Approved |
| Software Architect | Approved |
| Project Supervisor | Pending |

---

# Related Documents

- 01-Activity-List.md
- 01-Use-Case-Diagram
- Database Design
- System Architecture
- UI/UX Design
