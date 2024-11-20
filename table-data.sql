INSERT INTO Countries (CountryName, CountryCode, Continent) VALUES
('United States', 'USA', 'North America'),
('China', 'CHN', 'Asia'),
('India', 'IND', 'Asia'),
('Germany', 'GER', 'Europe'),
('Brazil', 'BRA', 'South America'),
('Australia', 'AUS', 'Oceania'),
('South Africa', 'RSA', 'Africa'),
('Canada', 'CAN', 'North America');


INSERT INTO Athletes (FullName, Gender, DateOfBirth, CountryID) VALUES
('John Doe', 'Male', '1995-03-12', 1),
('Jane Smith', 'Female', '1997-06-22', 2),
('Akash Sharma', 'Male', '2000-01-15', 3),
('Anna Müller', 'Female', '1994-10-08', 4);


INSERT INTO Events (EventName, Sport, EventType, Gender) VALUES
('100m Sprint', 'Athletics', 'Individual', 'Male'),
('200m Sprint', 'Athletics', 'Individual', 'Female'),
('4x100m Relay', 'Athletics', 'Team', 'Mixed'),
('Marathon', 'Athletics', 'Individual', 'Male'),
('Basketball', 'Basketball', 'Team', 'Male');


INSERT INTO Medals (AthleteID, EventID, MedalType, Year) VALUES
(1, 1, 'Gold', 2020),
(2, 2, 'Silver', 2020),
(3, 3, 'Bronze', 2020),
(4, 1, 'Gold', 2024);

