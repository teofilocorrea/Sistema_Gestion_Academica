-- ========================================
-- 01_create_database.sql
-- Crea la base de datos principal - AcademicSystem
-- Autor: Teófilo Correa Rojas
-- Fecha: Julio 30 2025
-- ========================================

CREATE DATABASE AcademicSystem
    ON PRIMARY (
    NAME = AcademicSystem_Data,
    FILENAME = '/var/opt/mssql/data/AcademicSystem_Data.mdf',
    SIZE = 10 MB,
    MAXSIZE = 100 MB,
    FILEGROWTH = 5 MB
    )
    LOG ON (
    NAME = AcademicSystem_Log,
    FILENAME = '/var/opt/mssql/data/AcademicSystem_Log.ldf',
    SIZE = 5 MB,
    MAXSIZE = 50 MB,
    FILEGROWTH = 5 MB
    );
GO