-- Kreiranje baze podataka FestOrg ako već ne postoji
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'FestOrg')
BEGIN
    CREATE DATABASE FestOrg;
END
GO

-- Korištenje baze podataka FestOrg
USE FestOrg;
GO

-- Kreiranje tablice Naziv
CREATE TABLE Naziv (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ImeFirme VARCHAR(100)
);

-- Kreiranje tablice Prihodi
CREATE TABLE Prihodi (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ProdajaUlaznica DECIMAL(10, 2),
    PRSavjetovanja DECIMAL(10, 2),
    PrihodOdSanka DECIMAL(10, 2)
);

-- Kreiranje tablice Troškovi
CREATE TABLE Troškovi (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Zaposlenici DECIMAL(10, 2),
    Gorivo DECIMAL(10, 2),
    Catering DECIMAL(10, 2),
    Plaće DECIMAL(10, 2),
    FOREIGN KEY (ID) REFERENCES Prihodi(ID)
);

-- Kreiranje tablice ExtraFond
CREATE TABLE ExtraFond (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Sponzorstvo DECIMAL(10, 2),
    Pokroviteljstvo DECIMAL(10, 2),
    EUFondovi DECIMAL(10, 2)
);
