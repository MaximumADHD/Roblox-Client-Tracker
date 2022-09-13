local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local UI = Framework.UI
local Button  = UI.Button
local IconButton = UI.IconButton
local Pane = UI.Pane
local Tooltip = UI.Tooltip

local ToolParts = Plugin.Src.Components.Tools.ToolParts
local LabeledElementPair = require(ToolParts.LabeledElementPair)

local FULL_WIDTH = 140
local BUTTON_HEIGHT = 22
local SPACER_WIDTH = 4

local PlaneController = Roact.PureComponent:extend(script.Name)

function PlaneController:render()
	local props = self.props

	local localization = props.Localization
	local theme = props.Theme:get()

	local editPlaneMode = props.EditPlaneMode
	local layoutOrder = props.LayoutOrder
	local text = localization:getText("BrushSettings", "EditPlane")
	local tooltip = localization:getText("BrushSettings", "EditPlaneTooltip")

	local name
	if editPlaneMode then
		name = localization:getText("BrushSettings", "Apply")
	else
		name = localization:getText("BrushSettings", "Edit")
	end

	return Roact.createElement(LabeledElementPair, {
		Size = UDim2.new(1, 0, 0, 18),
		Text = text,
		LayoutOrder = layoutOrder
	}, {
		ToggleButton = Roact.createElement(Pane, {
			Size = UDim2.new(1, 0, 1, 0),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Spacing = SPACER_WIDTH,
		}, {
			Action = Roact.createElement(Button, {
				LayoutOrder = 1,
				Size = UDim2.new(0, FULL_WIDTH - SPACER_WIDTH - BUTTON_HEIGHT, 0, BUTTON_HEIGHT),
				Style = "RoundPrimary",

				Text = name,
				OnClick = function() self.props.SetEditPlaneMode(not self.props.EditPlaneMode) end,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					Text = tooltip,
				})
			}),
			Reset = Roact.createElement(IconButton, {
				LayoutOrder = 2,
				Size = UDim2.new(0, BUTTON_HEIGHT, 0, BUTTON_HEIGHT),
				IconColor = theme.iconButton.buttonIconColor,
				LeftIcon =  theme.iconButton.resetIcon,
				OnClick = self.props.Reset,
			})
		})
	})
end

PlaneController = withContext({
	Localization = ContextServices.Localization,
	Theme = ContextItems.UILibraryTheme,
})(PlaneController)

return PlaneController
