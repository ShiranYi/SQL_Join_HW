-- 2
SELECT c.CourseName, l.FirstName + ' ' + l.LastName AS Lecturer FROM Courses c
LEFT JOIN Lecturers l
ON c.LecturerId = l.Id
ORDER BY c.Id, l.LastName

-- 3 
SELECT c.CourseName, l.FirstName + ' ' + l.LastName AS Lecturer FROM Courses c
JOIN Lecturers l
ON c.LecturerId = l.Id
ORDER BY c.Id, l.LastName

-- 4
SELECT l.FirstName + ' ' + l.LastName AS Lecturer, c.CourseName FROM Lecturers l
LEFT JOIN Courses c
ON c.LecturerId = l.Id

-- 5 
SELECT c.CourseName, l.FirstName + ' ' + l.LastName AS Lecturer FROM Lecturers l
RIGHT JOIN Courses c
ON c.LecturerId = l.Id
WHERE c.LecturerId IS NULL

-- 6
SELECT l.FirstName + ' ' + l.LastName AS Lecturer, c.CourseName FROM Lecturers l
LEFT JOIN Courses C
ON c.LecturerId = l.Id
WHERE c.LecturerId IS NULL

-- 7
SELECT c.CourseName, l.FirstName + ' ' + l.LastName AS Lecturer FROM Courses c
FULL JOIN Lecturers l
ON c.LecturerId =l.Id