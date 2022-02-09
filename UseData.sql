use golf_competition;

-- 1. Hämta ålder för spelaren Johan Andersson.
select age from players where full_name = 'Johan Andersson';

-- 2. Hämta datum för tävlingen Big Golf Cup Skövde.
select competition_date from competitions where competition_name = 'Big Golf Cup Skövde';

-- 3. Hämta materialet för Johan Anderssons klubba.
select material from clubs where player_social_security_number = (select social_security_number from players where full_name = 'Johan Andersson');

-- 4. Hämta alla jackor som tillhör Johan Andersson.
select * from jackets where player_social_security_number = (
	select social_security_number from players where full_name = 'Johan Andersson'
);

-- 5. Hämta alla spelare som deltog i Big Golf Cup Skövde.
select * from players where social_security_number in (
	select player_social_security_number from competition_attendances where competition_name = 'Big Golf Cup Skövde'
);

-- 6. Hämta vindstyrkorna för Big Golf Cup Skövde.
select wind_speed from weather_conditions where weather_condition_type in (
	select weather_condition_type from competition_weather_conditions where competition_name = 'Big Golf Cup Skövde'
);

-- 7. Hämta alla spelare som är under 30 år.
select * from players where age < 30;

-- 8. Ta bort Johan Anderssons jackor.
delete from jackets where player_social_security_number = (
	select social_security_number from players where full_name = 'Johan Andersson'
);

-- 9. Ta bort Nicklas Jansson.
delete from jackets where player_social_security_number = (
	select social_security_number from players where full_name = 'Nicklas Jansson'
);
delete from clubs where player_social_security_number = (
	select social_security_number from players where full_name = 'Nicklas Jansson'
);
delete from competition_attendances where player_social_security_number = (
	select social_security_number from players where full_name = 'Nicklas Jansson'
);
delete from players where full_name = 'Nicklas Jansson' limit 1;

-- 10. Hämta medelåldern för alla spelare.
select avg(age) as average_age from players;