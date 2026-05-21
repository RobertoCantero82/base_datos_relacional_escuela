<div align="center">

<br>

<!-- badge pill "PROYECTO BBDD · BOOTCAMP" -->
<img src="https://img.shields.io/badge/PROYECTO_BBDD-BOOTCAMP-4A90D9?style=flat-square&labelColor=D6E4F7&color=2E6DB4" alt="Proyecto BBDD Bootcamp"/>

<br><br>

# Base de Datos Relacional · The Bridge

**Ainara · Estibaliz · Iqra · Roberto**

<br>

![Diagrama E/R animado](erd.svg)

<br>

[![Ver diagrama interactivo](https://img.shields.io/badge/▶_Explorar_diagrama_interactivo-2E6DB4?style=for-the-badge&logoColor=white)](https://robertocantero82.github.io/base_datos_relacional_escuela/erd_interactivo.html)

<br>

</div>

---

## Descripción

A partir de un conjunto de datos sin normalizar sobre estudiantes y profesores de una escuela de bootcamps, el equipo diseñó e implementó una base de datos relacional completa en PostgreSQL. El objetivo fue adquirir experiencia práctica en modelado, normalización e ingesta de datos, así como en el despliegue de una base de datos accesible desde aplicaciones externas.

## Tecnologías

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4A90D9?style=flat-square&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/Python-7BBCE8?style=flat-square&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2E6DB4?style=flat-square&logo=pandas&logoColor=white)
![Render](https://img.shields.io/badge/Render-1E4A7A?style=flat-square&logo=render&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-B8D8F5?style=flat-square&logo=jupyter&logoColor=1E4A7A)

## Estructura del repositorio

```
├── archivos sql/      # Scripts de creación de tablas e ingesta
├── datos/             # Datos de entrada sin normalizar
├── memoria/           # Documentación del proceso
├── modelos/           # Diagramas E/R y modelo lógico
├── presentacion/      # Material de presentación final
├── erd.svg            # Diagrama E/R animado (hero del README)
└── Proyecto_BBDD.md   # Enunciado del proyecto
```

## Modelo de datos

| Tabla | Descripción | Relaciones |
|---|---|---|
| `promociones` | Núcleo del modelo — cada grupo de alumnos | → sedes, modalidades, cursos |
| `alumnos` | Estudiantes matriculados | → promociones |
| `profesores` | Docentes del bootcamp | → roles |
| `asignaciones` | Qué profesor imparte qué promoción | → profesores, promociones |
| `notas` | Resultados por alumno y proyecto | → alumnos, proyectos |
| `proyectos` | Entregas evaluables por curso | → cursos |
| `cursos` | Verticales del bootcamp (DS, FS…) | — |
| `roles` | Tipos de profesor (mentor, lead…) | — |
| `sedes` | Campus (Madrid, Valencia…) | — |
| `modalidades` | Presencial / online | — |

## Fases del proyecto

1. **Modelado E/R** — diseño de entidades, atributos y relaciones
2. **Modelo lógico** — definición de tablas, claves primarias y foráneas
3. **Despliegue en Render** — base de datos PostgreSQL alojada y accesible desde aplicaciones externas
4. **Normalización** — eliminación de redundancias e integridad de datos
5. **Creación e ingesta** — scripts SQL y carga de datos con Pandas
6. **Consultas** — queries de demostración sobre la base de datos funcional

## Escalabilidad

El diseño contempla el crecimiento en múltiples dimensiones: campus (Madrid, Valencia…), verticales (Data Science, Full Stack…), promociones, modalidades (presencial / online) y aulas.

## Equipo

<div align="center">

<br>

![Ainara](https://img.shields.io/badge/Ainara-D6E4F7?style=for-the-badge&labelColor=4A90D9&color=D6E4F7&logoColor=1E4A7A)
![Estibaliz](https://img.shields.io/badge/Estibaliz-D6E4F7?style=for-the-badge&labelColor=2E6DB4&color=D6E4F7)
![Iqra](https://img.shields.io/badge/Iqra-D6E4F7?style=for-the-badge&labelColor=4A90D9&color=D6E4F7)
![Roberto](https://img.shields.io/badge/Roberto-D6E4F7?style=for-the-badge&labelColor=1E4A7A&color=D6E4F7)

<br>

*Ainara, Estibaliz, Iqra y Roberto colaboraron en todas las fases,*
*desde el diseño inicial del modelo hasta la presentación final.*

<br>

</div>
