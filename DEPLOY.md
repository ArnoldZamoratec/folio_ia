# 🚀 Guía de Despliegue a GitHub

Esta guía te ayudará a subir tu portfolio a GitHub y desplegarlo en GitHub Pages sin errores.

## ✅ Pre-requisitos Completados

Ya se han realizado las siguientes configuraciones:

- ✅ Actualizado `_config.yml` con configuración genérica
- ✅ Mejorado `.gitignore` para desarrollo moderno
- ✅ Creado `.gitattributes` para normalización de archivos
- ✅ Modernizado GitHub Actions workflow
- ✅ Corregido información de scholar

## 📋 Pasos para Desplegar

### 1. Personalizar Configuración

**Edita `_config.yml` (líneas 21-22):**

```yaml
url: https://TU-USUARIO-GITHUB.github.io
baseurl: /NOMBRE-DE-TU-REPOSITORIO
```

**Ejemplo:**
- Si tu usuario es `arnoldhuaman` y el repo es `mi-portfolio`:
  ```yaml
  url: https://arnoldhuaman.github.io
  baseurl: /mi-portfolio
  ```

- Si quieres usar el dominio principal (repo llamado `TU-USUARIO.github.io`):
  ```yaml
  url: https://arnoldhuaman.github.io
  baseurl: # dejar vacío
  ```

### 2. Crear Repositorio en GitHub

1. Ve a [github.com/new](https://github.com/new)
2. Nombre del repositorio: `portfolio` (o el que prefieras)
3. Descripción: "Portfolio personal y blog de tecnología"
4. Público o Privado (GitHub Pages funciona en ambos)
5. **NO** inicialices con README (ya tienes uno)
6. Click en "Create repository"

### 3. Inicializar Git Local

Abre PowerShell en la carpeta del proyecto:

```powershell
cd "c:\Users\Arnole\Downloads\al-folio-main\al-folio-main"

# Inicializar git si no está inicializado
git init

# Verificar rama principal
git branch -M main

# Agregar todos los archivos
git add .

# Hacer commit inicial
git commit -m "Initial commit: Portfolio personal con al-folio"

# Conectar con GitHub (reemplaza TU-USUARIO y TU-REPO)
git remote add origin https://github.com/TU-USUARIO/TU-REPO.git

# Subir a GitHub
git push -u origin main
```

### 4. Configurar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Click en **Settings** (⚙️)
3. En el menú lateral, click en **Pages**
4. En "Build and deployment":
   - **Source**: Selecciona **GitHub Actions**
5. Guarda los cambios

### 5. Verificar Despliegue

1. Ve a la pestaña **Actions** en tu repositorio
2. Deberías ver un workflow "Deploy site" ejecutándose
3. Espera a que termine (tarda 2-5 minutos)
4. Si todo está ✅ verde, tu sitio está listo!

### 6. Acceder a tu Sitio

Tu sitio estará disponible en:
```
https://TU-USUARIO.github.io/TU-REPO/
```

Ejemplo: `https://arnoldhuaman.github.io/portfolio/`

## 🔧 Solución de Problemas Comunes

### ❌ Error: "The job was not started because your account is locked"

**Causa**: Problema de facturación en GitHub.

**Solución**:
1. Ve a Settings → Billing
2. Verifica tu método de pago
3. Asegúrate de tener minutos de GitHub Actions disponibles
4. Cuenta gratuita tiene 2000 minutos/mes (suficiente)

### ❌ Error: "Build failed"

**Causa**: Error en la construcción de Jekyll.

**Solución**:
1. Revisa los logs en GitHub Actions
2. Prueba localmente: `bundle exec jekyll build --verbose`
3. Verifica que `_config.yml` tenga sintaxis YAML correcta

### ❌ Error: "Page not found (404)"

**Causa**: `baseurl` incorrecto en `_config.yml`.

**Solución**:
1. Verifica que `baseurl` coincida con el nombre del repositorio
2. Si el repo se llama `TU-USUARIO.github.io`, deja `baseurl` vacío
3. Caso contrario, usa `baseurl: /nombre-repo`

### ❌ CSS/Imágenes no cargan

**Causa**: Rutas absolutas sin `baseurl`.

**Solución**:
- Usa `{{ site.baseurl }}/assets/...` en lugar de `/assets/...`
- El tema al-folio ya hace esto correctamente

### ⚠️ Warning: "Failed to hardlink files"

**Causa**: Sistema de archivos no soporta hardlinks (normal en Windows).

**Solución**:
- Este warning es normal y no afecta el despliegue
- Puedes ignorarlo o agregar `export UV_LINK_MODE=copy`

## 🎯 Próximos Pasos

Una vez desplegado:

1. **Personaliza el contenido**:
   - Edita `_pages/about.md` con tu biografía
   - Agrega tus proyectos en `_projects/`
   - Escribe posts en `_posts/`

2. **Configura dominio personalizado** (opcional):
   - Compra un dominio
   - Configura DNS CNAME
   - Agrega archivo `CNAME` al repositorio

3. **Habilita comentarios** (opcional):
   - Configura Giscus en `_config.yml`
   - Sigue instrucciones en [giscus.app](https://giscus.app/)

4. **Analytics** (opcional):
   - Agrega Google Analytics ID en `_config.yml`
   - Habilita `enable_google_analytics: true`

## 📝 Workflow de Desarrollo

Para futuras actualizaciones:

```bash
# 1. Hacer cambios en archivos
# 2. Probar localmente
bundle exec jekyll serve

# 3. Commit y push
git add .
git commit -m "Descripción de cambios"
git push

# 4. GitHub Actions desplegará automáticamente
```

## 🆘 Ayuda Adicional

- **Documentación al-folio**: [github.com/alshedivat/al-folio](https://github.com/alshedivat/al-folio)
- **Jekyll Docs**: [jekyllrb.com/docs](https://jekyllrb.com/docs/)
- **GitHub Pages**: [docs.github.com/pages](https://docs.github.com/en/pages)

---

✨ **¡Listo para desplegar!** Sigue los pasos y tu portfolio estará en línea en minutos.
