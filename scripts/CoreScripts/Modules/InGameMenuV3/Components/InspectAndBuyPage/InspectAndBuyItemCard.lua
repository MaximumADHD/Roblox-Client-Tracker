--[[
	InspectAndBuy Item Card:
	When pressed, navigate into the asset details page which
	allows for trying on the item and purchasing it. This item
	card includes a footer with price or owned status
]]
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local ItemTile = UIBlox.Tile.ItemTile

local InGameMenu = script.Parent.Parent.Parent
local InGameMenuConstants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SelectItem = require(InGameMenu.Actions.InspectAndBuy.SelectItem)
local Constants = require(InGameMenu.InspectAndBuyConstants)
local InspectAndBuyItemCardFooter = require(InGameMenu.Components.InspectAndBuyPage.InspectAndBuyItemCardFooter)

local LC_BACKGROUND_IMAGE = "rbxasset://textures/ui/AvatarExperience/glowLight.png"
local ASSET_THUMB_ROOT_URL = "rbxthumb://type=Asset&id="
local ASSET_THUMB_SIZE_URL = "&w=150&h=150"
local NAME_LINE_COUNT = 1
local INNER_PADDING = 6

local InspectAndBuyItemCard = Roact.PureComponent:extend("InspectAndBuyItemCard")

InspectAndBuyItemCard.validateProps = t.strictInterface({
	asset = t.table,
	callback = t.optional(t.callback),
	textButtonRef = t.optional(t.table),

	-- from mapDispatchToProps
	setCurrentPage = t.callback,
	selectItem = t.callback,
})


function InspectAndBuyItemCard:init()
	self.onActivated = function()
		if self.props.callback then
			self.props.callback()
		end
		
		self.props.selectItem(self.props.asset)
		self.props.openAssetDetailsPage()
	end
end

function InspectAndBuyItemCard:render()
	local asset = self.props.asset
	local thumbnailUrl = asset and ASSET_THUMB_ROOT_URL .. asset.assetId .. ASSET_THUMB_SIZE_URL
	local name = asset and asset.name
	local price = asset and asset.price or nil

	local backgroundImage = nil
	if asset and Constants.GradientBackgroundAssetTypeIds[asset.assetTypeId] then
		backgroundImage = LC_BACKGROUND_IMAGE
	end

	return Roact.createElement(ItemTile, {
		name = name,
		Selectable = true,
		titleTextLineCount = NAME_LINE_COUNT,
		innerPadding = INNER_PADDING,
		onActivated = self.onActivated,
		thumbnail = thumbnailUrl,
		backgroundImage = backgroundImage,
		footer = Roact.createElement(InspectAndBuyItemCardFooter, {
			price = price,
			productId = asset and asset.productId or nil,
			asset = asset,
		}) or nil,
		textButtonRef = self.props.textButtonRef,
	})
end

return RoactRodux.connect(nil, function(dispatch)
	return {
		openAssetDetailsPage = function()
			return dispatch(SetCurrentPage(InGameMenuConstants.InspectAndBuyAssetDetailsPageKey))
		end,
		selectItem = function(selectedItem)
			return dispatch(SelectItem(selectedItem))
		end,
	}
end)(InspectAndBuyItemCard)
