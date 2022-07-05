--[[
	This component is responsible for configuring asset's allow copy field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
]]
local FFlagUpdateConvertToPackageToDFContextServices = game:GetFastFlag("UpdateConvertToPackageToDFContextServices")
local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local UILibrary = require(Packages.UILibrary)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local ToggleButton = UILibrary.Component.ToggleButton
local withTheme = if FFlagUpdateConvertToPackageToDFContextServices then nil else require(Plugin.Src.ContextServices.Theming).withTheme

local ConfigComment = Roact.PureComponent:extend("ConfigComment")

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24

function ConfigComment:render()
	local style = self.props.Stylizer

	local function renderWithContext(theme)
		local props = self.props

		local Title = props.Title
		local LayoutOrder = props.LayoutOrder
		local TotalHeight = props.TotalHeight
		local CommentOn = props.CommentOn
		local CommentEnabled = props.CommentEnabled

		local ToggleCallback = props.ToggleCallback

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
				Size = UDim2.new(0, Constants.TITLE_GUTTER_WIDTH, 1, 0),

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
				Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
				Enabled = CommentEnabled,
				IsOn = CommentOn,

				onToggle = ToggleCallback,

				LayoutOrder = 2,
			}),
		})
	end

	return if FFlagUpdateConvertToPackageToDFContextServices then renderWithContext(style) else withTheme(renderWithContext)
end

if FFlagUpdateConvertToPackageToDFContextServices then
	ConfigComment = withContext({
		Stylizer = ContextServices.Stylizer,
	})(ConfigComment)
end

return ConfigComment