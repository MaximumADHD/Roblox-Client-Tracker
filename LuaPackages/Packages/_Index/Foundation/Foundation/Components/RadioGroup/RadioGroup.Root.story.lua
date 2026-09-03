local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local BuilderIcons = require(Packages.BuilderIcons)
local IconName = BuilderIcons.Icon

local Icon = require(Foundation.Components.Icon)
local RadioGroup = require(Foundation.Components.RadioGroup)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Flags = require(Foundation.Utility.Flags)
local IconSize = require(Foundation.Enums.IconSize)
local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local values = { "A", "B", "C", "D", "E" }
local sizes: { InputSize } = { InputSize.XSmall, InputSize.Small, InputSize.Medium }

local function BasicStory(props)
	local controls = props.controls
	local optionLabel: string = controls.optionLabel
	local items = {}
	Dash.forEach(values, function(value, index)
		table.insert(
			items,
			React.createElement(RadioGroup.Item, {
				key = value,
				value = value,
				label = if #optionLabel > 0 then `{optionLabel} {value}` else "",
				isDisabled = if value == "D" then true else controls.isDisabled,
				size = if Flags.FoundationInputGroup then nil else controls.size,
				placement = if Flags.FoundationInputGroup then nil else controls.placement,
				LayoutOrder = index,
			})
		)
	end)

	return React.createElement(RadioGroup.Root, {
		legend = if Flags.FoundationInputGroup then controls.legend else nil,
		size = if Flags.FoundationInputGroup then controls.size else nil,
		placement = if Flags.FoundationInputGroup then controls.placement else nil,
		onValueChanged = function(value: string)
			print("Checking value", value)
		end,
	}, items)
end

local function DifferentLabelLengthsStory(props)
	local controls = props.controls
	local itemsData = {
		{ value = "A", label = "Short" },
		{ value = "B", label = "Medium length label" },
		{ value = "C", label = "A much, much longer label to test wrapping and layout in the radio group" },
		{ value = "D", label = "Tiny" },
		{
			value = "E",
			label = "Extremely long label that spans multiple lines to ensure alignment across items with a label on the left",
		},
	}

	local items = {}
	Dash.forEach(itemsData, function(item)
		table.insert(
			items,
			React.createElement(RadioGroup.Item, {
				value = item.value,
				label = item.label,
				size = controls.size,
				placement = controls.placement,
			})
		)
	end)

	return React.createElement(View, {
		tag = "auto-y",
		Size = UDim2.fromOffset(400, 0),
	}, {
		RadioGroup = React.createElement(RadioGroup.Root, {
			onValueChanged = function(value: string)
				print("Checking value", value)
			end,
		}, items),
	})
end

local function SizesStory(_)
	local groups: { React.ReactNode } = {}
	Dash.forEach(sizes, function(size, sizeIndex)
		local items = {}
		Dash.forEach(values, function(value, index)
			table.insert(
				items,
				React.createElement(RadioGroup.Item, {
					key = value,
					value = value,
					label = value,
					size = if Flags.FoundationInputGroup then nil else size,
					LayoutOrder = index,
				})
			)
		end)

		groups[size] = React.createElement(RadioGroup.Root, {
			key = size,
			legend = if Flags.FoundationInputGroup then size else nil,
			size = if Flags.FoundationInputGroup then size else nil,
			LayoutOrder = sizeIndex,
			onValueChanged = function(value: string)
				print("Checking value", value)
			end,
		}, items)
	end)

	return React.createElement(View, {
		tag = "row wrap align-y-center gap-xlarge auto-xy",
	}, groups)
end

local function createSelectionCard(controls, value: string, icon: string, label: string, cursor, setSelectedValue)
	return React.createElement(View, {
		tag = "col align-x-center gap-small auto-xy padding-medium",
	}, {
		ImageContainer = React.createElement(View, {
			cursor = cursor,
			onActivated = function()
				setSelectedValue(value)
				print("Selected card:", value)
			end,
			tag = "col align-x-center align-y-center size-2000-2000 radius-medium bg-surface-100",
		}, {
			Icon = React.createElement(Icon, {
				name = icon,
				size = IconSize.XLarge,
			}),
		}),
		RadioButton = React.createElement(RadioGroup.Item, {
			value = value,
			label = label,
			placement = controls and controls.placement or nil,
		}),
	})
end

local function CustomSelectionStory(props)
	local controls = props.controls
	local selectedValue, setSelectedValue = React.useState(nil :: string?)
	local tokens = useTokens()

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Medium),
			offset = tokens.Size.Size_150,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	return React.createElement(RadioGroup.Root, {
		value = selectedValue,
		onValueChanged = setSelectedValue,
		-- Make the group non-selectable since individual items handle their own selection
		Selectable = false,
	}, {
		Container = React.createElement(View, {
			tag = "row wrap gap-large auto-xy",
		}, {
			CardA = createSelectionCard(controls, "A", IconName.CircleCheck, "Success", cursor, setSelectedValue),
			CardB = createSelectionCard(controls, "B", IconName.TriangleExclamation, "Error", cursor, setSelectedValue),
			CardC = createSelectionCard(controls, "C", IconName.CircleI, "Info", cursor, setSelectedValue),
		}),
	})
end

return {
	summary = "Radio Group component",
	stories = {
		{
			name = "Playground",
			story = BasicStory :: unknown,
		},
		{
			name = "Sizes",
			summary = "Each size shown in a row",
			story = SizesStory,
		},
		{
			name = "Different Label Lengths",
			summary = "Items with labels of varying length",
			story = DifferentLabelLengthsStory,
		},
		{
			name = "Custom Selection",
			summary = "Select images instead of radio buttons",
			story = CustomSelectionStory,
		},
	},
	controls = {
		legend = "Choose an option",
		optionLabel = "Option",
		size = sizes,
		placement = Dash.values(InputPlacement),
		isDisabled = false,
	},
}
