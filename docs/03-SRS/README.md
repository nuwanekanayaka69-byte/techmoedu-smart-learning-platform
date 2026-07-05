# Chapter 03 – Specific Requirements

## 3.1 Functional Requirements

The system shall provide the following functional capabilities:

### 3.1.1 User Authentication
- The system shall allow users to register using email and password.
- The system shall allow users to log in securely.
- The system shall support role-based access (Admin, Teacher, Student, Parent).
- The system shall allow password reset functionality.

### 3.1.2 Student Management
- The system shall allow administrators and teachers to add new students.
- The system shall allow updating student details.
- The system shall allow deleting student records.
- The system shall display student profiles.

### 3.1.3 Teacher Management
- The system shall allow admin to manage teacher profiles.
- The system shall assign classes to teachers.

### 3.1.4 Attendance Management
- The system shall allow teachers to mark student attendance.
- The system shall generate attendance reports.
- The system shall display attendance history.

### 3.1.5 Examination & Marks Management
- The system shall allow teachers to enter exam marks.
- The system shall calculate total marks and grades.
- The system shall display results to students and parents.

### 3.1.6 Fee Management
- The system shall track student payments.
- The system shall generate payment status reports.

### 3.1.7 Learning Materials
- The system shall allow teachers to upload learning materials.
- The system shall allow students to download materials.

---

## 3.2 Non-Functional Requirements

### 3.2.1 Performance
- System shall respond within 2–3 seconds.
- System shall support multiple users simultaneously.

### 3.2.2 Security
- All user data shall be encrypted.
- Authentication shall be handled using Firebase Authentication.

### 3.2.3 Scalability
- System shall support future expansion of users and features.

### 3.2.4 Usability
- System shall have a simple and user-friendly UI.
- System shall be responsive for mobile and desktop.

---

## 3.3 Use Case Requirements

### Actor: Admin
- Manage users
- Manage system settings
- View reports

### Actor: Teacher
- Mark attendance
- Enter marks
- Upload materials

### Actor: Student
- View marks
- Download materials
- Check attendance

### Actor: Parent
- View student progress
- View attendance and results

---

## 3.4 Data Requirements

The system shall maintain the following data entities:

- Users (Admin, Teacher, Student, Parent)
- Students
- Teachers
- Classes
- Attendance Records
- Exam Results
- Payments
- Learning Materials

---

## End of Chapter 03
