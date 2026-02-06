# Script de Verificación Pre-Despliegue
# Ejecuta este script antes de subir a GitHub

Write-Host "🔍 Verificando configuración del proyecto al-folio..." -ForegroundColor Cyan
Write-Host ""

# Verificar que estamos en el directorio correcto
if (-not (Test-Path "_config.yml")) {
    Write-Host "❌ Error: No se encuentra _config.yml" -ForegroundColor Red
    Write-Host "   Asegúrate de ejecutar este script desde la raíz del proyecto" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ Directorio correcto" -ForegroundColor Green

# Verificar archivos críticos
$criticalFiles = @(
    "_config.yml",
    "Gemfile",
    ".gitignore",
    ".gitattributes",
    ".github/workflows/deploy.yml",
    "README.md",
    "DEPLOY.md"
)

Write-Host ""
Write-Host "📁 Verificando archivos críticos..." -ForegroundColor Cyan
foreach ($file in $criticalFiles) {
    if (Test-Path $file) {
        Write-Host "  ✅ $file" -ForegroundColor Green
    } else {
        Write-Host "  ❌ $file (faltante)" -ForegroundColor Red
    }
}

# Verificar configuración en _config.yml
Write-Host ""
Write-Host "⚙️  Verificando _config.yml..." -ForegroundColor Cyan

$config = Get-Content "_config.yml" -Raw

# Verificar URL
if ($config -match 'url:\s*https://arnoldhuaman\.github\.io') {
    Write-Host "  ⚠️  URL usa valor genérico 'arnoldhuaman'" -ForegroundColor Yellow
    Write-Host "     Actualiza con tu usuario de GitHub real" -ForegroundColor Yellow
} elseif ($config -match 'url:\s*https://alshedivat\.github\.io') {
    Write-Host "  ❌ URL todavía usa el demo (alshedivat)" -ForegroundColor Red
    Write-Host "     DEBES cambiar esto antes de desplegar" -ForegroundColor Red
} else {
    Write-Host "  ✅ URL configurada" -ForegroundColor Green
}

# Verificar baseurl
if ($config -match 'baseurl:\s*/portfolio') {
    Write-Host "  ⚠️  baseurl usa valor genérico '/portfolio'" -ForegroundColor Yellow
    Write-Host "     Actualiza con el nombre de tu repositorio" -ForegroundColor Yellow
} elseif ($config -match 'baseurl:\s*/al-folio') {
    Write-Host "  ❌ baseurl todavía usa el demo (/al-folio)" -ForegroundColor Red
    Write-Host "     DEBES cambiar esto antes de desplegar" -ForegroundColor Red
} else {
    Write-Host "  ✅ baseurl configurado" -ForegroundColor Green
}

# Verificar archivos de recursos
Write-Host ""
Write-Host "📄 Verificando recursos..." -ForegroundColor Cyan

$resources = @(
    "assets/pdf/algorithms_guide.txt",
    "assets/pdf/data_structures.txt",
    "assets/pdf/dev_best_practices.txt"
)

foreach ($resource in $resources) {
    if (Test-Path $resource) {
        Write-Host "  ✅ $resource" -ForegroundColor Green
    } else {
        Write-Host "  ⚠️  $resource (faltante)" -ForegroundColor Yellow
    }
}

# Verificar Git
Write-Host ""
Write-Host "🔧 Verificando Git..." -ForegroundColor Cyan

try {
    $gitStatus = git status 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "  ✅ Git inicializado" -ForegroundColor Green
        
        # Verificar si hay remote
        $remotes = git remote -v 2>&1
        if ($remotes -match "origin") {
            Write-Host "  ✅ Remote 'origin' configurado" -ForegroundColor Green
        } else {
            Write-Host "  ⚠️  No hay remote configurado" -ForegroundColor Yellow
            Write-Host "     Ejecuta: git remote add origin https://github.com/TU-USUARIO/TU-REPO.git" -ForegroundColor Yellow
        }
    } else {
        Write-Host "  ⚠️  Git no inicializado" -ForegroundColor Yellow
        Write-Host "     Ejecuta: git init" -ForegroundColor Yellow
    }
} catch {
    Write-Host "  ❌ Git no está instalado" -ForegroundColor Red
}

# Resumen final
Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host "📋 RESUMEN" -ForegroundColor Cyan
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host ""
Write-Host "Antes de subir a GitHub:" -ForegroundColor White
Write-Host "1. ✏️  Edita _config.yml con tu usuario y repositorio" -ForegroundColor Yellow
Write-Host "2. 🔍 Revisa que todos los archivos críticos existan" -ForegroundColor Yellow
Write-Host "3. 📖 Lee DEPLOY.md para instrucciones completas" -ForegroundColor Yellow
Write-Host ""
Write-Host "Luego ejecuta:" -ForegroundColor White
Write-Host "  git add ." -ForegroundColor Cyan
Write-Host "  git commit -m 'Initial commit'" -ForegroundColor Cyan
Write-Host "  git remote add origin https://github.com/TU-USUARIO/TU-REPO.git" -ForegroundColor Cyan
Write-Host "  git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "✨ ¡Tu sitio se desplegará automáticamente!" -ForegroundColor Green
Write-Host ""
