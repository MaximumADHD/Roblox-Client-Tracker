---
category: Provider
---

## Overview

`BackgroundStyleContext` provides a background that can be used by elements displayed on top of semi-transparent elements
to calculate the corresponding opaque color.

---

## Usage

Example usage can be found in `Chip` with `AvatarGroup`. `AvatarGroup` needs a solid backplate matching the `Chip` background which is semi-transparent
and to calculate the corresponding opaque color we need to know the exact background `Chip` is placed on top. 
By default, `bg-surface-100` is used and if you position your `Chip` on a different background you have to provide it with the Context.  

```luau
local Foundation = require(Packages.Foundation)
local View = Foundation.View
local Chip = Foundation.Chip
local BackgroundStyleContext = Foundation.BackgroundStyleContext
local useTokens = Foundation.Hooks.useTokens

function Component()
    local tokens = useTokens()
    local bg = tokens.Color.Surface.Surface_300

    React.createElement(View, {
        backgroundStyle = bg
    }, React.createElement(BackgroundStyleContext.Provider, { value = bg },
        React.createElement(Chip, {
            text = "Chip on a custom background",
            onActivated = function()
                print(`Chip activated`)
            end,
            leading = {
                type = "AvatarGroup" :: "AvatarGroup",
                props = {
                    avatars = {
                        24813339,
                        24813338,
                    },
                    type = AvatarGroupType.Stacked,
                    max = 3,
                },
            },
        })
    ))
end

return React.createElement(Component)
```
