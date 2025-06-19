USE task_manager_app;

-- Insert Users
INSERT INTO users (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

-- Insert Project Roles
INSERT INTO project_roles (role_name) VALUES ('admin'), ('member');

-- Insert Projects
INSERT INTO projects (user_id, title, description) VALUES
(1, 'Project Alpha', 'Alpha Project Description'),
(2, 'Project Beta', 'Beta Project Description');

-- Add Project Members
INSERT INTO project_members (user_id, project_id, role_id) VALUES
(1, 1, 1),
(2, 1, 2),
(2, 2, 1);

-- Insert Tasks
INSERT INTO tasks (project_id, title, description, status, due_date, progress) VALUES
(1, 'Design DB Schema', 'Design schema for the app', 'in_progress', '2025-06-25', 50),
(1, 'Write Documentation', 'Prepare the README', 'todo', NULL, 0),
(2, 'Create API Spec', 'Define endpoints for API', 'todo', '2025-06-30', 10);

-- Assign Tasks
INSERT INTO task_assignments (task_id, user_id) VALUES
(1, 1),
(2, 2),
(3, 2);

-- Add Comments
INSERT INTO comments (task_id, user_id, comment) VALUES
(1, 1, 'Started working on schema'),
(1, 2, 'Looks good so far');

-- Add Tags
INSERT INTO tags (name) VALUES ('backend'), ('urgent');

-- Tag Tasks
INSERT INTO task_tags (task_id, tag_id) VALUES
(1, 1),
(2, 2);

-- Add Task Dependencies
INSERT INTO task_dependencies (task_id, depends_on_task_id) VALUES
(2, 1); -- Task 2 depends on Task 1

-- Activity Logs
INSERT INTO activity_logs (user_id, action, target_table, target_id) VALUES
(1, 'Created task', 'tasks', 1),
(2, 'Commented on task', 'comments', 1);
