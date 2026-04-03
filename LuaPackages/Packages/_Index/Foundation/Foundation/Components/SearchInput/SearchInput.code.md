---
category: Inputs
---

## Overview

`SearchInput` is a single-line text input designed for search interactions. It includes a leading search icon and supports three shapes (Rounded, Pill, Box) and three visual variants (Standard, Contrast, Utility).

---

## Usage

`SearchInput` is 400px wide (scaled alongside `Size` tokens) by default unless `width` is specified. The height is determined by the `size` prop.

```luau
local Foundation = require(Packages.Foundation)
local SearchInput = Foundation.SearchInput
local InputSize = Foundation.Enums.InputSize
local InputVariant = Foundation.Enums.InputVariant
local SearchInputShape = Foundation.Enums.SearchInputShape

local function Component()
    local text, setText = React.useState("")
    return React.createElement(SearchInput, {
        text = text,
        size = InputSize.Medium,
        variant = InputVariant.Standard,
        shape = SearchInputShape.Rounded,
        onChanged = function(txt)
            setText(txt)
        end,
        onFocusGained = function()
            print("focused")
        end,
        onFocusLost = function(inputObject)
            print("lost focus")
        end,
        LayoutOrder = 1,
    })
end
```
