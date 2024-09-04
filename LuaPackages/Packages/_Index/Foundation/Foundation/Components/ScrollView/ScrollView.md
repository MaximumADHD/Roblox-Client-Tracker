---
category: Layout
---

## Overview

ScrollView is a container component that can be used to layout other components. It's used in place of the `ScrollingFrame` engine component.

## How to Use

In normal cases, you can replace `ScrollingFrame` with `ScrollView` directly. Note that some properties have been put into tables to improve structure and compatibility with style tokens.

`ScrollView` also supports state updates like the ones available in [[View]]. See [[View]] documentation for more information

!!! danger "Layouts"

    Due to engine bugs, the actual `ScrollingFrame` instance rendered from `ScrollView` is wrapped inside a [[View]]. Tags passed into `ScrollView` are applied to that parent view, and the `ScrollingFrame` is set to fill it's parent. If you want to use a list layout with `ScrollView`, please use the prop-driven approach, not the tag driven one.

    When engine no longer sinks input to the scrollbars and supports `mouseEnter` events on them, we will be able to remove the [[View]] wrapper and render a `ScrollingFrame` directly.

See how to style `ScrollView` quickly with the [[Style Tags]].

```lua
local Foundation = require(Packages.Foundation)
local ScrollView = Foundation.ScrollView
local ScrollBarVisibility = Foundation.Enums.ScrollBarVisibility
...

local onStateChanged = React.useCallback(function(state)
    print("ScrollView state changed", state)
end, {})

return React.createElement(ScrollView, {
    onStateChanged = onStateChanged,
    scroll = {
        scrollBarVisibility = ScrollBarVisibility.Always,
	    ScrollingDirection = Enum.ScrollingDirection.Y,
    },
    tag = "row align-y-center padding-small",
}, {
    ...
})
```
