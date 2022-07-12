local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local Constants = require(script.Parent.Parent.Constants)
local GroupCountDisplay = require(script.Parent.GroupCountDisplay)

local ListHeader = Roact.Component:extend("ListHeader")

function ListHeader:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer.ListHeader

	return Roact.createElement(Pane, {
		Size = UDim2.new(1, 0, 0, Constants.GroupRowHeight),
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		Padding = style.Padding,
	}, {
		GroupCountDisplay = Roact.createElement(GroupCountDisplay, {
			GroupCount = props.GroupCount,
			LayoutOrder = 1,
		}),
		LabelPane = Roact.createElement(Pane,{
			Style = "GroupLabel",
			Size = UDim2.new(1, -Constants.GroupRowWidth, 0, Constants.GroupRowHeight),
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Horizontal,
			Padding = style.LabelPanePadding,
		}, {
			TextLabel = Roact.createElement(TextLabel, {
				Size = UDim2.new(1, 0, 1, 0),
				Text = if props.SelectedGroupName ~= "" then localization:getText("Info", "CanCollideWith", {props.SelectedGroupName}) else "",
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		}),
	})
end

ListHeader = ContextServices.withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(ListHeader)

return ListHeader
