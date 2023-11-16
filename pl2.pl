
dob(john, date(1990, 5, 15)).
dob(lisa, date(1985, 9, 20)).
dob(mike, date(1992, 12, 8)).
dob(sarah, date(1988, 3, 10)).
dob(alex, date(1995, 7, 25)).

dateOfBirth(Person, Date) :-
    dob(Person, Date).

bornInYear(Year, Person) :-
    dob(Person, date(Year, _, _)).

bornOn(Month, Day, Person) :-
    dob(Person, date(_, Month, Day)).
