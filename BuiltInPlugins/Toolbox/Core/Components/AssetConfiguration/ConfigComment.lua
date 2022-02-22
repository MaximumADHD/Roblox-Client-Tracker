--[[
	This component is responsible for configging asset's allow copy field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local ToggleButton = require(Packages.Framework).UI.ToggleButton

local ConfigComment = Roact.PureComponent:extend("ConfigComment")

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24

function ConfigComment:init(props)
	self.toggleCallback = function()
		local props = self.props
		props.ToggleCallback(not props.CommentOn)
	end
end

function ConfigComment:render()
	return self:renderContent()
end

function ConfigComment:renderContent()
	local props = self.props

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local TotalHeight = props.TotalHeight
	local CommentOn = props.CommentOn
	local CommentEnabled = props.CommentEnabled

	local ToggleCallback = props.ToggleCallback

	local theme = self.props.Stylizer
	local publishAssetTheme = theme.publishAsset

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, TotalHeight),

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = LayoutOrder
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),

		Title = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 1, 0),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = publishAssetTheme.titleTextColor,
			Font = Constants.FONT,

			LayoutOrder = 1,
		}),

		ToggleButton = Roact.createElement(ToggleButton, {
			Disabled = not CommentEnabled,
			LayoutOrder = 2,
			OnClick = self.toggleCallback,
			Selected = CommentOn,
			Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
		}),
	})
end


ConfigComment = withContext({
	Stylizer = ContextServices.Stylizer,
})(ConfigComment)


return ConfigComment