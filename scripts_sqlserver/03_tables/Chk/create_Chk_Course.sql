-- ========================================
-- Archivo: create_Chk_Course.sql
-- Descripción: Agrega restricciones CHECK a la tabla Courses
--              para validar caracteres permitidos, espacios no deseados,
--              longitud mínima y rangos aceptados.
-- Propósito: Reforzar reglas de negocio y asegurar la calidad de datos
--            en el sistema AcademicSystem.
-- Autor: Teófilo Correa Rojas
-- Fecha: 31 de julio de 2025
-- ========================================

USE AcademicSystem;
GO

-- 🔠 Validar que el campo Title solo contenga letras latinas y espacios
ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT CK_Courses_Title_LetrasLatinas
        CHECK (Title NOT LIKE N'%[^A-Za-zÁÉÍÓÚáéíóúÑñ ]%');
GO

-- 🚫 No permitir espacios en el campo Code (ideal para identificadores únicos)
ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT CK_Courses_Code_SinEspacios
        CHECK (Code NOT LIKE '% %');
GO

-- 🔢 Validar que el campo Code tenga al menos 4 caracteres
ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT CK_Course_Code_LongitudMin
        CHECK (LEN(Code) >= 4);
GO

-- 🎯 Validar que el valor de Credits esté entre 1 y 4 (rango académico permitido)
ALTER TABLE course_catalog.Courses
    ADD CONSTRAINT CK_Courses_Grado_Maximo
        CHECK (Credits BETWEEN 1 AND 4);
GO