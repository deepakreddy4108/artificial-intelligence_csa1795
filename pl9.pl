% Facts
on(floor, box).
on(box, bananas).
at(monkey, floor).
has_not(monkey, bananas).

% Rules
move(State1, grasp, State2) :-
    can_grasp(State1),
    change_state(State1, grasp, State2).

move(State1, climb, State2) :-
    can_climb(State1),
    change_state(State1, climb, State2).

move(State1, push, State2) :-
    can_push(State1),
    change_state(State1, push, State2).

% Conditions for each action
can_grasp(state(at(monkey, floor), on(floor, X), Has)) :-
    on(floor, X),
    at(monkey, floor),
    has_not(Has, bananas).

can_climb(state(at(monkey, floor), on(floor, box), Has)) :-
    at(monkey, floor),
    on(floor, box),
    has_not(Has, bananas).

can_push(state(at(monkey, floor), on(X, bananas), Has)) :-
    on(X, bananas),
    at(monkey, floor),
    has_not(Has, bananas).

% State transitions
change_state(state(at(monkey, floor), on(floor, X), Has), grasp, state(at(monkey, floor), on(floor, X), has)) :-
    on(floor, X),
    has_not(Has, bananas).

change_state(state(at(monkey, floor), on(floor, box), Has), climb, state(at(monkey, on(box, floor)), on(floor, box), Has)) :-
    at(monkey, floor),
    on(floor, box),
    has_not(Has, bananas).

change_state(state(at(monkey, floor), on(X, bananas), Has), push, state(at(monkey, floor), on(floor, X), Has)) :-
    on(X, bananas),
    at(monkey, floor),
    has_not(Has, bananas).

% Goal state
goal_state(state(_, _, has)).

% Solve predicate using depth-first search
solve(State, []) :- goal_state(State).
solve(State1, [Move|OtherMoves]) :-
    move(State1, Move, State2),
    solve(State2, OtherMoves).
