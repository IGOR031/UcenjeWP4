USE master;
GO

-- Drop the festival_hr database if it exists
DROP DATABASE IF EXISTS festival_hr;
GO

-- Create the festival_hr database
CREATE DATABASE festival_hr;
GO

-- Use the festival_hr database
USE festival_hr;
GO

-- Create the AlternativeStage table
CREATE TABLE AlternativeStage (
    Id INT PRIMARY KEY,
    BandName NVARCHAR(50),
    PerformanceDuration INT,
    BreakDuration INT
);
GO

-- Create the RockStage table
CREATE TABLE RockStage (
    Id INT PRIMARY KEY,
    BandName NVARCHAR(50),
    PerformanceDuration INT,
    BreakDuration INT
);
GO

-- Insert data into the AlternativeStage table
INSERT INTO AlternativeStage (Id, BandName, PerformanceDuration, BreakDuration) VALUES
(1, 'alt bend 1', 45, 15),
(2, 'alt bend 2', 45, 15),
(3, 'alt bend 3', 45, 15),
(4, 'alt bend 4', 45, 15),
(5, 'alt bend 5', 45, 15),
(6, 'alt bend 6', 45, 15);
GO

-- Insert data into the RockStage table
INSERT INTO RockStage (Id, BandName, PerformanceDuration, BreakDuration) VALUES
(1, 'rock bend 1', 45, 15),
(2, 'rock bend 2', 45, 15),
(3, 'rock bend 3', 45, 15),
(4, 'rock bend 4', 45, 15),
(5, 'rock bend 5', 45, 15),
(6, 'rock bend 6', 45, 15);
GO