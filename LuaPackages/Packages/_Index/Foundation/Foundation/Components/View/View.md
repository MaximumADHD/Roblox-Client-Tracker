---
category: Layout
---

## Overview

View is a container component that can be used to layout other components. It's used in place of `Frame` and `CanvasGroup` engine components.

## How to Use

In normal cases, you can replace `Frame` and `CanvasGroup` with `View` directly. Note that some properties have been put into tables to improve structure and compatibility with style tokens.

`View` also supports state updates with the `onStateChanged` callback, which gives updates on hover, press, select, and more.

!!! danger "Performance Notice"

    `onStateChanged` callback function should **never** be declared locally in a render function. For functional components, declare them in a `useCallback` hook and focus on reducing dependencies as much as possible. For class components declare them in the `Init` function.

    To reduce the number of re-renders, use `Bindings` as much as possible when driving prop changes.

See how to style `View` quickly with the [[Style Tags]].

```lua
local Foundation = require(Packages.Foundation)
local View = Foundation.View
...

local onStateChanged = React.useCallback(function(state)
    print("View state changed", state)
end, {})

return React.createElement(View, {
    onStateChanged = onStateChanged,
    tag = "row align-y-center padding-small",
}, {
    ...
})
```
