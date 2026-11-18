CREATE PROCEDURE All_Tables_Records
AS
SELECT * FROM person;
SELECT * FROM facility;
SELECT * FROM coach;
SELECT * FROM stadium;
SELECT * FROM training_center;
SELECT * FROM medical_center;
SELECT * FROM football_club;
SELECT * FROM football_team;
SELECT * FROM medical_team;
SELECT * FROM trainers;
SELECT * FROM doctor;
SELECT * FROM nurse;
SELECT * FROM match;
SELECT * FROM person_address;
SELECT * FROM facility_equipment;
SELECT * FROM trainers_equipment;
SELECT * FROM fans;
SELECT * FROM players;
SELECT * FROM referee;
SELECT * FROM train;
SELECT * FROM plays_in;
SELECT * FROM arbitration;
SELECT * FROM players_position;
SELECT * FROM referee_type;

GO

Exec All_Tables_Records;

CREATE PROCEDURE GetAllplayers
AS
SELECT * FROM players;
GO

EXEC GetAllplayers;

CREATE FUNCTION GetPlayers (@ID int)
RETURNS TABLE 
AS
RETURN ( 
           SELECT ALL* 
		   FROM Players 
		   WHERE ID = @ID 
		  );
select * from GetPlayers(1);
SELECT * FROM coach WHERE salary < 5000;
SELECT * FROM players WHERE position = 'Forward';
SELECT * FROM match WHERE date > '2023-01-01';
SELECT AVG(salary) AS average_salary FROM coach;
SELECT COUNT(*) AS total_facilities FROM facility;
SELECT MAX(capacity) AS max_capacity FROM stadium;
SELECT * FROM coach WHERE salary BETWEEN 2000 AND 60000;
SELECT UPPER(first_name) AS first_name_upper, UPPER(last_name) AS last_name_upper FROM person;
SELECT * FROM person ORDER BY last_name ASC;
SELECT * FROM stadium ORDER BY capacity DESC;
SELECT * FROM coach ORDER BY salary DESC;
SELECT AVG(salary) AS average_salary FROM players GROUP BY position;
SELECT * FROM football_club INNER JOIN players ON players.ID = football_club.ID;
SELECT * FROM medical_team FULL OUTER JOIN doctor ON doctor.ID = medical_team.ID;



INSERT INTO person (ID, first_name, middle_name, last_name, birthdate)
VALUES
(1, 'John', 'A', 'Doe', '1980-01-01'),
(2, 'Jane', 'B', 'Smith', '1990-02-02'),
(3, 'Michael', 'C', 'Johnson', '1985-03-03'),
(4, 'Emily', 'D', 'Davis', '1995-04-04'),
(5, 'David', 'E', 'Brown', '1970-05-05');



INSERT INTO facility (ID, name)
VALUES
(1, 'Main Facility'),
(2, 'Training Facility'),
(3, 'Auxiliary Facility'),
(4, 'Practice Field'),
(5, 'Fitness Center');


INSERT INTO coach (ID, salary)
VALUES
(1, 60000.00),
(2, 45000.00),
(3, 55000.00),
(4, 48000.00),
(5, 52000.00);
INSERT INTO stadium (ID, schedule, rent, capacity)

VALUES
(1, '2023-06-01 14:00:00', 5000.00, 20000),
(2, '2023-06-02 16:00:00', 3000.00, 15000),
(3, '2023-06-03 12:00:00', 4000.00, 18000),
(4, '2023-06-04 15:00:00', 6000.00, 22000),
(5, '2023-06-05 18:00:00', 4500.00, 19000);


INSERT INTO training_center (ID)
VALUES
(2),
(3),
(4),
(5);


INSERT INTO medical_center (ID) 
VALUES
(1),
(2),
(3),
(4),
(5);


INSERT INTO football_club (ID, facility_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO football_team (ID, division, tshirt_colour, club_id)
VALUES
(1, 1, 'Red', 1),
(2, 2, 'Blue', 2),
(3, 1, 'Green', 3),
(4, 2, 'Yellow', 4),
(5, 1, 'White', 5);

INSERT INTO medical_team (ID, club_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);


INSERT INTO trainers (ID, club_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3);


INSERT INTO doctor (ID, medical_team_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3);


INSERT INTO nurse (ID, medical_team_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3);


INSERT INTO match (ID, time, date, stadium_id)
VALUES
(1, '2023-06-01 14:00:00', '2023-06-01', 1),
(2, '2023-06-02 16:00:00', '2023-06-02', 2),
(3, '2023-06-03 18:00:00', '2023-06-03', 3),
(4, '2023-06-04 20:00:00', '2023-06-04', 4),
(5, '2023-06-05 12:00:00', '2023-06-05', 5);

INSERT INTO person_address (address, person_id)
VALUES
('123 Main St', 1),
('456 Oak St', 2),
('789 Pine St', 3),
('101 Elm St', 4),
('202 Maple St', 5);


INSERT INTO facility_equipment (equipment, facility_id)
VALUES
('Treadmill', 1),
('Weights', 2),
('Bicycle', 3),
('Elliptical', 4),
('Rowing Machine', 5);


INSERT INTO trainers_equipment (equipment, trainer_id)
VALUES
('Stopwatch', 1),
('Whistle', 1),
('Clipboard', 2),
('Cones', 3),
('Resistance Bands', 4);


INSERT INTO fans (ID, chanting, tshirt_colour, person_id, stadium_id)
VALUES
(1, 'Go Team!', 'Red', 1, 1),
(2, 'Win Win!', 'Blue', 2, 2),
(3, 'Cheer Cheer!', 'Green', 3, 1),
(4, 'Yell Yell!', 'Yellow', 4, 2),
(5, 'Support Support!', 'White', 5, 1);