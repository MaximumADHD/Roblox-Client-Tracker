---
category: Inputs
---

## Overview

`NumberInput` is a single line number input with optional label, helper text.

---

## Usage

`NumberInput` has a default width of 400px unless `width` is specified. The height is static and will depend on whether a label and helper text are provided.

The `isRequired` property should only be used on the inputs that fall in the minority. For example, if most inputs are required, only put `isRequired = false,` on the optional inputs, and `isRequired` as `nil` for the required inputs.

Non-numerical values are not allowed. Entering anything that can't be parsed to a number won't update the last value - but will show an error state until focus is lost, and invalid values are cleared.
When input is out of focus the value returned by `formatAsString` is displayed. By default, it shows the same value.

Increase and decrease controls change value by the `step`.

You can limit `minimum` and `maximum` values with the corresponding props.

`value` is rounded automatically according to a `precision`. e.g. with the precision being 3, 0.0001 will be rounded to 0, 0.0006 to 0.001

```luau
local Foundation = require(Packages.Foundation)
local NumberInput = Foundation.NumberInput

local function Component()
	local value, setValue = React.useState(0)
	return React.createElement(NumberInput, {
		isRequired = true,
		label = "Padding",
		onChanged = function(v)
			setValue(v)
		end,
		formatAsString = function(value)
			return value .. "px"
		end,
		LayoutOrder = 1,
		value = value,
	})
end
```
