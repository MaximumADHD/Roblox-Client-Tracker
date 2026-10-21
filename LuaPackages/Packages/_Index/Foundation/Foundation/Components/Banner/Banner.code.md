---
category: Layout
---

## Overview

`Banner` highlights a message with an optional action.

## Usage

```luau
local Foundation = require(Packages.Foundation)

React.createElement(Foundation.Banner, {
	title = "Title",
	description = "Description",
	actions = {
		primary = { onActivated = function() end },
	},
})
```

Use `variant` to choose between `Informative` (default, supports `media` and a secondary action) and `Upsell` (supports a `thumbnail`). Use `density` to switch between `Default` and `Compact` layouts.
