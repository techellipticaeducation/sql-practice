# Olympic Database Documentation

This document describes the structure and purpose of the `Olympics` database, which tracks countries, athletes, events, and medals awarded in the Olympic games. The database consists of four tables: `Countries`, `Athletes`, `Events`, and `Medals`.

## **Database Tables**

### 1. **Countries**
This table stores information about countries participating in the Olympics.

| Column Name   | Data Type       | Description                                      |
|---------------|-----------------|--------------------------------------------------|
| `CountryID`   | INT (Primary Key) | Unique identifier for each country.             |
| `CountryName` | VARCHAR(100)    | Name of the country (e.g., "United States").     |
| `CountryCode` | CHAR(3)         | ISO 3-character country code (e.g., "USA").      |
| `Continent`   | VARCHAR(50)     | Continent where the country is located.          |

**Example**:
```sql
INSERT INTO Countries (CountryName, CountryCode, Continent) VALUES
('United States', 'USA', 'North America');
```

---

### 2. **Athletes**
This table contains details about athletes participating in the Olympics.

| Column Name     | Data Type         | Description                                      |
|------------------|-------------------|--------------------------------------------------|
| `AthleteID`      | INT (Primary Key) | Unique identifier for each athlete.             |
| `FullName`       | VARCHAR(100)      | Full name of the athlete.                       |
| `Gender`         | ENUM('Male', 'Female') | Gender of the athlete.                         |
| `DateOfBirth`    | DATE              | Date of birth of the athlete.                   |
| `CountryID`      | INT               | Foreign key referencing `Countries(CountryID)`. |

**Example**:
```sql
INSERT INTO Athletes (FullName, Gender, DateOfBirth, CountryID) VALUES
('John Doe', 'Male', '1995-03-12', 1);
```

---

### 3. **Events**
This table lists events in the Olympics, categorized by sport and type.

| Column Name   | Data Type             | Description                                      |
|---------------|-----------------------|--------------------------------------------------|
| `EventID`     | INT (Primary Key)     | Unique identifier for each event.               |
| `EventName`   | VARCHAR(100)          | Name of the event (e.g., "100m Sprint").         |
| `Sport`       | VARCHAR(50)           | Name of the sport (e.g., "Athletics").           |
| `EventType`   | ENUM('Individual', 'Team') | Indicates whether the event is individual or team-based. |
| `Gender`      | ENUM('Male', 'Female', 'Mixed') | Gender category of the event.                 |

**Example**:
```sql
INSERT INTO Events (EventName, Sport, EventType, Gender) VALUES
('100m Sprint', 'Athletics', 'Individual', 'Male');
```

---

### 4. **Medals**
This table tracks the medals awarded to athletes for events in a specific year.

| Column Name   | Data Type               | Description                                      |
|---------------|-------------------------|--------------------------------------------------|
| `MedalID`     | INT (Primary Key)       | Unique identifier for each medal.               |
| `AthleteID`   | INT                     | Foreign key referencing `Athletes(AthleteID)`.  |
| `EventID`     | INT                     | Foreign key referencing `Events(EventID)`.      |
| `MedalType`   | ENUM('Gold', 'Silver', 'Bronze') | Type of medal awarded.                      |
| `Year`        | INT                     | Year the medal was awarded.                     |

**Example**:
```sql
INSERT INTO Medals (AthleteID, EventID, MedalType, Year) VALUES
(1, 1, 'Gold', 2020);
```

---

## **Relationships**
1. **Countries ↔ Athletes**: Each athlete belongs to one country.
   - `Athletes.CountryID` → `Countries.CountryID`.

2. **Athletes ↔ Medals**: Each medal is associated with one athlete.
   - `Medals.AthleteID` → `Athletes.AthleteID`.

3. **Events ↔ Medals**: Each medal is awarded for a specific event.
   - `Medals.EventID` → `Events.EventID`.

---


## 📜 **Disclaimer**

This documentation was created by the **TechElliptica Team**. The structure and information provided here are solely for academic or learning purposes.  
If you have any questions, need help, or have suggestions, feel free to reach out to **TechElliptica**.

🌐 **Website**: [https://www.techelliptica.com](https://www.techelliptica.com)  
💬 **Join our Free WhatsApp Group**: [Click Here](https://techelliptica.com/viewcourses.php?def=whatsapp)

---

![TechElliptica](https://techelliptica.com/images/logo.png?text=TechElliptica+Banner)




