# Proyecto de Base de Datos — Guía de Colaboración

Este repositorio contiene el diseño, la estructura de tablas, los datos de prueba y las consultas SQL para nuestro proyecto de base de datos en equipo. 

Para mantener el orden y evitar la pérdida de código, trabajaremos bajo un esquema **distribuido** (cada quien con su servidor MySQL local) utilizando **Git & GitHub** para la integración del código.

---

## 🚀 Requisitos Previos

Antes de comenzar, asegúrate de tener instalado en tu entorno local:
1. **MySQL Server** (a través de XAMPP, Workbench, o instalación nativa).
2. **Git** configurado en tu terminal.
3. Un cliente de base de datos de tu preferencia (MySQL Workbench, DBeaver, DataGrip o phpMyAdmin).

---

## 📂 Estructura del Repositorio

El proyecto está organizado en archivos modulares para evitar conflictos de fusión en Git:

    ├── README.md                 # Esta guía de uso y colaboración
    ├── 01_DDLesqueme.sql         # Definición de la estructura (CREATE TABLE, llaves primarias/foráneas)
    ├── DMLDatos.sql              # Scripts de inserción de datos iniciales (INSERT INTO)
    └── consultas/                # Carpeta para el desarrollo de queries
        ├── consultas_integradas.sql  # Consultas finales aprobadas por el equipo
        ├── mi_consulta_juan.sql      # Espacio de trabajo personal (Ejemplo)
        └── mi_consulta_maria.sql     # Espacio de trabajo personal (Ejemplo)

---

## 🛠️ Instrucciones de Despliegue Local

Cada vez que un compañero actualice la estructura o los datos, debes clonar o actualizar tu base de datos local siguiendo estos pasos:

1. **Actualiza tu repositorio local:**
       git checkout main
       git pull origin main

2. **Ejecuta los scripts en tu cliente MySQL en el siguiente orden estricto:**
   * Ejecutar `01_DDLesqueme.sql` (Esto borrará la base de datos anterior y creará la estructura limpia).
   * Ejecutar `DMLDatos.sql` (Poblará las tablas con los datos ficticios acordados).
   * ¡Listo! Ya puedes probar tus consultas sobre datos reales.

---

## 🤝 Reglas de Colaboración (Git Workflow)

Para asegurar un desarrollo limpio, aplicaremos una estrategia de **Feature Branches** (Ramas por funcionalidad/miembro) con un único integrador.

### 1. Está prohibido hacer `push` directamente a `main`
La rama `main` es sagrada y contiene únicamente código funcional y aprobado. Nadie escribe directamente en ella, excepto el encargado de la integración.

### 2. Flujo de trabajo diario para colaborar:

* **Paso 1: Sincronizar tu entorno**
  Antes de empezar a escribir código, asegúrate de tener lo último de la rama principal:
       git checkout main
       git pull origin main

* **Paso 2: Crear tu propia rama**
  Crea una rama con un nombre descriptivo de lo que vas a hacer (ej. `feature-tablas`, `consultas-pedro`, `fix-llaves`):
       git checkout -b tu-nombre/funcionalidad

* **Paso 3: Trabajar y hacer Commits**
  Escribe tus scripts en los archivos correspondientes. Haz commits con mensajes claros y descriptivos:
       git add consultas/mi_consulta_pedro.sql
       git commit -m "Añade consultas de reportes mensuales de ventas"

* **Paso 4: Subir tu rama a GitHub**
  Cuando termines tu tarea y la hayas probado localmente en tu MySQL, sube tu rama al servidor remoto:
       git push origin tu-nombre/funcionalidad

* **Paso 5: Crear un Pull Request (PR)**
  Ve a la interfaz de GitHub del proyecto y abre un **Pull Request** desde tu rama hacia `main`. Describe brevemente qué cambios incluye tu código.

### 3. Integración y Revisión
* El líder/integrador del proyecto revisará el Pull Request en GitHub.
* Si el archivo `01_DDLesqueme.sql` fue modificado, se verificará manualmente que no rompa las relaciones de llaves foráneas.
* Una vez verificado que todo funciona correctamente, el integrador hará el **Merge** a `main`.
* Una vez aceptado el PR, puedes borrar tu rama local y remota para mantener el repositorio limpio.

---

## 💡 Reglas de Nomenclatura y Buenas Prácticas SQL

Para que el código de todos sea consistente y no existan errores al unificar, se deben seguir estrictamente estas reglas:

* **Nombre de tablas:** Deben ser exactamente las mismas que en el DER, pero escritas **siempre en plural y en minúscula** (ej: `usuarios`, `productos`, `facturas`).
* **Nombre de las Llaves Primarias (PK):** El campo identificador principal de cada tabla se llamará simplemente `id` (en minúscula).
* **Nombre de las Llaves Foráneas (FK):** Se estructurarán bajo el formato `id_[nombre de la tabla en singular]` (ej: si la tabla es `clientes`, la FK en la tabla relacionada será `id_cliente`).
* **Estilo general:** Todos los campos y columnas creados deben escribirse en **minúscula**.
* **Orden de Creación:** En `01_DDLesqueme.sql`, asegúrate de crear primero las tablas independientes (fuertes) y al final las tablas dependientes (débiles) para evitar errores de llaves foráneas (`FOREIGN KEY`).
* **Idempotencia:** Los scripts de esquema deben iniciar con las siguientes líneas para permitir ejecuciones repetidas sin duplicar errores:
       DROP DATABASE IF EXISTS mi_base_datos;
       CREATE DATABASE mi_base_datos;
       USE mi_base_datos;