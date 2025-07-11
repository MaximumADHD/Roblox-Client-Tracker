---
category: Display
---

## Overview

InputField is a flexible input wrapper component that supports label, hint text, 
and various input states such as error, disabled, and required.

---

## Usage

`InputField` has a default width of 400px unless `width` is specified. The height is static and will depend on whether a label and helper text are provided.

The `isRequired` property should only be used on the inputs that fall in the minority. For example, if most inputs are required, only put `isRequired = false,` on the optional inputs, and `isRequired` as `nil` for the required inputs.

The `input` property take a function rendering a component which receives a ref as the only prop. 
The ref should be passed to a component and should have `focus: () -> ()` and `hover: (state: boolean) -> ()` method implemented through `React.useImperativeHandle`. See `InternalTextInput` as an example


```lua
local Foundation = require(Packages.Foundation)
local InputField = Foundation.InputField
local InputComponent = AnyLibrary.InputComponent
...

return React.createElement(InputField, {
     label = "Label",
     hint = "True"
     isRequired = true,
     input = function(ref) React.createElement(InputComponent, { ..., ref = ref }) end
})
```
