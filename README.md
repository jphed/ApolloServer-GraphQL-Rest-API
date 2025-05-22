# Proyecto Final - Tercer Parcial  
## Bases de Datos II  
**Semestre:** Enero – Junio 2025 
**Carrera:** Tecnologías de la Información y Telecomunicaciones  
**Parcial:** Tercero  
**Nombre:** Jorge Parra
**Matrícula:** 13104

---

## Descripción General

Este proyecto tiene como objetivo demostrar el dominio en el diseño y manipulación de bases de datos utilizando Node.js, Apollo Server y GraphQL. Se implementó un Rest-API completo para interactuar con una base de datos relacional, cumpliendo con todos los puntos indicados en la guía del tercer parcial.

---

## Actividades Realizadas

### 1. Generación de la Base de Datos (40 puntos)

- Se diseñó e implementó una base de datos relacional basada en un **esquema lógico** provisto por el docente.
- Se crearon las siguientes tablas:
  - `Poet`
  - `Poem`
  - `Customer`
  - `Sale`
  - `Publication`
  - `Poem_Publication`
  - `Sale_Publication`
- Se incluyeron relaciones foráneas y restricciones.

> ✅ Se incluyen capturas de pantalla y scripts SQL en la carpeta `/db`.

---

### 2. Proyecto Node.js y Rest-API con GraphQL (60 puntos)

#### 2.1 Servidor Apollo
- Se configuró un servidor Apollo con Express.

#### 2.2 Servidor GraphQL
- Se definió un esquema (`typeDefs`) y resolvers para exponer la API.

#### 2.3 Consultas GraphQL
- Implementación de una consulta que devuelve información de la tabla:
  - `Customer` (se puede cambiar a `Poem` o `Poet` si se desea).

#### 2.4 Procedimiento Almacenado
- Se diseñó un procedimiento almacenado para consultar una vista combinada:
  - `Poet-Poem`
  - También disponibles: `Sale-Customer` y `Publication-Poem`

#### 2.5 Altas (Mutations - Create)
- Se crearon mutaciones para insertar registros en:
  - `Poet`, `Poem`, `Customer`, `Sale`

#### 2.6 Modificaciones (Mutations - Update)
- Mutaciones para actualizar registros de:
  - `Customer`, `Publication`, `Sale`

#### 2.7 Bajas (Mutations - Delete)
- Eliminación de registros en:
  - `Poem_Publication` y `Sale_Publication`

#### 2.8 Variables de Entorno
- Se usó el paquete `dotenv` para gestionar la configuración sensible del servidor:
  - Archivo `.env` contiene `DB_HOST`, `DB_USER`, `DB_PASS`, etc.
