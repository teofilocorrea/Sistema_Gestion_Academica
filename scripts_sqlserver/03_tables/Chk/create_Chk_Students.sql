-- ========================================
-- Archivo: create_Chk_Students.sql
-- Descripción: Agrega restricciones CHECK a la tabla Students
--              para validar nombres, correo electrónico y fechas clave.
-- Propósito: Fortalecer la integridad de datos personales y académicos en la tabla student_management. Students
--            dentro del sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 01 de agosto de 2025
-- ========================================

USE AcademicSystem;
GO

-- 🔠 Solo letras latinas y espacios (Primer Nombre)
ALTER TABLE student_management.Students
    ADD CONSTRAINT CK_Students_First_Name_LetrasLatinas
        CHECK (First_Name NOT LIKE N'%[^A-Za-zÁÉÍÓÚáéíóúÑñ ]%');
GO

-- 🔠 Solo letras latinas y espacios (Apellidos)
ALTER TABLE student_management.Students
    ADD CONSTRAINT CK_Students_Last_Name_LetrasLatinas
        CHECK (Last_Name NOT LIKE N'%[^A-Za-zÁÉÍÓÚáéíóúÑñ ]%');
GO

-- 📧 Formato básico de correo electrónico (Email)
ALTER TABLE student_management.Students
    ADD CONSTRAINT CK_Students_Email_EmailValido
        CHECK (
            Email LIKE '_%@_%._%' AND
            LTRIM(RTRIM(Email)) <> '' AND
            CHARINDEX(' ', Email) = 0
        );
GO

-- ✅ Edad entre 5 y 120 años
-- Asegura que el estudiante tenga una edad realista al momento del registro
ALTER TABLE student_management.Students
    ADD CONSTRAINT CK_Students_Edad_Valida
    CHECK (DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 5 AND 120);
GO
-- Asegura que la fecha corresponda al año en curso. Común en presupuestos o métricas anuales.

-- ✅ Mismo año actual (Created_At)
ALTER TABLE student_management.Students
    ADD CONSTRAINT CK_Students_Created_At_RangoControlado
        CHECK (Created_At BETWEEN '2025-01-01T00:00:00' AND '2026-12-31T23:59:59');
GO