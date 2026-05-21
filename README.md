<div align="center">
<br>

<img src="erd_animated.gif" alt="Diagrama E/R animado — Base de Datos Relacional The Bridge" width="100%"/>

<br><br>

<h1>Proyecto Base de Datos Relacional</h1>

<p><strong>Ainara · Estibaliz · Iqra · Roberto</strong></p>

<br>

</div>

---

## Descripción

A partir de un conjunto de datos sin normalizar sobre estudiantes y profesores de una escuela, hemos diseñado e implementado una base de datos relacional completa en PostgreSQL. El objetivo fue adquirir experiencia práctica en modelado, normalización e ingesta de datos, así como en el despliegue de una base de datos accesible desde aplicaciones externas.

## Tecnologías

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4A90D9?style=flat-square&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-7BBCE8?style=flat-square&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2E6DB4?style=flat-square&logo=pandas&logoColor=white)
![Render](https://img.shields.io/badge/Render-1E4A7A?style=flat-square&logo=render&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-B8D8F5?style=flat-square&logo=jupyter&logoColor=1E4A7A)

## Estructura del repositorio

```
├── codigo/            # Scripts de creación de tablas e ingesta
├── datos/             # Datos de entrada sin normalizar
├── modelos/           # Diagramas E/R y modelo lógico
├── presentacion/      # Material de presentación final
├── erd_animated.gif   # Diagrama E/R animado 
└── README.md          # Documentación
```

## Modelo de datos

| Tabla | Descripción | Relaciones |
|---|---|---|
| `promociones` | Núcleo del modelo — cada grupo de alumnos | → sedes, modalidades, cursos |
| `alumnos` | Estudiantes matriculados | → promociones |
| `profesores` | Docentes | → roles |
| `asignaciones` | Qué profesor imparte qué promoción | → profesores, promociones |
| `notas` | Resultados por alumno y proyecto | → alumnos, proyectos |
| `proyectos` | Entregas evaluables por curso | → cursos |
| `cursos` | Verticales (DS, FS) | — |
| `roles` | Profesor, Asistente| — |
| `sedes` | Madrid, Valencia | — |
| `modalidades` | Presencial, Online | — |

## Fases del proyecto

1. **Modelado E/R** — diseño de entidades, atributos y relaciones
2. **Modelo lógico** — definición de tablas, claves primarias y foráneas
3. **Despliegue en Render** — base de datos PostgreSQL alojada y accesible desde aplicaciones externas
4. **Normalización** — eliminación de redundancias e integridad de datos
5. **Creación e ingesta** — scripts SQL y carga de datos con Pandas
6. **Consultas** — queries de demostración sobre la base de datos funcional

## Escalabilidad

El diseño contempla el crecimiento en múltiples dimensiones, ya sean en campus, cursos, promociones o modalidades.

## Equipo

<div align="center">
<br>

| &nbsp; | Nombre | Perfil |
|:---:|---|---|
| 🔵 | Ainara | Data Science |
| 🔵 | Estibaliz | Full Stack |
| 🔵 | Iqra | Full Stack |
| 🔵 | Roberto | Data Science |

</div>
