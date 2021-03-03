--[[
	This component is resposible for managing the thumbnail, select button, information display of
	vertion items. In current design, the select button will be different depending on if it's current
	item and seletable item. And the position, size of the divider will also be different.

	Necessary properties:
	Position, UDim2.
	Size, UDim2.
	ItemInfo, a table, should contain all the information need for versions page.
	CurrentId, number, will be used to check if this is current item.

	Optional properties:
	LayoutOrder, number, will be used by the internal layouter. So Position will be overrode.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local formatLocalDateTime = Framework.Util.formatLocalDateTime

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local VersionDivider = require(AssetConfiguration.VersionDivider)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local Urls = require(Util.Urls)
local Images = require(Util.Images)

local withTheme = ContextHelper.withTheme

local VersionItem = Roact.PureComponent:extend("VersionItem")

local IITEM_CONTENT_HEIGHT = 20

local VERSION_ITEM_STATE = {
	CURRENT = 1,	-- hide the click button
	SELECTED = 2, 	-- change color
	DEFAULT = 3 	-- clickable, default color
}

function VersionItem:init(props)
	self.state = {
	}
end

function VersionItem:render()
	return withTheme(function(theme)
		local props = self.props
		local versionsTheme = theme.versions

		local ItemInfo = props.ItemInfo or {}
		--[[ItemInfo = {
			"assetId": 3200355923,
			"assetVersionNumber": 1,
			"creatorType": "User",
			"creatorTargetId": 441049238,
			"creatingUniverseId": null,
			"created": "2019-05-20T17:38:14.2238915Z"
		}]]

		-- TODO: Change button style if it's current.

		local IsCurrent = props.IsCurrent
		local SelectVersion = props.SelectVersion

		local buttonState
		if IsCurrent then
			buttonState = VERSION_ITEM_STATE.CURRENT
		else
			if SelectVersion == ItemInfo.assetVersionNumber then
				buttonState = VERSION_ITEM_STATE.SELECTED
			else
				buttonState = VERSION_ITEM_STATE.DEFAULT
			end
		end

		local thumbnailUrl = Urls.constructAssetThumbnailUrl(ItemInfo.assetId,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE,
			Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE)

		local versionsTheme = theme.versions
		-- The only difference between the current item and itemList in the
		-- position and size of the divider.
		return Roact.createElement("Frame", {
			Size = props.Size,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = props.LayoutOrder,
		}, {
			Version = Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 120, 0, 25),
				Size = UDim2.new(1, -67, 0, IITEM_CONTENT_HEIGHT),

				Text = "V" .. tostring(ItemInfo.assetVersionNumber),
				TextColor3 = versionsTheme.textColor,
				Font = Constants.FONT_BOLD,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),

			LastChange = Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(0, 0),
				Position = UDim2.new(0, 120, 0, 15 + IITEM_CONTENT_HEIGHT),
				Size = UDim2.new(1, -67, 0, IITEM_CONTENT_HEIGHT),

				Text = formatLocalDateTime(ItemInfo.created, "L LTS", self.props.Localization:getLocale()),
				TextColor3 = versionsTheme.textColor,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,

				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),

			SelectButton = (buttonState ~= VERSION_ITEM_STATE.CURRENT) and Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(1, 0.5),
				-- Better number in the future
				Position = UDim2.new(1, -160, 0.5, 0),
				Size = UDim2.new(0, 28, 0, 28),

				Image = Images.MAKE_CURRENT_VERSION,
				BackgroundTransparency = 1,
				ImageColor3 = buttonState == VERSION_ITEM_STATE.DEFAULT
					and versionsTheme.buttonDefaultColor
					or versionsTheme.buttonSelectedColor,

				[Roact.Event.Activated] = function(rbx)
					props.ItemClickCallBack(ItemInfo)
				end,

				BorderSizePixel = 0,
			}),

			Divider = Roact.createElement(VersionDivider, {
				AnchorPoint = props.DividerAnchorPoint,
				Position = props.DividerPosition,
				Size = props.DividerSize,

				BorderSizePixel = 0,
			})
		})
	end)
end

ContextServices.mapToProps(VersionItem, {
	Localization = ContextServices.Localization,
})

return VersionItem