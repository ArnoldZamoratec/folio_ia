# Arnold Huaman - Portfolio Personal

[![Deploy](https://github.com/arnoldhuaman/portfolio/workflows/Deploy%20site/badge.svg)](https://github.com/arnoldhuaman/portfolio/actions)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Portfolio personal y blog de tecnología construido con Jekyll y el tema al-folio.

## 🚀 Características

- 📝 Blog de programación y tecnología
- 🎓 Recursos educativos sobre algoritmos y desarrollo
- 💼 Proyectos y portfolio profesional
- 🌙 Modo oscuro/claro
- 📱 Diseño responsive
- ⚡ Optimizado para rendimiento

## 🛠️ Tecnologías

- **Jekyll 4.x** - Generador de sitios estáticos
- **Ruby 3.3.5** - Lenguaje de programación
- **GitHub Pages** - Hosting gratuito
- **GitHub Actions** - CI/CD automatizado

## 📦 Instalación Local

### Requisitos Previos

- Ruby 3.3.5 o superior
- Bundler
- Node.js 20 o superior (para optimización CSS)
- Python 3.13 (para Jupyter notebooks)

### Pasos de Instalación

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/arnoldhuaman/portfolio.git
   cd portfolio
   ```

2. **Instalar dependencias de Ruby**
   ```bash
   bundle install
   ```

3. **Instalar dependencias de Python** (opcional, para notebooks)
   ```bash
   pip install -r requirements.txt
   ```

4. **Ejecutar servidor local**
   ```bash
   bundle exec jekyll serve
   ```

5. **Abrir en navegador**
   ```
   http://localhost:4000/portfolio/
   ```

## 🌐 Despliegue en GitHub Pages

### Configuración Inicial

1. **Fork o crea un nuevo repositorio** en GitHub

2. **Actualiza `_config.yml`** con tu información:
   ```yaml
   url: https://TU-USUARIO.github.io
   baseurl: /NOMBRE-REPOSITORIO
   title: Tu Nombre
   ```

3. **Habilita GitHub Pages**:
   - Ve a Settings → Pages
   - Source: **GitHub Actions**

4. **Push tu código**:
   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

5. **El sitio se desplegará automáticamente** 🎉

### Workflow Automático

El sitio se reconstruye automáticamente cuando:
- Haces push a la rama `main`
- Modificas archivos de contenido (`.md`, `.html`, etc.)
- Cambias configuración o estilos

## 📝 Crear Contenido

### Nuevo Post de Blog

Crea un archivo en `_posts/`:

```markdown
---
layout: post
title: "Título del Post"
date: 2026-02-06
description: Descripción breve
tags: tag1 tag2
categories: categoria
---

Tu contenido aquí...
```

### Nuevo Anuncio

Crea un archivo en `_news/`:

```markdown
---
layout: post
date: 2026-02-06
inline: true
---

Texto del anuncio breve.
```

### Nuevo Proyecto

Crea un archivo en `_projects/`:

```markdown
---
layout: page
title: Nombre del Proyecto
description: Descripción
img: assets/img/proyecto.jpg
---

Detalles del proyecto...
```

## 🎨 Personalización

### Colores y Estilos

Edita `_sass/_themes.scss` para cambiar colores y temas.

### Navegación

Edita `_data/navigation.yml` para modificar el menú.

### Redes Sociales

Actualiza `_config.yml` en la sección de redes sociales.

## 📚 Recursos Incluidos

- **Guía de Algoritmos** - Análisis de complejidad y técnicas
- **Estructuras de Datos** - Referencia completa
- **Mejores Prácticas** - Clean Code y SOLID

Disponibles en `/assets/pdf/`

## 🔧 Solución de Problemas

### Error de Build

Si el build falla:
1. Verifica que todas las dependencias estén instaladas
2. Revisa los logs en GitHub Actions
3. Ejecuta `bundle exec jekyll build --verbose` localmente

### Imágenes no cargan

Verifica que las rutas usen `{{ site.baseurl }}`:
```liquid
{{ site.baseurl }}/assets/img/imagen.jpg
```

### CSS no se aplica

Limpia el caché:
```bash
bundle exec jekyll clean
bundle exec jekyll serve
```

## 📄 Licencia

Este proyecto usa el tema [al-folio](https://github.com/alshedivat/al-folio) bajo licencia MIT.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:
1. Fork el proyecto
2. Crea una rama para tu feature
3. Commit tus cambios
4. Push a la rama
5. Abre un Pull Request

## 📧 Contacto

**Arnold Albert Huaman Zamora**
- GitHub: [@arnoldhuaman](https://github.com/arnoldhuaman)
- Portfolio: [arnoldhuaman.github.io/portfolio](https://arnoldhuaman.github.io/portfolio)

---

⭐ Si te gusta este proyecto, dale una estrella en GitHub!
