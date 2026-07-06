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
