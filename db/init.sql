CREATE DATABASE IF NOT EXISTS `buecherverwaltung` DEFAULT CHARACTER SET latin1 COLLATE latin1_german1_ci;
use buecherverwaltung;

create table autoren (
    autorid     int unsigned not null primary key auto_increment,
    autorname   varchar(60) NOT NULL,
    autorgeb    date not null
) ENGINE = InnoDB;

create table kategorien(
    katid       int unsigned not null primary key auto_increment,
    katname     varchar(60) not null ,
    kathouptnum int unsigned
) engine = InnoDB;

# delete from kategorien where 1=1;

LOAD DATA LOCAL INFILE 'C:\\Users\\massi\\Documents\\School\\5IA\\InfWild_Grundlagen-des-Datenbankdesign\\db\\RohdateienGrundlagenDB\\kategorien.txt'
INTO TABLE kategorien
FIELDS TERMINATED BY ';'
ENCLOSED BY ''
LINES TERMINATED BY '\n';

SHOW VARIABLES LIKE "secure_file_priv";