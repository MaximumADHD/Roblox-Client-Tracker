local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
local RadioGroup = require(Foundation.Components.RadioGroup)
local RadioGroupContext = require(script.Parent.Parent.RadioGroupContext)
local View = require(Foundation.Components.View)
type InputSize = InputSize.InputSize

local function Story(props)
	local controls = props.controls
	local value, setValue = React.useState(nil)

	local contextValue = React.useMemo(function()
		return { value = value, onValueChanged = setValue, Selectable = true }
	end, { value, setValue } :: { unknown })

	return React.createElement(RadioGroupContext.Provider, {
		value = contextValue,
	}, {
		React.createElement(RadioGroup.Item, {
			value = controls.value,
			label = if #controls.label > 0 then `{controls.label} {controls.value}` else "",
			hint = if #controls.hint > 0 then controls.hint else nil,
			isDisabled = controls.isDisabled,
			size = controls.size,
			placement = controls.placement,
		}),
	})
end

local function SizesStory()
	local value, setValue = React.useState(nil :: string?)
	local sizes = { InputSize.XSmall, InputSize.Small, InputSize.Medium, InputSize.Large } :: { InputSize }

	local contextValue = React.useMemo(function()
		return { value = value, onValueChanged = setValue, Selectable = true }
	end, { value, setValue } :: { unknown })

	return React.createElement(RadioGroupContext.Provider, {
		value = contextValue,
	}, {
		Items = React.createElement(
			View,
			{
				tag = "row align-y-center gap-large auto-xy",
			},
			Dash.map(sizes, function(size, _)
				return React.createElement(RadioGroup.Item, {
					value = size,
					label = size,
					size = size,
				})
			end)
		),
	})
end

return {
	summary = "Checkbox component",
	stories = {
		{
			name = "Playground",
			story = Story :: unknown,
		},
		{
			name = "Sizes",
			summary = "RadioGroupItem rendered at every supported size",
			story = SizesStory,
		},
	},
	controls = {
		isDisabled = false,
		label = "Label",
		hint = "",
		value = "A",
		size = Dash.values(InputSize),
		placement = Dash.values(InputPlacement),
	},
}
