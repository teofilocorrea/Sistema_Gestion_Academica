-- ========================================
-- 01_db_description.sql
-- Documenta la base de datos principal (AcademicSystem)
-- mediante MS_Description para uso técnico y portafolio
-- Autor: Teófilo Correa Rojas
-- Fecha: Julio 30 de 2025
-- ========================================
USE AcademicSystem;
GO

-- 🧾 Documentación de la base de datos
EXEC sys.sp_addextendedproperty
     @name = N'MS_Description',
     @value = N'Base de datos diseñada para simular un sistema de gestión académica como parte de un portafolio técnico personal';
GO