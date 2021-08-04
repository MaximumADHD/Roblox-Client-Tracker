--[[
	This component is responsible for configging asset's allow copy field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
]]
local FFlagToolboxReplaceUILibraryComponentsPt1 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt1")
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local ContextServices = require(Libs.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local ToggleButton
if FFlagToolboxReplaceUILibraryComponentsPt1 then
	ToggleButton = require(Libs.Framework).UI.ToggleButton
else
	local UILibrary = require(Libs.UILibrary)
	ToggleButton = UILibrary.Component.ToggleButton
end

local withTheme = ContextHelper.withTheme

local ConfigComment = Roact.PureComponent:extend("ConfigComment")

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24

function ConfigComment:init(props)
	if not FFlagToolboxReplaceUILibraryComponentsPt1 then
		self.state = {}
	end

	self.toggleCallback = function()
		local props = self.props
		props.ToggleCallback(not props.CommentOn)
	end
end

function ConfigComment:render()
	if FFlagToolboxReplaceUILibraryComponentsPt1 then
		return self:renderContent()
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function ConfigComment:renderContent(theme)
	local props = self.props

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local TotalHeight = props.TotalHeight
	local CommentOn = props.CommentOn
	local CommentEnabled = props.CommentEnabled

	local ToggleCallback = props.ToggleCallback

	if FFlagToolboxReplaceUILibraryComponentsPt1 then
		theme = self.props.Stylizer
	end

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

		ToggleButton = Roact.createElement(ToggleButton,
			FFlagToolboxReplaceUILibraryComponentsPt1 and {
				Disabled = not CommentEnabled,
				LayoutOrder = 2,
				OnClick = self.toggleCallback,
				Selected = CommentOn,
				Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
			} or {
				Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
				Enabled = CommentEnabled,
				IsOn = CommentOn,

				onToggle = ToggleCallback,

				LayoutOrder = 2,
			}
		),
	})
end

if FFlagToolboxReplaceUILibraryComponentsPt1 then
	if FFlagToolboxWithContext then
		ConfigComment = withContext({
			Stylizer = ContextServices.Stylizer,
		})(ConfigComment)
	else
		ContextServices.mapToProps(ConfigComment, {
			Stylizer = ContextServices.Stylizer,
		})
	end

end

return ConfigComment