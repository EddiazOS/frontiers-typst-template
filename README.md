# Frontiers Typst Template

> 🚧 **Plantilla no oficial** - Esta es una adaptación de la plantilla LaTeX oficial de Frontiers journals a Typst.

## 📝 Descripción

Esta plantilla proporciona una adaptación moderna de las plantillas LaTeX oficiales de Frontiers (`FrontiersinHarvard.cls` y `FrontiersinVancouver.cls`) al sistema de composición tipográfica [Typst](https://typst.app/). Permite a los autores preparar manuscritos para revistas Frontiers usando Typst en lugar de LaTeX.

## ✨ Características

- ✅ Formato de página US Letter (8.5" × 11")
- ✅ Diseño a dos columnas
- ✅ Encabezados y pies de página estilo Frontiers
- ✅ 5 niveles de encabezados
- ✅ Soporte para estilos de citación Harvard y Vancouver
- ✅ Formato de figuras y tablas
- ✅ Sección de abstract con keywords
- ✅ Metadata de autores y afiliaciones
- ✅ Información de autor correspondiente

## 🚀 Inicio Rápido

### Instalación

1. Asegúrate de tener [Typst](https://typst.app/docs/installation/) instalado en tu sistema.

2. Clona este repositorio:
```bash
git clone https://github.com/EddiazOS/frontiers-typst-template.git
cd frontiers-typst-template
```

3. Compila el template de ejemplo:
```bash
typst compile template.typ
```

### Uso Básico

Crea un nuevo archivo `.typ` e importa la plantilla:

```typst
#import "lib.typ": frontiers

#show: frontiers.with(
  title: "Tu Título",
  running-title: "Título Corto",
  
  authors: (
    (
      name: "Primer Autor",
      affiliations: ("1", "*"),
    ),
    (
      name: "Segundo Autor",
      affiliations: ("2",),
    ),
  ),
  
  affiliations: (
    "Institución 1, Ciudad, País",
    "Institución 2, Ciudad, País",
  ),
  
  corresponding-author: (
    name: "Autor Correspondiente",
    email: "email@example.com",
  ),
  
  keywords: ("keyword1", "keyword2", "keyword3"),
  
  abstract: [
    Tu abstract aquí...
  ],
  
  citation-style: "harvard", // o "vancouver"
)

= Introducción

Tu contenido aquí...
```

## 📋 Parámetros de la Plantilla

### Parámetros Obligatorios

- `title`: Título del artículo
- `authors`: Array de autores con nombres y afiliaciones
- `affiliations`: Array de strings con las afiliaciones institucionales
- `corresponding-author`: Diccionario con `name` y `email`

### Parámetros Opcionales

- `running-title`: Título corto para encabezados (por defecto: igual al título)
- `extra-auth`: Información adicional de autores
- `keywords`: Array de palabras clave (5-8 recomendadas)
- `abstract`: Contenido del abstract
- `citation-style`: "harvard" (por defecto) o "vancouver"
- `line-numbers`: `false` (por defecto) o `true` para números de línea

## 📖 Estructura del Documento

La plantilla sigue la estructura requerida por Frontiers:

1. Página de título con logo, título, autores y afiliaciones
2. Abstract y keywords
3. Contenido principal en dos columnas
4. Secciones especiales sin numeración:
   - Conflict of Interest Statement
   - Author Contributions
   - Funding
   - Acknowledgments
   - Data Availability Statement

## 📄 Niveles de Encabezados

```typst
= Nivel 1 (Section)
== Nivel 2 (Subsection)
=== Nivel 3 (Subsubsection)
==== Nivel 4 (Paragraph)
===== Nivel 5 (Subparagraph)
```

## 🖼️ Figuras y Tablas

### Figuras

```typst
#figure(
  image("figura.png", width: 80%),
  caption: [Tu caption aquí.],
) <fig:label>
```

### Tablas

```typst
#figure(
  table(
    columns: 3,
    [*Header 1*], [*Header 2*], [*Header 3*],
    [Data 1], [Data 2], [Data 3],
  ),
  caption: [Caption de la tabla.],
) <tab:label>
```

## 📑 Referencias Bibliográficas

Typst usa su propio sistema de bibliografía. Agrega al final de tu documento:

```typst
#bibliography("referencias.bib", style: "apa") // para Harvard
// o
#bibliography("referencias.bib", style: "ieee") // para Vancouver
```

## 🔗 Recursos

- [Plantilla LaTeX oficial de Frontiers](https://github.com/frontiersin/latex-manuscript-templates)
- [Documentación de Typst](https://typst.app/docs/)
- [Guías para autores de Frontiers](https://www.frontiersin.org/guidelines/author-guidelines)

## ⚠️ Nota Importante

**Esta NO es una plantilla oficial de Frontiers.** Es una adaptación de la comunidad basada en las especificaciones de formato de las plantillas LaTeX oficiales. Antes de enviar tu manuscrito:

1. Verifica los requisitos específicos de la revista objetivo
2. Compara tu PDF generado con los ejemplos oficiales
3. Considera usar la plantilla LaTeX oficial si necesitas compatibilidad total

## 👥 Contribuciones

¡Las contribuciones son bienvenidas! Si encuentras problemas o tienes sugerencias:

1. Abre un issue describiendo el problema o mejora
2. Fork el repositorio
3. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
4. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
5. Push a la rama (`git push origin feature/AmazingFeature`)
6. Abre un Pull Request

## 📜 Licencia

Este proyecto está bajo licencia MIT. Las plantillas LaTeX originales de Frontiers tienen su propia licencia.

## 🚀 Roadmap

- [ ] Agregar soporte completo para subfiguras
- [ ] Implementar estilos de citación Harvard y Vancouver más precisos
- [ ] Agregar logos oficiales de Frontiers (con permisos)
- [ ] Crear ejemplos para diferentes tipos de artículos
- [ ] Agregar soporte para material suplementario
- [ ] Implementar numeración de líneas
- [ ] Validar contra PDFs oficiales de Frontiers

## ✉️ Contacto

Creado por [@EddiazOS](https://github.com/EddiazOS)

---

**⭐ Si esta plantilla te resulta útil, considera darle una estrella al repositorio!**
