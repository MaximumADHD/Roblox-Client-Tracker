---
category: Actions
---

## Overview

`KeyLabel` is a user interface element that displays an image of a key or button, and can handle long press inputs.

if `holdBehavior` is not provided then KeyLabel will be a static element that displays a key or button image.

if `holdBehavior` is provided then KeyLabel will call `onBeginHold` and display a circular progress bar when the given `keyCode` is pressed, and will trigger `onEndHold` when the key is released or `holdTime` duration is reached. `onEndHold` will receive one argument, `didActivate`, which indicates whether the button was held for the full `holdTime` duration.

## How to Use

Here is an example of how to create a `KeyLabel` component with a `holdTime` of 1 second.

```lua
local Foundation = require(Packages.Foundation)
local KeyLabel = Foundation.KeyLabel
...
return React.createElement(KeyLabel, {
    keyCode = Enum.KeyCode.A,
    holdBehavior = {
        holdTime = 1,
        onBeginHold = function()
            print("began holding A!")
        end,
        onEndHold = function(didActivate)
            if didActivate then
                -- do something
            else
                -- do nothing
            end
        end
    }
})
...
```