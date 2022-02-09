use golf_competition;

insert into players(social_security_number, full_name, age) values('19961023-4965', 'Johan Andersson', 25);
insert into players(social_security_number, full_name, age) values('19980204-3594', 'Nicklas Jansson', 24);
insert into players(social_security_number, full_name, age) values('20021203-2574', 'Annika Persson', 19);

insert into competitions(competition_name, competition_date) values('Big Golf Cup Skövde', '2021-06-10');

insert into weather_conditions(weather_condition_type, wind_speed) values('Hagel', 10);

insert into competition_weather_conditions(competition_name, weather_condition_type, competition_weather_condition_time) values('Big Golf Cup Skövde', 'Hagel', '12:00');

insert into jackets(brand, size, material, player_social_security_number) values('FootJoy', 'XL', 'Fleece', '19961023-4965');
insert into jackets(brand, size, material, player_social_security_number) values('Galvin', 'XL', 'Goretex', '19961023-4965');

insert into constructions(serial_number, hardness) values(1, '10 HRC');
insert into constructions(serial_number, hardness) values(2, '5 HRC');

insert into clubs(club_number, material, player_social_security_number, construction_serial_number) values('#5', 'Wood', '19980204-3594', 1);
insert into clubs(club_number, material, player_social_security_number, construction_serial_number) values('#5', 'Wood', '20021203-2574', 2);
insert into clubs(club_number, material, player_social_security_number, construction_serial_number) values('#5', 'Wood', '19961023-4965', 2);

insert into competition_attendances(competition_name, player_social_security_number) values('Big Golf Cup Skövde', '19980204-3594');
insert into competition_attendances(competition_name, player_social_security_number) values('Big Golf Cup Skövde', '19961023-4965');