use golf_competition;

select age from players where full_name = 'Johan Andersson';
select competition_date from competitions where competition_name = 'Big Golf Cup Skövde';
select material from clubs where player_social_security_number = (select social_security_number from players where full_name = 'Johan Andersson');
select * from jackets where player_social_security_number = (
	select social_security_number from players where full_name = 'Johan Andersson'
);
select * from players where social_security_number in (
	select player_social_security_number from competition_attendances where competition_name = 'Big Golf Cup Skövde'
);
select wind_speed from weather_conditions where weather_condition_type in (
	select weather_condition_type from competition_weather_conditions where competition_name = 'Big Golf Cup Skövde'
);
select * from players where age < 30;
delete from jackets where player_social_security_number = (
	select social_security_number from players where full_name = 'Johan Andersson'
);


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

select avg(age) as average_age from players;