--[[
	This component is responsible for managing action bar, which provides two components.
	Insert button and open more button.

	Necessary properties:
	position = UDim2
	size = UDim2
	canInsertAsset = call back
	tryInsert = call back
	text = button text
	color = button color

	Optionlal properties:
	layoutOrder = num
	assetId = id, for analytics
	assetVersionId = version ID, for plugin installs
	installDisabled = true if we're a plugin and we are loading, disables install attempts while loading
	displayResultOfInsertAttempt = if true, overwrites button color/text once you click it based on result of insert
	ShowRobuxIcon = Whether to show a robux icon next to the text.
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Util.Images)
local ContextHelper = require(Util.ContextHelper)
local Analytics = require(Util.Analytics.Analytics)
local Colors = require(Util.Colors)

local RoundButton = require(Plugin.Core.Components.RoundButton)

local withTheme = ContextHelper.withTheme

local ActionBar = Roact.PureComponent:extend("ActionBar")

local CENTER_PADDING = 10
local PADDING = Constants.ASSET_PREVIEW_PADDING

function ActionBar:init(props)
	self.onShowMoreActiveted = function()
		self.props.TryCreateContextMenu()
	end

	self.onInsertActivated = function()
		-- If we're working with a plugin, it might still be loading/already clicked and completed
		-- In these cases, we do not want to allow an insert attempt
		if self.props.InstallDisabled then
			return
		end

		self.props.TryInsert(false)
		Analytics.onAssetInsertedFromAssetPreview(props.AssetId)
	end
end

function ActionBar:render()
	return withTheme(function(theme)
		local props = self.props
		local size = props.Size
		local position = props.Position
		local anchorPoint = props.AnchorPoint
		local showRobuxIcon = props.ShowRobuxIcon
		local isDisabled = props.InstallDisabled
		local layoutOrder = props.LayoutOrder

		local text = props.Text

		local textWidth = Constants.getTextSize(text, Constants.FONT_SIZE_LARGE, Constants.FONT_BOLD).X

		local actionBarTheme = theme.assetPreview.actionBar
		local color = isDisabled and actionBarTheme.buttonBGDisabled or actionBarTheme.buttonBG
		local textColor = isDisabled and actionBarTheme.textColorDisabled or actionBarTheme.textColor

		return Roact.createElement("Frame", {
			Size = size,
			Position = position,
			AnchorPoint = anchorPoint,

			BackgroundTransparency = 0,
			BackgroundColor3 = actionBarTheme.background,
			BorderSizePixel = 0,

			LayoutOrder = layoutOrder,
		},{
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 12),
				PaddingLeft = UDim.new(0, 12),
				PaddingRight = UDim.new(0, 12),
				PaddingTop = UDim.new(0, 12),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),

			ShowMoreButton = Roact.createElement(RoundButton, {
				Size = UDim2.new(0, 28, 0, 28),

				BackgroundColor3 = actionBarTheme.showMoreBGColor,
				BackgroundTransparency = 0,
				BorderSizePixel = 1,
				BorderColor3 = actionBarTheme.showMoreBorderColor,

				[Roact.Event.Activated] = self.onShowMoreActiveted,

				LayoutOrder = 1,
			}, {
				ShowMoreImageLabel = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 16, 0, 16),

					Image = Images.SHOW_MORE,
					BackgroundTransparency = 1,
				})
			}),

			InsertButton = Roact.createElement(RoundButton, {
				Size = UDim2.new(1, -(PADDING * 2 + CENTER_PADDING), 1, 0),
				BackgroundColor3 = color,
				BackgroundTransparency = 0,
				BorderSizePixel = 0,

				[Roact.Event.Activated] = self.onInsertActivated,

				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Padding = UDim.new(0, 2)
				}),

				Icon = showRobuxIcon and Roact.createElement("ImageLabel", {
					LayoutOrder = 1,
					Size = Constants.Dialog.ROBUX_SIZE,
					BackgroundTransparency = 1,
					Image = Images.ROBUX_SMALL,
					ImageColor3 = Colors.WHITE,
				}),

				InsertTextLabel = Roact.createElement("TextLabel", {
					LayoutOrder = 2,
					Size = UDim2.new(0, textWidth, 1, 0),

					Text = text,
					Font = Constants.FONT_BOLD,
					TextSize = Constants.FONT_SIZE_LARGE,
					TextColor3 = textColor,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,

					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				}),
			}),
		})
	end)
end

return ActionBar