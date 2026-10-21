# Markdown

Roblox components for markdown parsing and rendering.

## Overview

This module provides a complete markdown solution including a parser and renderer for displaying markdown content in Roblox experiences.

## Exports

- `Components` - React components including `MarkdownViewer`
- `Enums` - Node types and other enumerations
- `Parsers` - Markdown parsing utilities
- `Utils` - Utility functions

## Strikethrough

The CommonMark parser supports `~foo~` and `~~foo~~`. Both forms produce
`STYLED_TEXT` nodes with `attributes.style` set to `STRIKE`, so they share the
existing strikethrough renderer and custom `STYLED_TEXT` handling.

The WikiMarkdown parser supports only the existing single-tilde `STRIKE` delimiter.
