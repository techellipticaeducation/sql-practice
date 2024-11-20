CREATE DATABASE Olympics;
USE Olympics;


CREATE TABLE Countries (
    CountryID INT AUTO_INCREMENT PRIMARY KEY,
    CountryName VARCHAR(100),
    CountryCode CHAR(3),
    Continent VARCHAR(50)
);


CREATE TABLE Athletes (
    AthleteID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100),
    Gender ENUM('Male', 'Female'),
    DateOfBirth DATE,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID)
);

CREATE TABLE Events (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    EventName VARCHAR(100),
    Sport VARCHAR(50),
    EventType ENUM('Individual', 'Team'),
    Gender ENUM('Male', 'Female', 'Mixed')
);

CREATE TABLE Medals (
    MedalID INT AUTO_INCREMENT PRIMARY KEY,
    AthleteID INT,
    EventID INT,
    MedalType ENUM('Gold', 'Silver', 'Bronze'),
    Year INT,
    FOREIGN KEY (AthleteID) REFERENCES Athletes(AthleteID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);
