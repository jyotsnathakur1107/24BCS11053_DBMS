CREATE TABLE stu (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course_id INT,
    marks INT
);

INSERT INTO stu VALUES
(1, 'Aman', 101, 75),
(2, 'Riya', 101, 35),
(3, 'Karan', 101, 60),
(4, 'Neha', 102, 45),
(5, 'Rahul', 102, 30),
(6, 'Priya', 102, 80);

create materialized view stud_view as
select student_name,marks
from stu
with no data

REFRESH materialized view stud_view;

select * from stud_view




select * from stu_view;