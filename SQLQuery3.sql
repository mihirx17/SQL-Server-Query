-- Insert values into the NewStudent table
INSERT INTO NewStudent (id, First_name, Last_name, Section, Age, Stream)
VALUES
    (1, 'John', 'Doe', 'A', 20, 'Science'),
    (2, 'Jane', 'Smith', 'B', 19, 'Arts'),
    (3, 'Alice', 'Johnson', 'C', 21, 'Commerce'),
    (4, 'Bob', 'Jones', 'A', 18, 'Science'),
    (6, 'David', 'Lee', 'A', 22, 'Science'),
    (7, 'Sarah', 'Miller', 'C', 19, 'Commerce'),
    (8, 'Michael', 'Wilson', 'B', 18, 'Arts'),
    (9, 'Emma', 'Martinez', 'A', 21, 'Science'),
    (10, 'Daniel', 'Taylor', 'C', 20, 'Commerce'),
    (11, 'Olivia', 'Anderson', 'B', 19, 'Arts'),
    (12, 'James', 'Thomas', 'A', 23, 'Science'),
    (13, 'Ava', 'White', 'C', 18, 'Commerce'),
    (14, 'William', 'Harris', 'B', 20, 'Arts'),
    (15, 'Sophia', 'Clark', 'A', 22, 'Science'),
    (16, 'Benjamin', 'Lewis', 'C', 19, 'Commerce'),
    (17, 'Isabella', 'Walker', 'B', 20, 'Arts'),
    (18, 'Mason', 'Green', 'A', 21, 'Science'),
    (19, 'Ethan', 'Evans', 'C', 20, 'Commerce'),
    (20, 'Amelia', 'King', 'B', 18, 'Arts');

-- Display the contents of the NewStudent table
SELECT * FROM NewStudent;

-- Create the OldStudent table with a foreign key constraint
CREATE TABLE OldStudent (
    Old_StudentID INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Section VARCHAR(10),
    Age INT CHECK (Age >= 18),
    Stream VARCHAR(20),
    FOREIGN KEY (Old_StudentID) REFERENCES NewStudent(id)
);

-- Display the contents of the OldStudent table (currently empty)
SELECT * FROM OldStudent;

-- Insert values into the OldStudent table
INSERT INTO OldStudent (First_name, Last_name, Section, Age, Stream, Old_StudentID)
VALUES
    ('Liam', 'Johnson', 'A', 20, 'Science', 5),   
    ('Charlotte', 'Moore', 'B', 19, 'Arts', 12),  
    ('Alexander', 'Garcia', 'C', 21, 'Commerce', 3),  
    ('Abigail', 'Scott', 'A', 18, 'Science', 7),   
    ('Elijah', 'Perez', 'B', 20, 'Arts', 15);    

-- Display the contents of the OldStudent table after insertion
SELECT * FROM OldStudent;
