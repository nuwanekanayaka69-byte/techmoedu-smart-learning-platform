# 03 - Firestore Collections

---

# Introduction

This document defines the Firestore collection structure for the TechmoEDU Smart Learning Platform.

---

# users

Purpose:

Stores authentication information.

Fields

- uid
- email
- role
- status
- createdAt
- lastLogin

---

# students

Fields

- studentId
- fullName
- grade
- school
- parentId
- instituteId
- userId

---

# teachers

Fields

- teacherId
- fullName
- qualification
- instituteId
- userId

---

# institutes

Fields

- instituteId
- instituteName
- address
- phone

---

# courses

Fields

- courseId
- courseName
- monthlyFee
- teacherId
- instituteId

---

# classes

Fields

- classId
- courseId
- day
- startTime
- endTime

---

# enrollments

Fields

- enrollmentId
- studentId
- courseId
- enrolledDate

---

# attendance

Fields

- attendanceId
- studentId
- classId
- attendanceDate
- status

---

# examinations

Fields

- examId
- courseId
- title
- totalMarks
- examDate

---

# marks

Fields

- markId
- examId
- studentId
- obtainedMarks
- grade

---

# fees

Fields

- feeId
- studentId
- amount
- month
- status

---

# payments

Fields

- paymentId
- feeId
- amount
- paymentMethod
- paymentDate

---

# announcements

Fields

- announcementId
- title
- description
- audience

---

# resources

Fields

- resourceId
- title
- fileURL
- courseId

---

# gallery

Fields

- imageId
- imageURL
- title

---

# settings

Fields

- systemName
- logo
- maintenanceMode

---

# audit_logs

Fields

- logId
- userId
- action
- timestamp

---

**Version:** 1.0
