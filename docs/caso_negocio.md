# 🧠 Caso de Negocio – Mini Proyecto Académico

## 🎯 Impacto Esperado
Establecer relaciones correctas entre entidades académicas para simular acciones reales de integridad referencial en una base de datos educativa.

Esto permitirá observar el comportamiento de distintas políticas de `ON DELETE` y `ON UPDATE` en situaciones controladas.

## 📋 Regla de Negocio
- Cada estudiante puede estar matriculado en múltiples cursos.
- Un curso puede pertenecer a un programa académico.
- Un programa puede tener múltiples cursos asignados.
- Si un estudiante es eliminado, su historial debe comportarse de manera consistente según la acción configurada.

## ⚙️ Especificaciones Funcionales
Este modelo contempla las siguientes áreas funcionales:

| Área Académica         | Tabla Principal      | Descripción breve                                  |
|------------------------|----------------------|----------------------------------------------------|
| Gestión de estudiantes | `Students`           | Registro de los alumnos inscritos                  |
| Programas académicos   | `Programs`           | Carreras o diplomados disponibles                  |
| Catálogo de cursos     | `Courses`            | Materias que componen los programas                |
| Matrícula de cursos    | `Enrollments`        | Inscripción de estudiantes en cursos específicos   |

Cada relación entre estas entidades será configurada con diferentes tipos de acciones FK (`NO ACTION`, `CASCADE`, `SET NULL`) para analizar su impacto y comportamiento.

---

📌 Documento mantenido por:  
**Teófilo Correa Rojas**  
📅 Fecha: `Julio 25, 2025`  
📁 Proyecto: *Sistema de Gestión Académica – Acciones en FK*
