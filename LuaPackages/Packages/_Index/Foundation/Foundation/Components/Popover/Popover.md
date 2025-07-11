---
category: Layout
---

## Overview

A `Popover` is a surface that displays content relative to an anchor element. The `Popover` component is composed of three subcomponents:

- [Popover.Root](#root): a surface-level container for grouping related components.
- [Popover.Anchor](#anchor): a component that acts as the anchor element for the `Popover`.
- [Popover.Content](#content): the wrapper for the `Popover`'s main content.

---

## Usage

```lua
local Foundation = require(Packages.Foundation)
local Popover = Foundation.Popover
local PopoverSide = Foundation.Enums.PopoverSide
local Button = Foundation.Button
local Text = Foundation.Text

...
local open, setOpen = React.useState(false)

return React.createElement(Popover.Root, {
    isOpen = open,
} {
    Anchor = React.createElement(Popover.Anchor, nil, {
        React.createElement(Button, {
            text = "Toggle Popover",
            onActivated = function()
                setOpen(not open)
            end,
        }),
    }),
    Content = React.createElement(Popover.Content, nil, {
        React.createElement(Text, {
            text = "This is a popover!",
        }),
    }),
})
```

## Positioning implementation

### Required Events and Refs

There is a `ref` for the anchor, content, and the overlay.

- The anchor `ref` is used to listen for `AbsolutePosition` and `AbsoluteSize` changes.
- The content `ref` is used to read the `AbsoluteSize` of the content.
- The overlay `ref` is used to listen for `AbsolutePosition` and `AbsoluteSize` changes.

If the popover is not open, no `AbsolutePosition`s or `AbsoluteSize`s will be read from the `ref`s. This is to prevent unnecessary re-layouts.

### Calculation

Calculating the position of the popover has three steps:

1. Check whether the anchor is on the screen.
   1. If the anchor is not on the screen, the popover will not be shown and the calculation exits early.
2. Calculate which side the popover should be placed on.
   1. If the popover does not have space on the desired side, but the opposite side has space, it will switch sides.
3. Calculate the position of the popover.
   1. With the final side and alignment, calculate the position of the popover relative to the anchor. The position will be clamped to the screen.
