--[[
	This component is responsible for managing action bar, which provides two components.
	Insert button and open more button.

	Necessary properties:
	position = UDim2
	size = UDim2
	canInsertAsset = call back
	tryInsert = call back

	Optionlal properties:
	layoutOrder = num
	assedId = id, for analytics
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Util.Images)
local ContextHelper = require(Util.ContextHelper)
local Analytics = require(Util.Analytics.Analytics)

local RoundButton = require(Plugin.Core.Components.RoundButton)

local withTheme = ContextHelper.withTheme

local ActionBar = Roact.PureComponent:extend("ActionBar")

local CENTER_PADDING = 10
local PADDING = Constants.ASSET_PREVIEW_PADDING

function ActionBar:init(props)
	self.onShowMoreActiveted = function()
		self.props.tryCreateContextMenu()
	end

	self.onInsertActivated = function()
		self.props.tryInsert(false)

		Analytics.onAssetInsertedFromAssetPreview(props.assetId)
	end
end

function ActionBar:render()
	return withTheme(function(theme)
		local props = self.props

		local size = props.size
		local position = props.position
		local anchorPoint = props.anchorPoint

		local actionBarTheme = theme.assetPreview.actionBar

		local layoutOrder = props.layoutOrder

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

			-- TODO: It would be bette to grey out the button if
			-- we can't insert the asset now.
			InsertButton = Roact.createElement(RoundButton, {
				Size = UDim2.new(1, -(PADDING * 2 + CENTER_PADDING), 1, 0),

				BackgroundColor3 = Color3.fromRGB(0,162,255),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,

				[Roact.Event.Activated] = self.onInsertActivated,

				LayoutOrder = 2,
			}, {
				InsertTextLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 1, 0),

					Text = "Insert",
					Font = Constants.FONT_BOLD,
					TextSize = Constants.FONT_SIZE_LARGE,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,

					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				})
			})
		})
	end)
end

return ActionBar