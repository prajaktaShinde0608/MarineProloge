wind_speed(mumbai, 25).
wind_speed(goa, 10).
wind_speed(kerala, 18).

wave_height(mumbai, 1.5).
wave_height(goa, 0.8).
wave_height(kerala, 1.2).

visibility(mumbai, poor).
visibility(goa, good).
visibility(kerala, good).

weather_condition(Location, dangerous) :-
    wind_speed(Location, Wind),
    Wind > 30.

weather_condition(Location, dangerous) :-
    wave_height(Location, Wave),
    Wave > 2.5.

weather_condition(Location, risky) :-
    wind_speed(Location, Wind),
    Wind >= 15,
    Wind =< 30.

weather_condition(Location, risky) :-
    wave_height(Location, Wave),
    Wave >= 1.5,
    Wave =< 2.5.

weather_condition(Location, safe) :-
    wind_speed(Location, Wind),
    Wind < 15,
    wave_height(Location, Wave),
    Wave < 1.5,
    visibility(Location, good).