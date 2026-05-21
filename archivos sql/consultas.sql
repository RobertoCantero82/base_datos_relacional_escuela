-- 1. Ver todos los alumnos

SELECT * FROM alumnos;

-- (Selecciona todo de la tabla alumnos)

-- 2. Contar cuántos alumnos hay en total

SELECT COUNT(*) FROM alumnos

-- (Selecciona el conteo de filas de la tabla alumnos)

-- 3. Ver todos los proyectos de Data Science

SELECT * FROM proyectos WHERE id_curso = 1;

-- (Selecciona todo de la tabla proyectos donde el id_curso sea 1)

-- 4. Ver alumnos con el nombre de su promoción

SELECT a.nombre as alumno, p.nombre as promocion
FROM alumnos as a
JOIN promociones as p ON a.id_promocion = p.id_promocion;

-- (Selecciona el nombre del alumno y el nombre de la promoción, 
-- desde la tabla alumnos unida a promociones donde el id_promocion coincida)

-- 5. Ver profesores con el nombre de su rol

SELECT p.nombre as profesor, r.nombre as rol
FROM profesores as p
JOIN roles as r ON p.id_rol = r.id_rol;

-- (Selecciona el nombre del profesor y el nombre del rol, 
-- desde la tabla profesores unida a roles donde el id_rol coincida)

-- 6. Ver notas de cada alumno con el nombre del proyecto

SELECT a.nombre, pr.nombre as proyecto, n.resultado
FROM notas as n
JOIN alumnos as a ON n.id_alumno = a.id_alumno
JOIN proyectos as pr ON n.id_proyecto = pr.id_proyecto;

-- (Selecciona el nombre del alumno, el nombre del proyecto y el resultado, 
-- desde la tabla notas unida a alumnos donde el id_alumno coincida, y unida a proyectos 
-- donde el id_proyecto coincida)

-- 7. Contar cuántos alumnos hay por promoción

SELECT a.nombre, pr.nombre as proyecto, n.resultado
FROM notas as n**
JOIN alumnos as a ON n.id_alumno = a.id_alumno
JOIN proyectos as pr ON n.id_proyecto = pr.id_proyecto;

-- (Selecciona el nombre de la promoción y el conteo de alumnos, desde promociones 
-- unida a alumnos donde el id_promocion coincida, agrupando por nombre de promoción)

-- 8. Alumnos que han suspendido algún proyecto

SELECT p.nombre, COUNT(a.id_alumno) as total_alumnos
FROM promociones as p
JOIN alumnos as a ON p.id_promocion = a.id_promocion
GROUP BY p.nombre;

-- (Selecciona los nombres únicos de alumnos, desde alumnos unida a notas 
-- donde el id_alumno coincida, filtrando solo los que tienen resultado 'No Apto')

-- 9. Cuántos aptos y no aptos tiene cada proyecto

SELECT DISTINCT a.nombre as alumno
FROM alumnos as a
JOIN notas as n ON a.id_alumno = n.id_alumno
WHERE n.resultado = 'No Apto';

-- (Selecciona el nombre del proyecto, el resultado y el conteo, desde notas 
-- unida a proyectos donde el id_proyecto coincida, agrupando por nombre de proyecto 
-- y resultado, ordenado por nombre de proyecto)

-- 10. Qué profesores imparten en cada promoción

SELECT p.nombre as profesor, pr.nombre as promocion
FROM asignaciones as a
JOIN profesores as p ON a.id_profesor = p.id_profesor
JOIN promociones as pr ON a.id_promocion = pr.id_promocion
ORDER BY pr.nombre;

-- (Selecciona el nombre del profesor y el nombre de la promoción, 
-- desde asignaciones unida a profesores donde el id_profesor coincida, y 
-- unida a promociones donde el id_promocion coincida, ordenado por nombre de promoción)