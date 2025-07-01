Tables -

Students:
Primary Key(Student_Id)
Student_Name
Batch_Id(Foreign Key to Batches.Batch_Id)
Daily_Streak

Batches:
Primary_Key(Batch_Id)
Batch_Name

Lectures:
Lecture_Topic_Id(Foreign Key to Lecture_Topic.Lecture_Topic_Id)
Lecture_Assignment_Id(Foreign Key to Lecture_Assignment.Lecture_Assignment_Id)
Lecture_Homework_Id(Foreign Key to Lecture_Homework.Lecture_Homework_Id)
Instructor_Id(Foreign Key to Instructor.Instructor_Id)
Pre_Lecture_Content_Id(Foreign Key to Pre_Lecture_Content.Pre_Lecture_Content_Id)
Lecture_Notes_Id(Foreign Key to Lecture_Notes.Lecture_Notes_Id)
Primary Key(Lecture_Id)
Lecture_Date
Class_Topic_Timeline_Id(Foreign Key to Class_Topic_Timeline.Class_Topic_Timeline_Id)
Ratings (Single Entry-To be expanded later)
Feedback (Single Entry-To be expanded later)

Lecture_Topic:
Primary Key(Lecture_Topic_Id)
Lecture_Topic_Name

Lecture_Assignment:
Primary Key(Lecture_Assignment_Id)
Lecture_Assignment
Class_Topic_Timeline_Id(Foreign Key to Class_Topic_Timeline.Class_Topic_Timeline_Id)

Lecture_Homework:
Primary Key(Lecture_Homework_Id)
Lecture_Homework
Class_Topic_Timeline_Id(Foreign Key to Class_Topic_Timeline.Class_Topic_Timeline_Id)

Problem:
Status (SOLVED/UN_SOLVED)
Primary Key(Problem_Id)
Problem

Instructor:
Primary Key(Instructor_Id)
Instructor_Name

Pre_Lecture_Content:
Primary Key(Pre_Lecture_Content_Id)
Pre_Lecture_Content

Lecture_Notes:
Primary Key(Lecture_Notes_Id)
Lecture_Notes

Class_Topic_Timeline:
Primary Key(Class_Topic_Timeline_Id)
Problem_Solving_Percentage
Attendance_Percentage
Student_Id(Foreign Key to Students.Student_Id)
Batch_Id(Foreign Key to Batches.Batch_Id)

Lecture_Assignment_Problems:
Lecture_Assignment_Id(Foreign Key to Lecture_Assignment.Lecture_Assignment_Id)
Problem_Id(Foreign Key to Problem.Problem_Id)
Primary Key(Lecture_Assignment_Id, Problem_Id)

Lecture_Homework_Problems:
Lecture_Homework_Id(Foreign Key to Lecture_Homework.Lecture_Homework_Id)
Problem_Id(Foreign Key to Problem.Problem_Id)
Primary Key(Lecture_Homework_Id, Problem_Id)

Instructor_Lectures:
Instructor_Id(Foreign Key to Instructor.Instructor_Id)
Lecture_Id(Foreign Key to Lectures.Lecture_Id)
Primary Key(Instructor_Id, Lecture_Id)


Foreign Keys -
Students(Batch_Id) refers Batches(Batch_Id)
Lectures(Lecture_Topic_Id) refers Lecture_Topic(Lecture_Topic_Id)
Lectures(Lecture_Assignment_Id) refers Lecture_Assignment(Lecture_Assignment_Id)
Lectures(Lecture_Homework_Id) refers Lecture_Homework(Lecture_Homework_Id)
Lectures(Instructor_Id) refers Instructor(Instructor_Id)
Lectures(Pre_Lecture_Content_Id) refers Pre_Lecture_Content(Pre_Lecture_Content_Id)
Lectures(Lecture_Notes_Id) refers Lecture_Notes(Lecture_Notes_Id)
Lectures(Class_Topic_Timeline_Id) refers Class_Topic_Timeline(Class_Topic_Timeline_Id)
Lecture_Assignment(Class_Topic_Timeline_Id) refers Class_Topic_Timeline(Class_Topic_Timeline_Id)
Lecture_Homework(Class_Topic_Timeline_Id) refers Class_Topic_Timeline(Class_Topic_Timeline_Id)
Class_Topic_Timeline(Student_Id) refers Students(Student_Id)
Class_Topic_Timeline(Batch_Id) refers Batches(Batch_Id)
Lecture_Assignment_Problems(Lecture_Assignment_Id) refers Lecture_Assignment(Lecture_Assignment_Id)
Lecture_Assignment_Problems(Problem_Id) refers Problem(Problem_Id)
Lecture_Homework_Problems(Lecture_Homework_Id) refers Lecture_Homework(Lecture_Homework_Id)
Lecture_Homework_Problems(Problem_Id) refers Problem(Problem_Id)
Instructor_Lectures(Instructor_Id) refers Instructor(Instructor_Id)
Instructor_Lectures(Lecture_Id) refers Lectures(Lecture_Id)
Cardinality of Relations -
Between Students and Batches -> m:1 (students must have a batch assigned)
Between Lecture_Assignment and Problems -> m:m (Problem must have lecture_assignment/lecture_homework assigned)
Between Lecture_Homework and Problems -> m:m (Problem must have lecture_assignment/lecture_homework assigned)
Between Class_Topic_Timeline and Lecture_Assignment -> 1:m (Lecture_Assignment must have Class_Topic_Timeline)
Between Class_Topic_Timeline and Lecture_Homework -> 1:m (Lecture_Homework must have Class_Topic_Timeline)
Between Instructor and Lectures -> m:m (Lecture must have at least one instructor)






