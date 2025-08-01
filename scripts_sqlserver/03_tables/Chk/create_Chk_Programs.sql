-- ========================================
-- Archivo: create_Chk_Programs.sql
-- Descripción: Agrega restricciones CHECK a la tabla Programs
--              para validar nombres, códigos y duración académica.
-- Propósito: Fortalecer la integridad de datos en la tabla academic_programs.Programs
--            dentro del sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 31 de julio de 2025
-- ========================================

USE AcademicSystem;
GO


-- 🔠 Solo letras latinas y espacios (útil para nombres)
ALTER TABLE academic_programs.Programs
    ADD CONSTRAINT CK_Programs_Name_LetrasLatinas
        CHECK (Name NOT LIKE N'%[^A-Za-zÁÉÍÓÚáéíóúÑñ ]%');
GO

-- ✅ Validar que un campo (ej. código) tenga una longitud mínima
ALTER TABLE academic_programs.Programs
    ADD CONSTRAINT CK_Programs_Code_LongitudMin
        CHECK (LEN(Code) >= 4);
GO

-- 🛑 No permitir espacios (útil para username o códigos únicos)
ALTER TABLE academic_programs.Programs
    ADD CONSTRAINT CK_Programs_Code_SinEspacios
        CHECK (Code NOT LIKE '% %');
GO

-- ✅ Validar el tipo entre 1 y 5 años
ALTER TABLE academic_programs.Programs
    ADD CONSTRAINT CK_Programs_Duration_Years_Etapa
        CHECK (Duration_Years BETWEEN 1 AND 5);
GO
