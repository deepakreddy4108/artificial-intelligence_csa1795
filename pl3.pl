
teaches(john, math).
teaches(susan, physics).
teaches(michael, literature).

enrolled(jane, math).
enrolled(tom, physics).
enrolled(emily, literature).
enrolled(john, literature).

student_of_subject(Student, Subject) :-
    enrolled(Student, Subject).

teacher_of_subject(Teacher, Subject) :-
    teaches(Teacher, Subject).
