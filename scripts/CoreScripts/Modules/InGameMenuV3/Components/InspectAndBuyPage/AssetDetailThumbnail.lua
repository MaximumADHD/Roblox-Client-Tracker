--[[
	Thumbnail of the selected asset or bundle.
	The space this takes up will be replaced by a ViewportFrame
	when actively trying on the asset/bundle
]]
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local LoadableImage = UIBlox.Loading.LoadableImage

local InGameMenu = script.Parent.Parent.Parent
local Constants = require(InGameMenu.Resources.Constants)

local AssetDetailThumbnail = Roact.PureComponent:extend("AssetDetailThumbnail")

local ASSET_THUMB_URL_ROOT = "rbxthumb://type=Asset&id="
local BUNDLE_THUMB_URL_ROOT = "rbxthumb://type=Outfit&id="
local THUMB_SIZE_URL = "&w=420&h=420"
local THUMB_SIZE_RATIO = 9/16

AssetDetailThumbnail.validateProps = t.strictInterface({
	bundleInfo = t.optional(t.table),
	selectedItem = t.table,
	LayoutOrder = t.optional(t.integer),
})

function AssetDetailThumbnail:getUrl()
	local bundleInfo = self.props.bundleInfo
	if bundleInfo and bundleInfo.costumeId then
		return BUNDLE_THUMB_URL_ROOT .. bundleInfo.costumeId .. THUMB_SIZE_URL
	else
		local assetId = self.props.selectedItem.assetId or ""
		return ASSET_THUMB_URL_ROOT .. assetId .. THUMB_SIZE_URL
	end	
end

function AssetDetailThumbnail:render()
	local thumbnailSize = Constants.PageWidth * THUMB_SIZE_RATIO

	return Roact.createElement("Frame", {
		LayoutOrder = self.props.LayoutOrder,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.fromScale(0.5, 0),
		Size = UDim2.fromOffset(thumbnailSize, thumbnailSize),
		Visible = not self.props.tryingOn,
	}, {
		LoadableImage = Roact.createElement(LoadableImage, {
			BackgroundTransparency = 1,
			Image = self:getUrl(),
			Size = UDim2.fromScale(1, 1),
			useShimmerAnimationWhileLoading = true,
		})
	})
end

return RoactRodux.connect(
	function(state, props)
		return {
			tryingOn = state.inspectAndBuy.TryingOn,
		}
	end, nil
)(AssetDetailThumbnail)