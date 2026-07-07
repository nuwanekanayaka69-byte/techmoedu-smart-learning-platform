# 02 - Entity Relationships

---

# Introduction

This document describes the logical relationships between all entities in the TechmoEDU Smart Learning Platform.

---

# Relationships

| Parent Entity | Relationship | Child Entity |
|---------------|-------------|--------------|
| Institute | 1 : N | Teachers |
| Institute | 1 : N | Students |
| Institute | 1 : N | Courses |
| Teacher | 1 : N | Courses |
| Course | 1 : N | Classes |
| Student | M : N | Courses (via Enrollments) |
| Student | 1 : N | Attendance |
| Student | 1 : N | Marks |
| Student | 1 : N | Fees |
| Fee | 1 : N | Payments |
| Course | 1 : N | Examinations |
| Examination | 1 : N | Marks |

---

# Relationship Types

## One-to-One (1:1)

Example:

User → Student Profile

---

## One-to-Many (1:N)

Example:

Teacher → Courses

---

## Many-to-Many (M:N)

Example:

Students ↔ Courses

Resolved using:

Enrollment Collection

---

# Relationship Design Principles

- Avoid data duplication.
- Maintain data consistency.
- Improve scalability.
- Support cloud synchronization.

---

**Version:** 1.0

Diagram Sketch v1
                         +----------------+
                         |     USERS      |
                         | uid            |
                         | email          |
                         | role           |
                         | status         |
                         +-------+--------+
                                 |
              +------------------+------------------+
              |                  |                  |
              v                  v                  v
      +---------------+   +---------------+   +---------------+
      | SUPER ADMINS  |   | INSTITUTE     |   |   STUDENTS    |
      | userId        |   | ADMINS        |   | userId        |
      +---------------+   | userId        |   | parentId      |
                          | instituteId   |   | instituteId   |
                          +-------+-------+   +-------+-------+
                                  |                   |
                                  |                   |
                                  v                   v
                         +----------------+    +---------------+
                         |   INSTITUTES   |    |    PARENTS    |
                         | instituteId    |    | userId        |
                         | name           |    +-------+-------+
                         +-------+--------+            |
                                 |                     |
          +----------------------+---------------------+
          |                      |                     |
          v                      v                     v
 +----------------+      +---------------+      +---------------+
 |    TEACHERS    |      |    COURSES    |      | ENROLLMENTS   |
 | userId         |      | instituteId   |      | studentId     |
 | instituteId    |      | teacherId     |      | courseId      |
 +-------+--------+      +-------+-------+      +-------+-------+
         |                       |                      |
         |                       v                      |
         |              +----------------+              |
         |              |    CLASSES     |              |
         |              | courseId       |              |
         |              | teacherId      |              |
         |              +-------+--------+              |
         |                      |                       |
         |                      v                       |
         |              +----------------+              |
         |              |  ATTENDANCE    |<-------------+
         |              | studentId      |
         |              | classId        |
         |              +----------------+

                  +----------------+
                  | EXAMINATIONS   |
                  | courseId       |
                  +-------+--------+
                          |
                          v
                  +----------------+
                  |     MARKS      |
                  | examId         |
                  | studentId      |
                  +----------------+

 +---------------+        +---------------+
 |     FEES      |------->|   PAYMENTS    |
 | studentId     |        | feeId         |
 | courseId      |        | studentId     |
 +---------------+        +---------------+

 +---------------+   +---------------+   +---------------+
 | ANNOUNCEMENTS |   |   RESOURCES   |   |    GALLERY    |
 | audience      |   | courseId      |   | imageURL      |
 | createdBy     |   | uploadedBy    |   | uploadedBy    |
 +---------------+   +---------------+   +---------------+

 +---------------+   +---------------+
 |   SETTINGS    |   |  AUDIT LOGS   |
 | systemName    |   | userId        |
 +---------------+   +---------------+
Relationship Summary

 | Parent Entity | Relationship | Child Entity |
|---|---|---|
| User | 1:1 | Student / Teacher / Parent / Admin Profile |
| Institute | 1:N | Institute Admins |
| Institute | 1:N | Teachers |
| Institute | 1:N | Students |
| Institute | 1:N | Courses |
| Teacher | 1:N | Courses |
| Course | 1:N | Classes |
| Student | M:N | Courses via Enrollments |
| Student | 1:N | Attendance |
| Class | 1:N | Attendance |
| Course | 1:N | Examinations |
| Examination | 1:N | Marks |
| Student | 1:N | Marks |
| Student | 1:N | Fees |
| Fee | 1:N | Payments |

