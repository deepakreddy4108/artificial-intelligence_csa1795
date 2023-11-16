% Facts about fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(watermelon, green).

% Query to find the color of a fruit
find_color(Fruit, Color) :- fruit_color(Fruit, Color).

% Example queries
% To find the color of a specific fruit
% Query: find_color(apple, Color).
% Output: Color = red

% To find all fruits with a certain color
% Query: find_color(Fruit, yellow).
% Output: Fruit = banana
