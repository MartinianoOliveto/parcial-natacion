
# Escuela de Natación

Una escuela de natación nos ha solicitado desarrollar un software para gestionar sus distintos cursos.

## Descripción del dominio

Se manejan cuatro estilos de natación: **crol**, **pecho**, **espalda** y **mariposa**.  Y de cada estudiante se conoce cuáles de esos estilos domina (podría no dominar ninguno). además se conoce su edad.

Para que un estudiante pueda inscribirse a un curso, deben cumplirse **todas** las siguientes condiciones:

- **No estar ya inscripto** en el curso.
- Que el curso tenga **vacantes disponibles** (la cantidad de inscriptos debe ser menor al cupo máximo).
- Que el **docente asignado** esté habilitado para dictar clases al estudiante en ese curso:
  - Un **docente dedicado** a un estilo puede dictar clases solo a estudiantes que dominen dicho estilo.
  - Un **docente externo** tiene un **límite máximo de estudiantes menores de 13 años por curso**.  Este límite es un número específico configurado para cada docente externo. Puede tener inscriptos mayores a 13 sin restricciones.
  - Hay **docentes básicos** que pueden dictar clases a cualquier estudiante.

- Que se cumplan requisitos adicionales relacionados con el **objetivo del curso**:
  - Los cursos **base** aceptan estudiantes que dominen al menos un estilo, o bien que el docente posea título profesional de guardavidas.
  - Los cursos **"escuelita de niños"** siguen las reglas de los cursos base, pero además **solo aceptan estudiantes menores de 13 años**.
  - Los cursos **terapéuticos** requieren que el estudiante domine al menos uno de los estilos relajantes. Se consideran relajantes **pecho** y **espalda**; mientras que **crol** y **mariposa** no lo son.

## Ejercicios

1. Desarrollar un sistema que permita resolver estos requerimientos:
   
    * Conocer todos los estudiantes inscriptos en un curso.
    * Verificar si un estudiante puede inscribirse a un curso.
    * Inscribir un estudiante en un curso (¡cuidado con los casos que no cumplen los requisitos!).
      
3. Realizar un diagrama estático que describa el sistema.
4. Desarrollar los ejemplos y casos de prueba que se encuentran en el archivo de tests.

