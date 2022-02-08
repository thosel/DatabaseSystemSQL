drop database golf_competition;
create database golf_competition;
use golf_competition;

create table players(
	social_security_number char(13),
    full_name varchar(20),
    age tinyint,
    primary key(social_security_number)
)engine=InnoDB;

create table competitions(
	competition_name varchar(20),
    competition_date date,
    primary key(competition_name)
)engine=InnoDB;

create table weather_conditions(
	weather_condition_type varchar(20),
    wind_speed tinyint,
    primary key(weather_condition_type)
)engine=InnoDB;

create table constructions(
	serial_number smallint,
    hardness varchar(10),
    primary key(serial_number)
)engine=InnoDB;

create table jackets(
	brand varchar(20),
    size varchar(10),
    material varchar(20),
    player_social_security_number char(13),
    primary key(player_social_security_number, brand),
    foreign key(player_social_security_number) references players(social_security_number)
)engine=InnoDB;

create table clubs(
	club_number varchar(20),
    material varchar(20),
    player_social_security_number char(13),
    construction_serial_number smallint,
    primary key(player_social_security_number, club_number),
    foreign key(player_social_security_number) references players(social_security_number),
    foreign key(construction_serial_number) references constructions(serial_number)
)engine=InnoDB;

create table competition_attendances(
	competition_name varchar(20),
    player_social_security_number char(13),
    foreign key(competition_name) references competitions(competition_name),
    foreign key(player_social_security_number) references players(social_security_number)
)engine=InnoDB;

create table competition_weather_conditions(
	competition_name varchar(20),
    weather_condition_type varchar(20),
    competition_weather_condition_time time,
    foreign key(competition_name) references competitions(competition_name),
    foreign key(weather_condition_type) references weather_conditions(weather_condition_type)
)engine=InnoDB;
