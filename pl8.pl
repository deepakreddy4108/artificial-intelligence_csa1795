% Facts about different diseases and suggested diets
diet_for_disease(diabetes, 'Low-carb diet').
diet_for_disease(hypertension, 'Low-sodium diet').
diet_for_disease(high_cholesterol, 'Low-fat diet').

% Rules to suggest a diet based on the disease
suggest_diet(Disease, Diet) :-
    diet_for_disease(Disease, Diet).

% Query examples
% To find the suggested diet for a specific disease
% ?- suggest_diet(diabetes, Diet).
% Output: Diet = 'Low-carb diet'.

% ?- suggest_diet(hypertension, Diet).
% Output: Diet = 'Low-sodium diet'.
