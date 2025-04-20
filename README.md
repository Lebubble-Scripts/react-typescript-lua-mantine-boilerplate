# FiveM NUI React Boilerplate

A comprehensive boilerplate for developing FiveM resources with a modern React-based NUI (Native UI) interface. This project is inspired by and builds upon the excellent [fivem-react-boilerplate-lua](https://github.com/project-error/fivem-react-boilerplate-lua) by Project Error.

## Overview

This boilerplate streamlines the development of FiveM resources by providing a pre-configured environment that bridges the gap between Lua game scripts and a modern web-based UI. It handles the complex parts of NUI message passing and state management for you.

## Features

- **Complete FiveM Resource Structure**: Properly organized with client, server, and web directories
- **Modern Frontend Architecture**:
  - React 18 with TypeScript support
  - SCSS styling with variables and nested selectors
  - Custom UI components with responsive design
  - Cyberpunk-inspired visual theme with customizable color palette
- **Communication Layer**: 
  - Built-in NUI message handlers between Lua and JavaScript
  - Type-safe event system for client-server communication
  - Debug mode for development
- **UI Components**:
  - Tabbed interface system
  - Modal dialogs
  - Custom buttons and form elements
  - Animated transitions
- **Development Tools**:
  - Hot module replacement for rapid UI development
  - Browser debugging support
  - Vite for fast builds

## Integration with ox_lib

This boilerplate seamlessly integrates with ox_lib, providing additional utilities and standardized UI components common in FiveM development.

## Getting Started

1. Clone this repository
2. Install dependencies: `cd web && npm install`
3. Start development server: `npm run dev`
4. Build for production: `npm run build`

## Customization

The SCSS variables in `index.scss` allow you to quickly customize the appearance to match your server's theme, with the main color palette defined at the top of the file.

## Credits

- Based on [fivem-react-boilerplate-lua](https://github.com/project-error/fivem-react-boilerplate-lua) by Project Error
- Utilizes ox_lib for extended functionality
- Custom UI styling and components by Lebubble Scripts

This boilerplate saves hours of setup time and provides a solid foundation for creating visually impressive and functionally robust FiveM resources.
