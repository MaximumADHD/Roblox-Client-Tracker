---
category: Layout
---

## Overview

`Card` groups related content in a configurable surface.

## Usage

```luau
local Foundation = require(Packages.Foundation)

React.createElement(Foundation.Card, {
	title = "Title",
	description = "Description",
}, {
	Content = React.createElement(Foundation.View),
})
```

Use `variant`, `density`, `height`, and `headerSize` to adjust appearance and layout. Optional `media`, `onActivated`, `onOverflow`, and `onClose` props add media and interactions.
