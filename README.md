# Fullstack Workspace

[![Neovim](https://img.shields.io/badge/Neovim-0.10+-blueviolet)](https://neovim.io)
[![LazyVim](https://img.shields.io/badge/LazyVim-Config-ff69b4)](https://github.com/LazyVim/LazyVim)
[![TypeScript](https://img.shields.io/badge/TypeScript--blue)](https://www.typescriptlang.org/)
[![React](https://img.shields.io/badge/React-61dafb)](https://reactjs.org/)
[![Python](https://img.shields.io/badge/Python-3776ab)](https://www.python.org/)

<p align="center">
  <img src="https://github.com/PonchoCeniceros/ponchoceniceros_x_lazyvim/blob/main/utils/imgs/portrait.png">
</p>

🔧 **Entorno de desarrollo completo** con 💤 [LazyVim](https://github.com/LazyVim/LazyVim) optimizado para **fullstack development** con TypeScript, React y Python.

> **Fullstack Workspace**: Configuración profesional de Neovim para productividad máxima en desarrollo web y Machine Learning.

## 🎨 Selección de Tema

Esta configuración incluye tres temas de color optimizados para programación:

### Temas Disponibles
- **`carbonfox`** - Tonos negro/gris profesionales ⭐ (predeterminado)
- **`onedark`** - Tema oscuro profesional (estilo "cool")
- **`catppuccin`** - Tema popular (sabor "mocha")

### Selector de Temas

Usa el script `theme-selector.sh` para gestionar temas fácilmente:

**Ver tema actual:**
```bash
./theme-selector.sh
```

**Cambiar tema:**
```bash
./theme-selector.sh carbonfox
./theme-selector.sh onedark
./theme-selector.sh catppuccin
```

### Uso con Variable de Entorno

También puedes seleccionar el tema al iniciar Neovim utilizando la variable de entorno `NVIM_THEME`:

**Para usar `carbonfox` (recomendado):**
```bash
NVIM_THEME=carbonfox nvim
```

**Para usar `onedark`:**
```bash
NVIM_THEME=onedark nvim
```

**Para usar `catppuccin`:**
```bash
NVIM_THEME=catppuccin nvim
```

**Por defecto (carbonfox):**
```bash
nvim
```

### 🌟 Características de CarbonFox

El tema `carbonfox` está optimizado para:
- **Stack MERN** - Contraste ideal para JavaScript/TypeScript
- **Python/ML** - Sintaxis clara para librerías científicas
- **Productividad** - Menor fatiga visual con tonos suaves
- **Paleta**: Fondo oscuro `#161616` con acentos grises profesionales

## 🎯 Stack Soportado

Este workspace está optimizado para:

### 🌐 **Desarrollo Web Fullstack**
- **TypeScript** - Tipado estático y autocompletado inteligente
- **React/Next.js** - Desarrollo de componentes con hooks y TypeScript
- **Node.js** - Backend y desarrollo de APIs
- **JavaScript** - Soporte completo con ES6+

### 🐍 **Python & Machine Learning**
- **Python** - LSP con Pyright para análisis estático
- **Data Science** - Soporte para pandas, numpy, matplotlib
- **Machine Learning** - Autocompletado para scikit-learn, TensorFlow, PyTorch
- **Jupyter** - Integración con notebooks de investigación

### 🛠️ **Herramientas de Productividad**
- **Git** - Integración completa con Git commands
- **Testing** - Soporte para Jest, pytest, testing-library
- **Formatting** - Prettier, Black, y formateo automático
- **Linting** - ESLint, Pylint, y análisis de código

## ⚡ Comandos Más Frecuentes

### 🎹 Notación `<leader>`
- `<leader>` = barra espaciadora (`<Space>`) por defecto en LazyVim
- `<C-w>` = `Ctrl + w`
- `<S-Tab>` = `Shift + Tab`
- `<Tab>` = `Tab`

### 📝 Edición de Código
| Comando | Descripción |
|---------|-------------|
| `i` | Insertar después del cursor *(invertido)* |
| `a` | Insertar antes del cursor *(invertido)* |
| `I` | Insertar al final de línea *(invertido)* |
| `A` | Insertar al inicio de línea *(invertido)* |
| `gcc` | Comentar/descomentar línea actual |
| `gc` + movimiento | Comentar/descomentar múltiples líneas |
| `yi"` | Copiar texto entre comillas |
| `ci"` | Cambiar texto entre comillas |
| `di"` | Eliminar texto entre comillas |

### 🔍 Búsqueda y Navegación
| Comando | Descripción |
|---------|-------------|
| `<leader>ff` | Buscar archivos por nombre |
| `<leader>fg` | Buscar texto en archivos (live grep) |
| `<leader>fb` | Buscar buffers abiertos |
| `<leader>fh` | Buscar ayuda |
| `<leader>fr` | Buscar archivos recientes |
| `gd` | Ir a definición |
| `gr` | Ir a referencias |
| `gi` | Ir a implementación |
| `K` | Mostrar documentación flotante mejorada |

### 🔄 Gestión de Buffers y Ventanas
| Comando | Descripción |
|---------|-------------|
| `<leader>bb` | Cambiar al buffer anterior |
| `<Tab>` / `<S-Tab>` | Navegar entre buffers |
| `<leader>bd` | Cerrar buffer |
| `<leader>bD` | Cerrar todos los buffers excepto el actual |
| `<S-Left><S-Left>` | Navegar a ventana izquierda |
| `<S-Right><S-Right>` | Navegar a ventana derecha |
| `<S-Up><S-Up>` | Navegar a ventana superior |
| `<S-Down><S-Down>` | Navegar a ventana inferior |
| `<S-Left>` | Buffer anterior |
| `<S-Right>` | Buffer siguiente |
| `<C-w>s` | Dividir ventana horizontalmente |
| `<C-w>v` | Dividir ventana verticalmente |
| `<C-w>c` | Cerrar ventana actual |

### 🚀 Productividad
| Comando | Descripción |
|---------|-------------|
| `<leader>w` | Guardar archivo |
| `<leader>q` | Cerrar Neovim |
| `<leader>e` | Explorador de archivos |
| `<leader>gg` | Git status |
| `<leader>gl` | Git log |
| `<leader>ca` | Code actions |
| `<leader>rn` | Renombrar variable |

### 🎯 LSP y Debugging
| Comando | Descripción |
|---------|-------------|
| `<leader>xx` | Mostrar warnings y errores señalados por el LSP |
| `<leader>ls` | Mostrar símbolos del buffer |
| `<leader>lR` | Renombrar en todo el proyecto |
| `<leader>la` | Code actions |
| `<leader>le` | Mostrar diagnósticos |
| `<leader>ld` | Ir a definición |
| `<leader>lr` | Mostrar referencias |
| `<leader>li` | Mostrar información |
| `F10` | Step over (debug) |
| `F5` | Start/Continue debug |

## ⚡ Keymaps Personalizados

Esta configuración incluye keymaps personalizados para mejorar la productividad:

### 🔄 Navegación de Ventanas y Buffers
Se han reemplazado los keymaps tradicionales `<C-h/j/k/l>` y `<S-h/l>` por versiones más intuitivas:

- **Ventanas**: `Shift` + **doble flecha** → Navegación entre ventanas
- **Buffers**: `Shift` + **flecha** → Navegación entre buffers

**Ventajas:**
- Más intuitivo: flechas indican dirección
- Sin conflictos con keymaps de LazyVim

## 🌟 Mejoras de Documentación Flotante

Tu configuración ahora incluye **lspsaga.nvim** con mejoras específicas:

### ✨ **Características Principales**
- **Ventanas flotantes mejoradas** con bordes redondeados
- **Icons visuales** para diferentes tipos de elementos (🔧 funciones, 🏛️ clases, etc.)
- **Soporte multi-lenguaje** (TypeScript, Python, JavaScript, React)
- **Navegación de enlaces** con `gx` en documentación

### 🔍 **Para TypeScript Interfaces**
- Al hacer hover sobre una interface, verás:
  - Lista completa de métodos disponibles
  - Firmas de funciones con tipos de parámetros
  - Documentación integrada sin necesidad de navegar
  - Tipos de retorno explícitos

### 🐍 **Para Python**
- Soporte mejorado para docstrings
- Información de funciones con tipos
- Documentación de módulos clara y legible

## 📦 Instalación

```bash
# Clonar el repositorio
git clone https://github.com/tu-usuario/fullstack-workspace.git ~/.config/nvim

# Iniciar Neovim
nvim
```

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Este workspace está diseñado para evolucionar con las mejores prácticas de desarrollo fullstack.

### 📋 **To-Do:**
- [ ] Agregar soporte para más lenguajes
- [ ] Configuraciones específicas por proyecto
- [ ] Integración con más herramientas de desarrollo

---

**⭐ Star este repositorio si te ayuda en tu desarrollo diario!**
