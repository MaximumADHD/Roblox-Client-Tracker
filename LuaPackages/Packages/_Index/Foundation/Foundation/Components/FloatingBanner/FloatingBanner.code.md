---
category: Layout
---

## Overview

`FloatingBanner` pins a [[Banner]] to the bottom of the screen, above page content and below drawers, [[Sheet]]s, [[Dialog]]s, and notifications, so anything it opens draws on top of it. It fades and rises in on open, and fades and drops out on close, with the same motion as [[Dialog]]. It has no backdrop and does not block input to the content behind it.

## Usage

```luau
local Foundation = require(Packages.Foundation)

local isOpen, setIsOpen = React.useState(true)

React.createElement(Foundation.FloatingBanner, {
	isOpen = isOpen,
	title = "Title",
	description = "Description",
	onClose = function()
		setIsOpen(false)
	end,
})
```

`FloatingBanner` is controlled: keep it mounted and toggle `isOpen`, so the exit transition can play before it unmounts. Use `onCloseComplete` to run work after the banner has fully left the screen.

The banner always uses the small, compact [[Banner]] layout (`size = Small`, `density = Compact`), so it accepts the small banner's content: `title`, `description`, `thumbnail`, a primary action, and `onClose`. As with a small Banner, the close button shows only when there is no primary action.
