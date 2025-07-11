---
category: Display
---

## Overview

Image displays [[Images]] or any other image asset. It's used in place of `ImageLabel` and `ImageButton` engine components.

---

## Usage

`Image` takes an `Image` property that is either an image path from [[Images]] or a Roblox asset ID.

In normal cases, you can replace `ImageLabel` and `ImageButton` with `Image` directly. Note that some properties have been put into tables to improve structure and compatibility with style tokens.

`Image` also supports state updates with the `onStateChanged` callback, which gives updates on hover, press, select, and more.

!!! danger "Performance Notice"

    `onStateChanged` callback function should **never** be declared locally in a render function. For functional components, declare them in a `useCallback` hook and focus on reducing dependencies as much as possible. For class components declare them in the `Init` function.

    To reduce the number of re-renders, use `Bindings` as much as possible when driving prop changes.

See how to style `Image` quickly with the [[Style Tags]].

```lua
local Foundation = require(Packages.Foundation)
local Image = Foundation.Image
...

local onStateChanged = React.useCallback(function(state)
    print("Image state changed", state)
end, {})

return React.createElement(Image, {
    Image = "icons/graphic/blocktheft_2xl",
    onStateChanged = onStateChanged,
    tag = "padding-small grow size-2800",
})
```
