---
category: Display
---

## Overview

`Toast` is an interactive user interface element incorporating multiple optional components such as:

* Image
* Text (Body and Header)
* Actions (Up to two)

If any of the fields are not provided then the corresponding components will not display.

---

## Usage

`Toast` will automatically change its layout and resize accordingly based on the props provided. Body text will wrap, header text will not.

Actions should be provided as an array, with entries conforming to the ActionProps type (shared with other components):

```luau
type ActionProps = {
    onActivated : (() -> ()),
    variant : ButtonVariant?,
    text : string,
}
```

If buttonVariant is not provided, it will default to [[ButtonVariant]].Standard

```luau
local Foundation = require(Packages.Foundation)
local Toast = Foundation.Toast
local ButtonVariant = Foundation.Enums.ButtonVariant
local ThumbnailType = Foundation.Enums.ThumbnailType
local getRbxThumb = Foundation.Utility.getRbxThumb

return React.createElement(Toast, {
    title = "Toast Notification",
    text = "This is a toast.",
    icon = getRbxThumb(ThumbnailType.AvatarHeadShot, 6181525679),
    actions = {
        {
            onActivated = function() print("action 1") end,
            variant = ButtonVariant.Subtle,
            -- This button will be Secondary.
            text = "Action 1",
        },
        {
            onActivated = function() print("action 2") end,
            variant = ButtonVariant.Standard,
            -- This button is overriding PrimaryBrand with Primary
            text = "Action 2",
        }
    }
})
```
