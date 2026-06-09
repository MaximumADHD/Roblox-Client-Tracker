---
category: Actions
---

## Overview

`ButtonGroup` renders a group of [[Button]]s with consistent sizing, spacing, and layout. It handles two layout orientations:

- **Horizontal** _(default)_ — buttons sit side-by-side in a row. By default they hug their content width; pass `fillBehavior = FillBehavior.Fill` to make them share the available width equally.
- **Vertical** — buttons stack in a column and always stretch to full width.

All buttons in a group share the same [[InputSize]].

---

## Usage

### Horizontal (hug)

Buttons sit side-by-side and are as wide as their text.

```luau
local Foundation = require(Packages.Foundation)
local ButtonGroup = Foundation.ButtonGroup
local ButtonVariant = Foundation.Enums.ButtonVariant

return React.createElement(ButtonGroup, {
    buttons = {
        {
            text = "Cancel",
            variant = ButtonVariant.Standard,
            onActivated = function() end,
        },
        {
            text = "Accept",
            variant = ButtonVariant.Emphasis,
            onActivated = function() end,
        },
    },
})
```

### Horizontal (fill)

Buttons expand to share the container width equally.

```luau
local Foundation = require(Packages.Foundation)
local ButtonGroup = Foundation.ButtonGroup
local ButtonVariant = Foundation.Enums.ButtonVariant
local FillBehavior = Foundation.Enums.FillBehavior

return React.createElement(ButtonGroup, {
    fillBehavior = FillBehavior.Fill,
    buttons = {
        {
            text = "Cancel",
            variant = ButtonVariant.Standard,
            onActivated = function() end,
        },
        {
            text = "Accept",
            variant = ButtonVariant.Emphasis,
            onActivated = function() end,
        },
    },
})
```

### Vertical

Buttons stack in a column. Each button automatically fills the full width — no extra prop needed.

```luau
local Foundation = require(Packages.Foundation)
local ButtonGroup = Foundation.ButtonGroup
local ButtonVariant = Foundation.Enums.ButtonVariant
local Orientation = Foundation.Enums.Orientation

return React.createElement(ButtonGroup, {
    orientation = Orientation.Vertical,
    buttons = {
        {
            text = "Accept and continue",
            variant = ButtonVariant.Emphasis,
            onActivated = function() end,
        },
        {
            text = "Cancel",
            variant = ButtonVariant.Standard,
            onActivated = function() end,
        },
    },
})
```

### With icons and states

Each button can carry an icon and be individually disabled or set to a loading state.

```luau
local Foundation = require(Packages.Foundation)
local ButtonGroup = Foundation.ButtonGroup
local ButtonVariant = Foundation.Enums.ButtonVariant
local FillBehavior = Foundation.Enums.FillBehavior

return React.createElement(ButtonGroup, {
    fillBehavior = FillBehavior.Fill,
    buttons = {
        {
            text = "Join",
            icon = "play-small",
            variant = ButtonVariant.Emphasis,
            onActivated = function() end,
        },
        {
            text = "Favorite",
            icon = "heart",
            variant = ButtonVariant.Standard,
            onActivated = function() end,
            isDisabled = true,
        },
    },
})
```
