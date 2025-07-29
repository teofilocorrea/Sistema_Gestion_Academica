# 🛡️ Estrategia de Seguridad y Clasificación de Datos

Este documento presenta las medidas de seguridad aplicadas a los campos sensibles del sistema **AcademicSystem**, incluyendo enmascaramiento dinámico de datos (DDM) y clasificación de sensibilidad según estándares de SQL Server.

---

## 1. 🔐 Dynamic Data Masking (DDM)

### Campos con enmascaramiento aplicado

| Tabla     | Campo       | Tipo de máscara | Comentario                                   |
|-----------|-------------|------------------|-----------------------------------------------|
| Students  | email        | `email()`        | Oculta parte del correo                       |
| Students  | birthdate    | `partial(...)`   | Oculta la fecha completa para ciertos perfiles |


## 🛡️ Clasificación de Sensibilidad de Datos

Esta sección identifica los campos considerados sensibles dentro del modelo, y sugiere etiquetas oficiales de clasificación compatibles con SQL Server.

| Tabla       | Campo        | Sensitivity Label             | Information Type         | Risk Rank |
|-------------|--------------|-------------------------------|---------------------------|-----------|
| Students    | email         | Confidential - Contact        | Email Address             | HIGH      |
| Students    | birthdate     | Confidential - Personal       | Date of Birth             | MEDIUM    |
| Students    | student_id    | Confidential - Identifiers    | Internal Student ID       | LOW       |
| Enrollments | grade         | Confidential - Performance    | Academic Grade            | MEDIUM    |

🧠 Documento estructurado por:  
**Teófilo Correa Rojas**  
📁 Proyecto: *Sistema de Gestión Académica – Acciones en FK*  
📅 Fecha: `Julio 29, 2025`