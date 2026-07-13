local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Checkbox = require(Foundation.Components.Checkbox)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local function PlaygroundStory(props)
	local controls = props.controls
	local isChecked, setIsChecked = React.useState(true)

	return React.createElement(Checkbox, {
		isChecked = isChecked,
		isDisabled = controls.isDisabled,
		onActivated = function()
			setIsChecked(not isChecked)
		end,
		size = controls.size,
		label = controls.label or "",
		placement = controls.placement,
	})
end

local function SizesStory()
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
				onActivated = function()
					local next = Dash.join(checkedBySize, { [size] = not checkedBySize[size] })
					setCheckedBySize(next)
				end,
				size = size,
				label = "Label",
				placement = InputPlacement.Start,
				LayoutOrder = index,
			})
		end)
	)
end

local function CustomSelectionStory()
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
		tag = "col align-x-center align-y-center gap-medium auto-y padding-large stroke-muted radius-medium bg-surface-100",
		Size = UDim2.fromOffset(300, 120),
	}, {
		Checkbox = React.createElement(Checkbox, {
			isChecked = isChecked,
			onActivated = function()
				setIsChecked(not isChecked)
			end,
			size = InputSize.Medium,
			label = "Enable notifications",
			placement = InputPlacement.Start,
			-- Make the checkbox non-selectable since the parent card handles selection
			Selectable = false,
			LayoutOrder = 1,
		}),
		Description = React.createElement(Text, {
			Text = "Get notified when someone mentions you or sends you a message",
			tag = "size-full-0 auto-y text-body-small text-wrap content-muted",
			LayoutOrder = 2,
		}),
	})
end

local function IndeterminateStory()
	local isChecked1, setIsChecked1 = React.useState(false)
	local isChecked2, setIsChecked2 = React.useState(false)
	local isChecked3, setIsChecked3 = React.useState(true)

	local isAggregationChecked = isChecked1 or isChecked2 or isChecked3
	local isAggregationIndeterminate = isChecked1 ~= isChecked2 or isChecked2 ~= isChecked3

	return React.createElement(View, {
		tag = "col gap-medium size-3000-0 auto-xy",
	}, {
		Aggregation = React.createElement(Checkbox, {
			LayoutOrder = 1,
			isChecked = isAggregationChecked,
			isIndeterminate = isAggregationIndeterminate,
			onActivated = function(value)
				setIsChecked1(value)
				setIsChecked2(value)
				setIsChecked3(value)
			end,
			size = InputSize.Medium,
			label = "",
			placement = InputPlacement.Start,
		}),
		Check1 = React.createElement(Checkbox, {
			LayoutOrder = 2,
			isChecked = isChecked1,
			onActivated = function(value)
				setIsChecked1(value)
			end,
			size = InputSize.Medium,
			label = "Item 1",
			placement = InputPlacement.Start,
		}),
		Check2 = React.createElement(Checkbox, {
			LayoutOrder = 3,
			isChecked = isChecked2,
			onActivated = function(value)
				setIsChecked2(value)
			end,
			size = InputSize.Medium,
			label = "Item 2",
			placement = InputPlacement.Start,
		}),
		Check3 = React.createElement(Checkbox, {
			LayoutOrder = 4,
			isChecked = isChecked3,
			onActivated = function(value)
				setIsChecked3(value)
			end,
			size = InputSize.Medium,
			label = "Item 3",
			placement = InputPlacement.Start,
		}),
	})
end

local function UncontrolledStory()
	return React.createElement(View, {
		tag = "col size-3000-0 auto-xy",
	}, {
		React.createElement(Checkbox, {
			onActivated = function(value)
				print("isChecked: ", value)
			end,
			size = InputSize.Medium,
			label = "Label",
			placement = InputPlacement.Start,
		}),
	})
end

return {
	summary = "Checkbox component",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Sizes",
			summary = "Checkbox rendered at every supported size",
			story = SizesStory,
		},
		{
			name = "Custom Selection",
			summary = "Select card container instead of checkbox",
			story = CustomSelectionStory,
		},
		{
			name = "Indeterminate",
			summary = "A checkbox with an indeterminate state. Useful for aggregating other checkboxes",
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
		size = Dash.values(InputSize),
		placement = Dash.values(InputPlacement),
	},
}
