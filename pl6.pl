can_fly(eagle).
can_fly(albatross).
can_fly(sparrow).
cannot_fly(penguin).
cannot_fly(ostrich).

bird_can_fly(Bird) :-
    can_fly(Bird).

bird_can_fly(Bird) :-
    cannot_fly(Bird).

% Queries
% To check if a particular bird can fly
% Example query: bird_can_fly(eagle).
% Example query: bird_can_fly(penguin).
