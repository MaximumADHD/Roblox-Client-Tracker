---
category: Layout
---

## Overview

A `HeaderBar` provides a persistent, top-level navigation container that organizes leading actions, central content, and trailing actions into a responsive horizontal layout. It adapts its internal spacing across breakpoints to maintain visual consistency at any viewport width.

The HeaderBar uses a slot-based composition model. Each slot (`Leading`, `Content`, `Trailing`) occupies a fixed position in the layout, with `Content` growing to fill available space while the side slots shrink to fit their children.

## Responsive Behavior

The HeaderBar automatically adjusts its internal sizing based on the current breakpoint:

- **XSmall / Small**: Compact sizing (1400-scale)
- **Medium / Large**: Standard sizing (1600-scale)
- **XLarge / XXLarge**: Expanded sizing (1800-scale)

No manual breakpoint handling is required. The component measures its own container and applies the appropriate size tokens.

## HeaderBar.Actions Behavior

The `HeaderBar.Actions` component renders a row of [[IconButton]] elements from a declarative list of actions. It can be placed inside either the `Leading` or `Trailing` slot, and it automatically adjusts its edge padding based on which slot it occupies to maintain proper alignment with the header bar's outer edges.

### Action Properties

Each action in the `actions` array requires:

- `id`: A unique identifier for the action
- `icon`: An `IconName` value, or a `{ name, variant }` table when specifying an icon variant
- `onActivated`: Callback invoked when the action is pressed

---

## Usage

### Comprehensive Example

```luau
local Foundation = require(Packages.Foundation)
local HeaderBar = Foundation.HeaderBar
local IconName = Foundation.Enums.IconName

return React.createElement(HeaderBar.Root, nil, {
    Leading = React.createElement(HeaderBar.Leading, nil, {
        Actions = React.createElement(HeaderBar.Actions, {
            actions = {
                {
                    id = "back",
                    icon = IconName.ChevronLargeLeft,
                    onActivated = function()
                        print("Navigate back")
                    end,
                },
            },
        }),
    }),
    Content = React.createElement(HeaderBar.Content, nil, {
        Title = React.createElement(Foundation.Text, {
            Text = "Page Title",
            tag = "auto-xy content-emphasis text-heading-medium",
        }),
    }),
    Trailing = React.createElement(HeaderBar.Trailing, nil, {
        Actions = React.createElement(HeaderBar.Actions, {
            actions = {
                {
                    id = "search",
                    icon = IconName.MagnifyingGlass,
                    onActivated = function()
                        print("Open search")
                    end,
                },
                {
                    id = "more",
                    icon = IconName.MoreHorizontal,
                    onActivated = function()
                        print("Open menu")
                    end,
                },
            },
        }),
    }),
})
```

### Transparent HeaderBar

```luau
local Foundation = require(Packages.Foundation)
local HeaderBar = Foundation.HeaderBar
local IconName = Foundation.Enums.IconName

return React.createElement(HeaderBar.Root, {
    hasBackground = false,
}, {
    Leading = React.createElement(HeaderBar.Leading, nil, {
        Actions = React.createElement(HeaderBar.Actions, {
            actions = {
                {
                    id = "close",
                    icon = IconName.Close,
                    onActivated = props.onClose,
                },
            },
        }),
    }),
    Content = React.createElement(HeaderBar.Content, nil, {
        Title = React.createElement(Foundation.Text, {
            Text = "Overlay Title",
            tag = "auto-xy content-emphasis text-heading-medium",
        }),
    }),
})
```
