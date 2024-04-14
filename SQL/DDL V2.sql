CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birthday DATE NOT NULL,
    gender VARCHAR(255) NOT NULL
);

CREATE TABLE trainers (
    trainer_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
	password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
	availability_start_time TIME NOT NULL,
	availability_end_time TIME NOT NULL
);

CREATE TABLE administrative_staff (
    staff_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
	password VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

CREATE TABLE fitness_goals (
    goal_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    goal_type VARCHAR(255) NOT NULL,
    goal_target DECIMAL(10,2) NOT NULL,
	achieved BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE health_metrics (
    metric_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    metric_type VARCHAR(255) NOT NULL,
    metric_value DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE training_sessions (
    session_id SERIAL PRIMARY KEY,
    trainer_id INT NOT NULL,
    member_id INT NOT NULL,
    date_time TIMESTAMP NOT NULL,
    duration INT NOT NULL,
    status VARCHAR(255) NOT NULL,
	exercise VARCHAR(255) NOT NULL,
    FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE room (
    room_id SERIAL PRIMARY KEY,
    room_name VARCHAR(255) NOT NULL
);

CREATE TABLE group_classes (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(255) NOT NULL,
    trainer_id INT NOT NULL,
    room_id INT NOT NULL,
    class_date_time TIMESTAMP NOT NULL,
    FOREIGN KEY (trainer_id) REFERENCES trainers(trainer_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);

CREATE TABLE equipment (
    equipment_id SERIAL PRIMARY KEY,
    equipment_type VARCHAR(255) NOT NULL,
    latest_maintenance_date DATE NOT NULL
);

CREATE TABLE billing (
    bill_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL,
    bill_date DATE NOT NULL,
    due_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(255) NOT NULL,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);
