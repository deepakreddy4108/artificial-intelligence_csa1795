parent(john, mike).
parent(john, sara).
parent(mike, tom).
parent(mike, jen).
parent(sara, anne).
parent(sara, luke).

father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
child(X, Y) :- parent(Y, X).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
grandmother(X, Z) :- grandparent(X, Z), female(X).
grandfather(X, Z) :- grandparent(X, Z), male(X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

male(john).
male(mike).
male(tom).
male(luke).
female(sara).
female(anne).
female(jen).

% Queries to find relationships
% To find who is a parent of Anne
% ?- parent(X, anne).

% To find siblings of Luke
% ?- sibling(luke, X).

% To find all grandchildren of John
% ?- grandchild(X, john).
