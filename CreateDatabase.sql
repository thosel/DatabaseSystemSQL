drop database if exists golf_competition;
create database golf_competition;
use golf_competition;

create table players(
	social_security_number char(13) not null unique,
    full_name varchar(20) not null,
    age tinyint not null,
    primary key(social_security_number)
)engine=InnoDB;

create table competitions(
	competition_name varchar(20) not null,
    competition_date date not null,
    primary key(competition_name)
)engine=InnoDB;

create table weather_conditions(
	weather_condition_type varchar(20) not null,
    wind_speed tinyint,
    primary key(weather_condition_type)
)engine=InnoDB;

create table constructions(
	serial_number smallint not null unique auto_increment,
    hardness varchar(10) not null,
    primary key (serial_number)
)engine=InnoDB;

create table jackets(
	brand varchar(20) not null,
    size varchar(10),
    material varchar(20),
    player_social_security_number char(13) not null,
    primary key(player_social_security_number, brand),
    foreign key(player_social_security_number) references players(social_security_number)
)engine=InnoDB;

create table clubs(
	club_number varchar(20) not null,
    material varchar(20) not null,
    player_social_security_number char(13) not null,
    construction_serial_number smallint not null,
    primary key(player_social_security_number, club_number),
    foreign key(player_social_security_number) references players(social_security_number),
    foreign key(construction_serial_number) references constructions(serial_number)
)engine=InnoDB;

create table competition_attendances(
	competition_name varchar(20) not null,
    player_social_security_number char(13) not null,
    foreign key(competition_name) references competitions(competition_name),
    foreign key(player_social_security_number) references players(social_security_number)
)engine=InnoDB;

create table competition_weather_conditions(
	weather_condition_type varchar(20) not null,
	competition_name varchar(20) not null,
    competition_weather_condition_time time not null,
    foreign key(competition_name) references competitions(competition_name),
    foreign key(weather_condition_type) references weather_conditions(weather_condition_type)
)engine=InnoDB;