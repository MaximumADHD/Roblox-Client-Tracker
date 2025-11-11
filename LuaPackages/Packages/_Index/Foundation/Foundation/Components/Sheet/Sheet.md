---
category: Layout
---

## Overview
A Sheet is a contextual, highly adaptable interface element sliding in from one edge of the viewport, acting as its own self containing surface to support deeper, focused interactions while maintaining context with underlying content.

## Screen-aware Layout
The Sheet component will switch between bottom, side, and center sheet based on the screen size, orientation, and props.

- Bottom Sheet: Used specifically for small screens in portrait orientation.
- Side Sheet: Used for larger screens or small screens in landscape orientation.
- Center Sheet: Used in place of side sheet when `preferCenterSheet` is `true`.

## Snap Points
Snap points define the height(s) at which a bottom sheet can rest. These do not impact side or center sheets. You can provide an array of snap points (in pixels or percentage of the screen height) via the `snapPoints` prop. The sheet will snap to the nearest point when swiped. 

!!! info "Pixel Snap Points"

    If you use pixel values for a snap point, make use of the `useScaledValue` hook to ensure proper scaling across different screen sizes.

If snap points are omitted, the bottom sheet will automatically size to fit its content.

---

## Usage

### Comprehensive Example
```luau
local Foundation = require(Packages.Foundation)
local Sheet = Foundation.Sheet

...

local sheetOpen, setSheetOpen = React.useState(true)

return React.createElement(Sheet.Root, {
    isOpen = sheetOpen,
    onClose = function()
        setSheetOpen(false)
    end,
	snapPoints = { 0.5, 0.9 },
}, {
    Header = React.createElement(Sheet.Header, nil, {
        ...
    }),
    Content = React.createElement(Sheet.Content, nil, {
        ...
    }),
    Actions = React.createElement(Sheet.Actions, nil, {
        ...
    }),
})
```
