# Task Manager App

## 📌 Overview
This MySQL-based schema is for a Task Manager App that supports users, projects, tasks, comments, assignments, due dates, progress tracking, and more.

## 📂 Schema Features

### Core Tables:
- **Users:** Stores user data
- **Projects:** Created and owned by users
- **Tasks:** Linked to projects with status and due dates
- **Assignments:** Users can be assigned to tasks
- **Comments:** Commenting system on tasks
- **Timestamps:** All entities track creation and update times

### Bonus Features:
- **Project Roles:** Admin/member roles per project
- **Task Dependencies:** Prevents starting tasks until dependencies are resolved
- **Tags:** Assign multiple tags to tasks
- **Activity Logs:** Audit trail of user actions

## 🔧 How to Run

1. Open MySQL Workbench.
2. Run `schema.sql` to create schema and tables.
3. Run `sample_data.sql` to populate sample data.

## 🔗 Relationships
- Each **Project** belongs to one **User**.
- Each **Task** belongs to a **Project**.
- Tasks can have many **Comments**, **Tags**, and **Assignees**.
- **Project Roles** determine a user’s level in a project.

## ✅ MySQL Version
Compatible with **MySQL 8.0+**
