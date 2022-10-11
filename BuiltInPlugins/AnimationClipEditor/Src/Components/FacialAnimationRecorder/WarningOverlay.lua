--[[
	A warning overlay to display errors

	Required Props:
		string TitleText: A text that will be displayed in the warning
		UDim2 Position: The position of this component.
		Vector2 AnchorPoint: The pivot point of this component's Position prop.
        string Image: A path representing an image resource
	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local StyleModifier = Framework.Util.StyleModifier
local UI = Framework.UI
local Pane = UI.Pane
local Button = Framework.UI.Button
local TextLabel = UI.Decoration.TextLabel
local Container = UI.Container
local Tooltip = UI.Tooltip
local HoverArea = UI.HoverArea
local LoadingIndicator = UI.LoadingIndicator

local WarningOverlay = Roact.PureComponent:extend("WarningOverlay")

function WarningOverlay:init() end

function WarningOverlay:render()
	local props = self.props
	local titleText = props.TitleText
	local anchorPoint = props.AnchorPoint
	local image = props.Image
	local position = props.Position
	local layoutOrder = props.LayoutOrder

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Position = position,
		AnchorPoint = anchorPoint,
		Padding = {
			Left = 10,
			Right = 10,
			Top = 5,
			Bottom = 5,
		},
		Layout = Enum.FillDirection.Horizontal,
		Spacing = 8,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		ZIndex = 1,
		Style = "RoundBox",
		ImageTransparency = 0.10,
		LayoutOrder = layoutOrder,
	}, {
		Image = image ~= nil and image ~= "" and Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 15, 0, 15),
			Position = UDim2.new(0, 19, 0, 5),
			Image = image,
		}),
		Message = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.XY,
			TextXAlignment = Enum.TextXAlignment.Left,
			Text = titleText,
			BackgroundTransparency = 1.0,
			TextWrapped = true,
			LayoutOrder = 1,
		}),
	})
end

WarningOverlay = withContext({
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
})(WarningOverlay)

return WarningOverlay
