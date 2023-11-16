
planet(mercury, rocky, small, closest_to_sun).
planet(venus, rocky, medium, second_closest_to_sun).
planet(earth, rocky, medium, third_closest_to_sun).
planet(mars, rocky, small, fourth_closest_to_sun).
planet(jupiter, gas_giant, large, fifth_closest_to_sun).
planet(saturn, gas_giant, large, sixth_closest_to_sun).
planet(uranus, ice_giant, medium, seventh_closest_to_sun).
planet(neptune, ice_giant, medium, eighth_closest_to_sun).

orbit_order(1, mercury).
orbit_order(2, venus).
orbit_order(3, earth).
orbit_order(4, mars).
orbit_order(5, jupiter).
orbit_order(6, saturn).
orbit_order(7, uranus).
orbit_order(8, neptune).

size(Planet, Size) :- planet(Planet, _, Size, _).

type(Planet, Type) :- planet(Planet, Type, _, _).

closest_to_sun(Planet) :- planet(Planet, _, _, closest_to_sun).
