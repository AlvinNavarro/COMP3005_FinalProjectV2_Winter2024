INSERT INTO members (email, password, first_name, last_name, birthday, gender) VALUES
('jimmyjones@gmail.com', 'jimmypassword', 'Jimmy', 'Jones', '2003-01-04', 'Male'),
('timmybones@gmail.com', 'passwordtimmy', 'Timmy', 'Bones', '2002-02-5', 'Male'),
('alicemalice@gmail.com', 'alicemalicepassword', 'Alice', 'Malice', '2001-03-6', 'Female');

INSERT INTO trainers (email, password, first_name, last_name, availability_start_time, availability_end_time) VALUES
('dwaynejohnson@gmail.com', 'dwaynepassword', 'Dwayne', 'Johnson', '06:00:00', '20:00:00'),
('philheath@gmail.com', 'philpassword', 'Phil', 'Heath', '06:00:00', '20:00:00'),
('papajohns@gmail.com', 'papapassword', 'Papa', 'Johns', '06:00:00', '20:00:00');

INSERT INTO administrative_staff (email, password, first_name, last_name) VALUES
('bobross@gmail.com', 'bobpassword', 'Bob', 'Ross'),
('rickastley@gmail.com', 'rickpassword', 'Rick', 'Astley');

INSERT INTO room (room_name) VALUES
('Cardio Room C'),
('Weight Room D'),
('Yoga Room A'),
('Swimming Room B');

INSERT INTO fitness_goals (member_id, goal_type, goal_target, achieved) VALUES
(1, 'Weight Loss', 130.0, FALSE),
(2, 'Run Long Distance', 20.0, FALSE),
(3, 'Weight Loss', 110.0, FALSE);

INSERT INTO health_metrics (member_id, metric_type, metric_value, date) VALUES
(1, 'Weight', 155.0, '2024-04-01'),
(2, 'Heart Rate Variability', 99, '2024-04-01'),
(3, 'Weight', 135.0, '2024-04-01');

INSERT INTO training_sessions (trainer_id, member_id, date_time, duration, status, exercise) VALUES
(1, 1, '2024-04-15 08:00:00', 60, 'Scheduled', 'Full Body'),
(2, 2, '2024-04-15 09:00:00', 60, 'Scheduled', 'Cardio'),
(3, 3, '2024-04-15 10:00:00', 60, 'Scheduled', 'Full Body');

INSERT INTO group_classes (class_name, trainer_id, room_id, class_date_time) VALUES
('Running', 2, 1, '2024-04-15 10:00:00'),
('Power Lifting', 1, 2, '2024-04-15 11:00:00'),
('Plyometrics', 3, 3, '2024-04-15 11:00:00');

INSERT INTO equipment (equipment_type, latest_maintenance_date) VALUES
('Bench Press', '2024-01-14'),
('Squat Rack', '2024-01-15'),
('Treadmill', '2024-01-15'),
('Stair Climber', '2024-01-15');

INSERT INTO billing (member_id, bill_date, due_date, amount, status) VALUES
(1, '2024-04-01', '2024-04-30', 69.99, 'Unpaid'),
(2, '2024-04-01', '2024-04-30', 96.99, 'Paid'),
(3, '2024-04-01', '2024-04-30', 69.99, 'Paid');
