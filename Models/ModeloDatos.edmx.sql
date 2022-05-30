
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/30/2022 12:34:47
-- Generated from EDMX file: C:\Users\laboratorio\Desktop\AppWeb\AppWebVaciadePrueba\Models\ModeloDatos.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [pruebaMVC];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AlumnoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AlumnoSet];
GO
IF OBJECT_ID(N'[dbo].[AsignaturaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AsignaturaSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AlumnoSet'
CREATE TABLE [dbo].[AlumnoSet] (
    [Rut] nvarchar(10)  NOT NULL,
    [Nombre] nvarchar(100)  NOT NULL,
    [FechaNacimiento] datetime  NOT NULL,
    [Direccion] nvarchar(200)  NOT NULL
);
GO

-- Creating table 'AsignaturaSet'
CREATE TABLE [dbo].[AsignaturaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Rut] in table 'AlumnoSet'
ALTER TABLE [dbo].[AlumnoSet]
ADD CONSTRAINT [PK_AlumnoSet]
    PRIMARY KEY CLUSTERED ([Rut] ASC);
GO

-- Creating primary key on [Id] in table 'AsignaturaSet'
ALTER TABLE [dbo].[AsignaturaSet]
ADD CONSTRAINT [PK_AsignaturaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------