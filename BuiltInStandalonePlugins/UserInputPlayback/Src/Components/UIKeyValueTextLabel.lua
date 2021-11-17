--[[
	A key and value text label.

	Required props:
		Label: string -- The label for the key
		Value: string -- The value

	Optional props:
		LayoutOrder: number
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Decoration = UI.Decoration
local TextLabel = Decoration.TextLabel

local UIKeyValueTextLabel = Roact.PureComponent:extend("UIKeyValueTextLabel")

function UIKeyValueTextLabel:render()
	local props = self.props
	local style = props.Stylizer
		
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, style.HeightPx),
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, style.PaddingPx),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		KeyTextLabel = Roact.createElement(TextLabel, {
			Text = props.Label .. ":",
			Size = UDim2.new(0, style.KeyWidthPx, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Center,
			LayoutOrder = 1,
		}),
		ValueTextLabel = Roact.createElement(TextLabel, {
			Text = props.Value,
			Size = UDim2.new(1, -style.KeyWidthPx, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			LayoutOrder = 2,
		}),
	})
end

UIKeyValueTextLabel = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(UIKeyValueTextLabel)

return UIKeyValueTextLabel
