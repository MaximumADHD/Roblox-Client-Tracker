local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Checkbox = require(Foundation.Components.Checkbox)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputSize = require(Foundation.Enums.InputSize)

type InputSize = InputSize.InputSize

local function BasicStory(props)
	local controls = props.controls
	local isChecked, setIsChecked = React.useState(false)

	return React.createElement(Checkbox, {
		isChecked = isChecked,
		isDisabled = controls.isDisabled,
		onActivated = function()
			setIsChecked(not isChecked)
		end,
		size = controls.size,
		label = controls.label or "",
	})
end

local function CustomSelectionStory(props)
	local controls = props.controls
	local isChecked, setIsChecked = React.useState(false)
	local tokens = useTokens()

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Medium),
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	return React.createElement(View, {
		cursor = cursor,
		onActivated = function()
			setIsChecked(not isChecked)
		end,
		tag = "auto-y col align-x-center align-y-center gap-medium padding-large radius-medium bg-surface-100 stroke-muted",
		Size = UDim2.fromOffset(300, 120),
	}, {
		Checkbox = React.createElement(Checkbox, {
			isChecked = isChecked,
			onActivated = function()
				setIsChecked(not isChecked)
			end,
			size = controls.size,
			label = "Enable notifications",
			-- Make the checkbox non-selectable since the parent card handles selection
			Selectable = false,
			LayoutOrder = 1,
		}),
		Description = React.createElement(Text, {
			Text = "Get notified when someone mentions you or sends you a message",
			tag = "text-body-small content-muted auto-y size-full-0 text-wrap",
			LayoutOrder = 2,
		}),
	})
end

return {
	summary = "Checkbox component",
	stories = {
		{
			name = "Basic",
			story = BasicStory :: any,
		},
		{
			name = "Custom Selection",
			summary = "Select card container instead of checkbox",
			story = CustomSelectionStory,
		},
	},
	controls = {
		isDisabled = false,
		label = "Label",
		size = Dash.values(InputSize),
	},
}
