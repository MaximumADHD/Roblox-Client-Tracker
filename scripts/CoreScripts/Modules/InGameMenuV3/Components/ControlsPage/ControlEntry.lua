local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ThemedTextLabel = require(InGameMenu.Components.ThemedTextLabel)
local KeyLabel = require(InGameMenu.Components.KeyLabel)
local PointerLabel = require(InGameMenu.Components.PointerLabel)
local Divider = require(InGameMenu.Components.Divider)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local CONTROL_ENTRY_HEIGHT = 50

local validateProps = t.strictInterface({
	actionDescription = t.string,
	inputs = t.table,
	isList = t.optional(t.boolean),
	hasDivider = t.boolean,
	LayoutOrder = t.integer,
})

local function renderHorizontalSpacer(symbol, layoutOrder, isElipses)
	local size = isElipses and UDim2.new(0, 19, 0, 24) or UDim2.new(0, 19, 0, 16)
	local yAlignment = isElipses and Enum.TextYAlignment.Bottom

	return Roact.createElement(ThemedTextLabel, {
		themeKey = "TextEmphasis",
		fontKey = "Header1",
		Text = symbol,
		Size = size,
		TextYAlignment = yAlignment,
		LayoutOrder = layoutOrder,
	})
end

local function renderKey(input, layoutOrder)
	local inputComponent = input.EnumType == Enum.KeyCode and KeyLabel or PointerLabel
	return Roact.createElement(inputComponent, {
		input = input,
		LayoutOrder = layoutOrder,
	})
end

local function renderInputIconContainer(inputs, isList)
	local children = {}

	-- If we're rendering inputs as a "list", we render the keys next to
	-- eachother, with a "..." at the end, so we want 0 padding.
	local paddingWidth = not isList and 7 or 0

	children.ListLayout = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, paddingWidth),
	})

	local layoutOrder = 1
	for i, input in ipairs(inputs) do

		-- If input is a group of inputs, we iterate over that table and render
		-- with "+"" as spacers. Otherwise, we render the single input with "/"
		-- as the spacer.
		if typeof(input) ~= "table" then
			children["input"..i] = renderKey(input, layoutOrder)
			layoutOrder = layoutOrder + 1

			-- if "list", append elipses to the end of inputs
			if isList and i == #inputs then
				children.Elipses = renderHorizontalSpacer("...", layoutOrder, true)
			end
		else
			for i2, groupedInput in ipairs(input) do
				local order = string.format("%d_%d", i, i2)
				children["groupedInput"..order] = renderKey(groupedInput, layoutOrder)
				layoutOrder = layoutOrder + 1

				if i2 < #input then
					children["groupedDivider"..order] = renderHorizontalSpacer("+", layoutOrder)
					layoutOrder = layoutOrder + 1
				end
			end
		end

		-- If "list", don't render dividers
		if not isList and i < #inputs then
			children["divider"..i] = renderHorizontalSpacer("/", layoutOrder)
			layoutOrder = layoutOrder + 1
		end
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 0, 1, 0),
		Position = UDim2.new(1, 0, 0, 0),
	}, children)
end

local function ControlEntry(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withLocalization({
		actionDescription = props.actionDescription,
	})(function(localized)
		return Roact.createElement("Frame", {
			LayoutOrder = props.LayoutOrder,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, CONTROL_ENTRY_HEIGHT)
		}, {
			ActionLabel = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header2",
				themeKey = "TextEmphasis",

				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(0, 200, 0, 22),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),

				Text = localized.actionDescription,
			}),
			Divider = props.hasDivider and Roact.createElement(Divider, {
				Size = UDim2.new(1, 0, 0, 1),
				Position = UDim2.new(0, 0, 1, -1),
			}),
			Inputs = renderInputIconContainer(props.inputs, props.isList),
		})
	end)
end

return ControlEntry