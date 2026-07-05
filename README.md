# Crash Bandicoot 3: Warped — Decompilation Project 🦊🌀

¡Bienvenido/a al repositorio de la decompilación de *Crash Bandicoot 3: Warped*! Este proyecto busca analizar, documentar y abrir las entrañas del ejecutable original de PlayStation 1. 

Actualmente, el repositorio está dividido en tres áreas principales según el estado del análisis y las herramientas utilizadas:

▲▲
( ••)   [ Crash 3 Decomp Project ]
/ │ │

└─── GhidraDecomp/ --------> (C código, lectura, el más actualizado)
└─── IDA Decomp (Obsolete)/ -> (MIPS, recompilable con armips, obsoleto)
└─── Values/ --------------> (TXTs con IDs, Masks y data de referencia)

---

## 📂 Estructura del Repositorio

### 1. `GhidraDecomp`
* **Estado:** En desarrollo activo (La versión más actual).
* **Idioma/Formato:** Código en C (generado a través de Ghidra).
* **Propósito:** Sirve estrictamente como **referencia** y documentación para entender la lógica del ejecutable, las funciones del motor y la estructura de los datos.
* ⚠️ **Nota importante:** Por el momento **no se puede volver a compilar**. Está enfocado en la legibilidad y el análisis antes que en la generación de binarios.

### 2. `IDA Decomp (Obsolete)`
* **Estado:** Obsoleto / Sin mantenimiento.
* **Idioma/Formato:** Lenguaje MIPS crudo (ensamblador).
* **Propósito:** Es la **única versión que se puede recompilar** actualmente utilizando `armips`. 
* 💡 **Uso:** Aunque está duramente desactualizada en comparación con el trabajo en Ghidra, te permite modificar directamente las partes ya decompiladas e inyectar los cambios en un nuevo ejecutable funcional.

### 3. `Values`
* **Contenido:** Un conjunto de archivos de texto (`.txt`).
* **Propósito:** Tablas de referencia rápida, máscaras de bits (`masks`), identificadores (`IDs`) y constantes necesarias para el mapeo de variables y funciones en cualquiera de las dos herramientas de decompilación.

---

## 🛠️ Herramientas Sugeridas
* **Para análisis moderno:** [Ghidra](https://ghidra-sre.org/)
* **Para modificaciones y recompilación de la rama obsoleta:** [armips](https://github.com/Kingcom/armips)

---
*Disclaimer: Este proyecto está hecho con fines educativos y de preservación. Todos los derechos de los assets y el código original pertenecen a sus respectivos dueños.*
