SELECT * FROM alumnos;

SELECT COUNT(*) FROM alumnos

SELECT * FROM proyectos WHERE id_curso = 1;

SELECT a.nombre as alumno, p.nombre as promocion
FROM alumnos as a
JOIN promociones as p ON a.id_promocion = p.id_promocion;

SELECT p.nombre as profesor, r.nombre as rol
FROM profesores as p
JOIN roles as r ON p.id_rol = r.id_rol;

SELECT p.nombre as profesor, r.nombre as rol
FROM profesores as p
JOIN roles as r ON p.id_rol = r.id_rol;

SELECT a.nombre, pr.nombre as proyecto, n.resultado
FROM notas as n**
JOIN alumnos as a ON n.id_alumno = a.id_alumno
JOIN proyectos as pr ON n.id_proyecto = pr.id_proyecto;

SELECT p.nombre, COUNT(a.id_alumno) as total_alumnos
FROM promociones as p
JOIN alumnos as a ON p.id_promocion = a.id_promocion
GROUP BY p.nombre;

SELECT DISTINCT a.nombre as alumno
FROM alumnos as a**
JOIN notas s n ON a.id_alumno = n.id_alumno
WHERE n.resultado = 'No Apto';

SELECT pr.nombre as proyecto, n.resultado, COUNT(*) as total
FROM notas as n
JOIN proyectos as pr ON n.id_proyecto = pr.id_proyecto
GROUP BY pr.nombre, n.resultado
ORDER BY pr.nombre;