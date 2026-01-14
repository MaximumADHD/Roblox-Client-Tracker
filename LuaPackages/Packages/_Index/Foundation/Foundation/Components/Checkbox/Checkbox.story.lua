local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Checkbox = require(Foundation.Components.Checkbox)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local CheckedState = require(Foundation.Enums.CheckedState)
type CheckedState = CheckedState.CheckedState

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local function BasicStory(props)
	local controls = props.controls
	local sizes: { InputSize } = { InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall }

	local checkedBySize, setCheckedBySize = React.useState(function()
		local init = {}
		for _, size in sizes do
			init[size] = true
		end
		return init
	end)

	return React.createElement(
		View,
		{
			tag = "col gap-xxlarge size-3000-0",
		},
		Dash.map(sizes, function(size, index)
			return React.createElement(Checkbox, {
				isChecked = checkedBySize[size],
				isDisabled = controls.isDisabled,
				onActivated = function()
					local next = Dash.join(checkedBySize, { [size] = not checkedBySize[size] })
					setCheckedBySize(next)
				end,
				size = size,
				label = controls.label or "",
				placement = controls.placement,
				LayoutOrder = index,
			})
		end)
	)
end

local function CustomSelectionStory(props)
	local controls = props.controls
	local isChecked, setIsChecked = React.useState(true)
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
			placement = controls.placement,
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

local function IndeterminateStory(props)
	local controls = props.controls

	local isChecked, setIsChecked = React.useState(CheckedState.Indeterminate :: CheckedState)

	return React.createElement(View, {
		tag = "col auto-xy size-3000-0",
	}, {
		React.createElement(Checkbox, {
			isChecked = isChecked,
			isDisabled = controls.isDisabled,
			onActivated = function(value)
				setIsChecked(value)
			end,
			size = controls.size,
			label = controls.label or "",
			placement = controls.placement,
		}),
	})
end

local function UncontrolledStory(props)
	local controls = props.controls

	return React.createElement(View, {
		tag = "col auto-xy size-3000-0",
	}, {
		React.createElement(Checkbox, {
			isDisabled = controls.isDisabled,
			isIndeterminate = controls.isIndeterminate,
			onActivated = function(value)
				print("isChecked: ", value)
			end,
			size = controls.size,
			label = controls.label or "",
			placement = controls.placement,
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
		{
			name = "Indeterminate",
			summary = "A checkbox initialized with an indeterminate state",
			story = IndeterminateStory,
		},
		{
			name = "Uncontrolled",
			summary = "State is controlled by the checkbox itself",
			story = UncontrolledStory,
		},
	},
	controls = {
		isDisabled = false,
		label = "Label",
		placement = Dash.values(InputPlacement),
	},
}
