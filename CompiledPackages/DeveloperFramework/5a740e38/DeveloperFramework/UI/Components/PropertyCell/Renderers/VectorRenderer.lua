local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Util = Framework.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local numberToString = require(Util.numberToString)

local Dash = require(Framework.Parent.Dash)
local copy = Dash.copy
local join = Dash.join

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local Components = Framework.UI.Components
local Pane = require(Components.Pane)
local TextInput = require(Framework.UI.Components.TextInput)
local TextLabel = require(Components.TextLabel)

local StyleModifier = require(Framework.Util.StyleModifier)

local Types = require(script.Parent.Parent.Types)

type Props = Types.PropertyCellProps

local function VectorRenderer(props: Props)
	local schema = props.Schema :: Types.VectorSchema<any>
	local children = {}
	local orderIterator = LayoutOrderIterator.new()
	local components = schema.GetComponents(props.Value)
	local layout = schema.Layout or Enum.FillDirection.Horizontal
	local hasError = props.HasError
	local size
	local isOneComponent = #schema.Components == 1

	local textWidth = 0
	for _, name in schema.Components do
		if name ~= "" then
			local text = TextService:GetTextSize(name, 14, Enum.Font.SourceSans, Vector2.new(1, 1))
			textWidth = math.max(textWidth, text.X)
		end
	end

	if isOneComponent then
		size = UDim2.fromScale(1, 1)
	elseif layout == Enum.FillDirection.Vertical then
		size = UDim2.new(1, -textWidth - 5, 0, 24)
	else
		size = UDim2.fromOffset(54, 24)
	end

	for i, name in ipairs(schema.Components) do
		local label
		if name ~= "" then
			label = Roact.createElement(TextLabel, {
				AutomaticSize = if layout == Enum.FillDirection.Vertical
					then Enum.AutomaticSize.Y
					else Enum.AutomaticSize.XY,
				LayoutOrder = orderIterator:getNextOrder(),
				Size = if layout == Enum.FillDirection.Vertical then UDim2.new(0, textWidth, 0, 0) else nil,
				Style = "Label",
				Text = name,
			})
		end

		local text
		if isOneComponent and schema.GetChildren then
			text = components[i]
		elseif typeof(components[i]) ~= "number" then
			text = components[i]
		else
			text = numberToString(components[i], schema.Precision or 2)
		end

		local input = Roact.createElement(
			TextInput,
			join(
				{
					Disabled = props.Disabled,
					LayoutOrder = orderIterator:getNextOrder(),
					OnFocusLost = function(text: string)
						local component = tonumber(text)
						if isOneComponent and schema.GetChildren then
							component = text
						end

						if components[i] ~= component then
							local nextComponents = copy(components)
							nextComponents[i] = component
							props.OnChanged(schema.GetValue(nextComponents))
						end
					end,
					Size = size,
					Text = text,
				},
				if supportsStyleSheets
					then {
						[React.Tag] = if hasError then schema.ErrorStyle else nil,
					}
					else {
						StyleModifier = if props.HasError then StyleModifier.Error else nil,
					}
			)
		)

		if layout == Enum.FillDirection.Vertical then
			children[i .. " combined"] = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.X,
				LayoutOrder = orderIterator:getNextOrder(),
				Layout = Enum.FillDirection.Horizontal,
				Size = UDim2.new(1, 0, 0, 24),
				Spacing = 5,
			}, {
				Label = label,
				Input = input,
			})
		else
			children[i .. " label"] = label
			children[i .. " input"] = input
		end
	end
	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = layout,
		Spacing = 5,
	}, children)
end

return VectorRenderer
