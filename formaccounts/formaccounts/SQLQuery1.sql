-- Step 1: Create Database
CREATE DATABASE AccountFormsDB;

USE AccountFormsDB;
select*from PersonalAccount

CREATE TABLE PersonalAccount (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerType NVARCHAR(50) NOT NULL,
    PAN NVARCHAR(10) NOT NULL UNIQUE,
    Aadhar NVARCHAR(12) NOT NULL UNIQUE,
    LastName NVARCHAR(50) NOT NULL,
    FirstName NVARCHAR(50) NOT NULL,
    MiddleName NVARCHAR(50),
    MaidenName NVARCHAR(50),
    FatherName NVARCHAR(50),
    MotherName NVARCHAR(50),
    Address NVARCHAR(255) NOT NULL,
    PinCode NVARCHAR(6) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    District NVARCHAR(50) NOT NULL,
    State NVARCHAR(50) NOT NULL,
    Nation NVARCHAR(50) NOT NULL,
    PermanentAddress NVARCHAR(255),
    PermanentPinCode NVARCHAR(6),
    PermanentCity NVARCHAR(50),
    PermanentDistrict NVARCHAR(50),
    PermanentState NVARCHAR(50),
    PermanentNation NVARCHAR(50),
    Phone NVARCHAR(10),
    AlternatePhone NVARCHAR(10),
    Mobile NVARCHAR(10) NOT NULL,
    AlternateMobile NVARCHAR(10),
    Email NVARCHAR(100) NOT NULL,
    AadharImage VARBINARY(MAX),
    PanImage VARBINARY(MAX),
    AddressProof NVARCHAR(50),
    IdProof NVARCHAR(50),
    Photo VARBINARY(MAX),
    Signature VARBINARY(MAX),
    CreatedAt DATETIME DEFAULT GETDATE()
);
drop table CorporateAccount
select *from CorporateAccount
CREATE TABLE CorporateAccount (
    CorporateID INT PRIMARY KEY IDENTITY(1,1),
    CorporateName NVARCHAR(25) UNIQUE,
    CorporateTitle NVARCHAR(30),
    RegAddress NVARCHAR(50),
    RegPinCode NVARCHAR(10),
    RegCity NVARCHAR(50),
    RegDistrict NVARCHAR(50),
    RegState NVARCHAR(50),
    RegNation NVARCHAR(50),
    OfficeAddress NVARCHAR(30),
    OfficePinCode NVARCHAR(10),
    OfficeCity NVARCHAR(50),
    OfficeDistrict NVARCHAR(50),
    OfficeState NVARCHAR(500),
    OfficeNation NVARCHAR(50),
    IncorporationDate DATE,
    RegNo NVARCHAR(50) UNIQUE,
    OrgType NVARCHAR(50),
    GstNo NVARCHAR(15) UNIQUE,
    PhoneNo NVARCHAR(15),
    AltPhoneNo NVARCHAR(15),
    MobileNo NVARCHAR(15),
    AltMobileNo NVARCHAR(15),
    EmailId NVARCHAR(100) NOT NULL,
    GstCert VARBINARY(MAX),
    IncCert VARBINARY(MAX),
    PanImage VARBINARY(MAX),
    AddressProof NVARCHAR(200),
    Signature VARBINARY(MAX),
    CreatedAt DATETIME DEFAULT GETDATE()
);
 CREATE TABLE Login (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Username NVARCHAR(50) NOT NULL UNIQUE,
    Password NVARCHAR(25) NOT NULL);
