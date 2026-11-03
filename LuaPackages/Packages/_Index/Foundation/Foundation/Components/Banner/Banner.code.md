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

Use `size` to choose `Medium` (default, supports `media` and a secondary action) or `Small` (supports a `thumbnail`). Use `density` to switch between `Default` and `Compact` layouts.

Pass `onClose` to show a dismiss button. Medium uses [[Card]]'s close button and keeps it when actions are set. On Small the button is vertically centered and only appears when there is no primary action, so the chevron hides it.
