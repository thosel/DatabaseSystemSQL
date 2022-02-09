use golf_competition;

-- 1. Det finns en spelare som heter Johan Anderssonsom som är 25år. Han har ett personnummer som identifierar honom. 
insert into players(social_security_number, full_name, age) values('19961023-4965', 'Johan Andersson', 25);

-- 2. Det finns en tävling som heter Big Golf Cup Skövde, som spelades 10/06-2021. 
-- På denna tävling så deltog spelarna Johan Andersson, Nicklas Jansson och Annika Persson.
insert into players(social_security_number, full_name, age) values('19980204-3594', 'Nicklas Jansson', 24);
insert into players(social_security_number, full_name, age) values('20021203-2574', 'Annika Persson', 19);
insert into competitions(competition_name, competition_date) values('Big Golf Cup Skövde', '2021-06-10');

-- 3. Under Big Golf Cup Skövde så regnade det hagel och blåste 10m/s mitt på dagen. 
insert into weather_conditions(weather_condition_type, wind_speed) values('Hagel', 10);
insert into competition_weather_conditions(competition_name, weather_condition_type, competition_weather_condition_time) values('Big Golf Cup Skövde', 'Hagel', '12:00');

-- 4. Johan Andersson har två olika jackor. Den ena är gjord av fleece och den andra är gjord av goretex.
insert into jackets(brand, size, material, player_social_security_number) values('FootJoy', 'XL', 'Fleece', '19961023-4965');
insert into jackets(brand, size, material, player_social_security_number) values('Galvin', 'XL', 'Goretex', '19961023-4965');

-- 5. Nicklas Jansson har en klubba av trä med en konstruktion med hårdhet 10. 
-- Annika Persson har en liknande klubba av trä men med konstruktion med hårdhet 5.
insert into constructions(hardness) values('10 HRC');
insert into constructions(hardness) values('5 HRC');
insert into clubs(club_number, material, player_social_security_number, construction_serial_number) values('#5', 'Wood', '19980204-3594', 1);
insert into clubs(club_number, material, player_social_security_number, construction_serial_number) values('#5', 'Wood', '20021203-2574', 2);

-- Nödvändig data för uppgift 3 i scriptet UseData.
insert into clubs(club_number, material, player_social_security_number, construction_serial_number) values('#5', 'Wood', '19961023-4965', 2);

-- Nödvändig data för uppgift 5 i scriptet UseData.
insert into competition_attendances(competition_name, player_social_security_number) values('Big Golf Cup Skövde', '19980204-3594');
insert into competition_attendances(competition_name, player_social_security_number) values('Big Golf Cup Skövde', '19961023-4965');