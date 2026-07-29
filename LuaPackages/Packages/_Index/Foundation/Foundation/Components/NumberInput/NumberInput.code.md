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

You can pass a `prefix` or `suffix` that render statically alongside the `NumberInput`'s value.

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
		prefix = "$",
		suffix = "px",
		LayoutOrder = 1,
		value = value,
	})
end
```

### `onTextChanged`

While values can only be numbers, you can choose to read the exact text being written if you need it using `onTextChanged`. This is useful for doing things like evaluating expressions.

If `onTextChanged` is specified, you will not get the error highlights by default when a user starts typing in something that isn't a number. It is up to your code to surface any errors through something like `hasError`.

Here is an example of a primitive calculator, where the user can either provide a number, or an addition.

```lua
local Foundation = require(Packages.Foundation)
local NumberInput = Foundation.NumberInput

local function computeExpression(text: string): number?
    local asNumber = tonumber(text)
    if asNumber ~= nil then
        return asNumber
    end

    -- 123 + 456
    local left, right = string.match("^([0-9]+)%s*+%s*([0-9]+)$")
    if left == nil or right == nil then
        return nil
    end

    local leftAsNumber = tonumber(left)
    local rightAsNumber = tonumber(right)

    if leftAsNumber == nil or rightAsNumber == nil then
        return nil
    end

    return leftAsNumber + rightAsNumber
end

local function Component()
    local value, setValue = React.useState(0)
    local text, setText = React.useState<<string?>>(nil)

    local expression = text and computeExpression(text)

    return React.createElement(NumberInput, {
        label = "Input",

        -- This will be called if the value is a plain ol' number.
        -- You need this no matter what, because the user can do things
        -- like slide the number input to change the value without
        -- typing in any text.
        onChanged = setValue,
        onTextChanged = setText,

        hasError = text ~= nil and expression == nil,

        -- When focus is lost, update the value
        onFocusLost = function()
            if expression ~= nil then
                setValue(expression)
            end

            setExpression(nil)
        end
    })
end
```
