local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local InspectAndBuyFolder = script.Parent.Parent
local Colors = require(InspectAndBuyFolder.Colors)
local CreateFavoriteForAsset = require(InspectAndBuyFolder.Thunks.CreateFavoriteForAsset)
local DeleteFavoriteForAsset = require(InspectAndBuyFolder.Thunks.DeleteFavoriteForAsset)
local CreateFavoriteForBundle = require(InspectAndBuyFolder.Thunks.CreateFavoriteForBundle)
local DeleteFavoriteForBundle = require(InspectAndBuyFolder.Thunks.DeleteFavoriteForBundle)
local GetFavoriteForAsset = require(InspectAndBuyFolder.Thunks.GetFavoriteForAsset)
local GetFavoriteForBundle = require(InspectAndBuyFolder.Thunks.GetFavoriteForBundle)
local GotFavoriteForDetailsItem = require(InspectAndBuyFolder.Selectors.GotFavoriteForDetailsItem)
local IsDetailsItemPartOfBundle = require(InspectAndBuyFolder.Selectors.IsDetailsItemPartOfBundle)
local GetIsFavorite = require(InspectAndBuyFolder.Selectors.GetIsFavorite)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local getSelectionImageObjectRounded = require(InspectAndBuyFolder.getSelectionImageObjectRounded)

local FAVORITE_IMAGE_FILLED = "rbxasset://textures/ui/InspectMenu/ico_favorite.png"
local FAVORITE_IMAGE_NOT_FILLED = "rbxasset://textures/ui/InspectMenu/ico_favorite_off.png"
local ROBLOX_CREATOR_ID = "1"

local FavoritesButton = Roact.PureComponent:extend("FavoritesButton")

function FavoritesButton:init()
	self.selectedImage = getSelectionImageObjectRounded()
end

function FavoritesButton:willUpdate(nextProps)
	local gotFavoriteForDetailsItem = nextProps.gotFavoriteForDetailsItem
	local getFavoriteForAsset = self.props.getFavoriteForAsset
	local getFavoriteForBundle = self.props.getFavoriteForBundle

	if nextProps.assetInfo and nextProps.assetInfo.bundlesAssetIsIn and not gotFavoriteForDetailsItem then
		local assetInfo = nextProps.assetInfo
		local partOfBundle = #assetInfo.bundlesAssetIsIn > 0

		coroutine.wrap(function()
			if not partOfBundle then
				getFavoriteForAsset(assetInfo.assetId)
			else
				local bundleId = UtilityFunctions.getBundleId(assetInfo)
				getFavoriteForBundle(bundleId)
			end
		end)()
	end
end

function FavoritesButton:render()
	local isFavorited = self.props.isFavorited
	local createFavoriteForAsset = self.props.createFavoriteForAsset
	local deleteFavoriteForAsset = self.props.deleteFavoriteForAsset
	local createFavoriteForBundle = self.props.createFavoriteForBundle
	local deleteFavoriteForBundle = self.props.deleteFavoriteForBundle
	local isDetailsItemPartOfBundle = self.props.isDetailsItemPartOfBundle
	local favoriteButtonRef = self.props.favoriteButtonRef
	local assetInfo = self.props.assetInfo
	local creatorId = assetInfo and assetInfo.creatorId or 0

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 44, 0, 44),
		LayoutOrder = 1,
		Image = "rbxasset://textures/ui/InspectMenu/Button_outline.png",
		ImageColor3 = Colors.White,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(5, 5, 120, 20),
		SelectionImageObject = self.selectedImage,
		-- Users can only favorite Roblox created items, otherwise they'll be captcha'd. We do not support captchas in game.
		Visible = creatorId == ROBLOX_CREATOR_ID,
		[Roact.Ref] = favoriteButtonRef,
		[Roact.Event.Activated] = function()
			if isFavorited then
				if isDetailsItemPartOfBundle then
					local bundleId = UtilityFunctions.getBundleId(assetInfo)
					deleteFavoriteForBundle(bundleId)
				else
					deleteFavoriteForAsset(assetInfo.assetId)
				end
			else
				if isDetailsItemPartOfBundle then
					local bundleId = UtilityFunctions.getBundleId(assetInfo)
					createFavoriteForBundle(bundleId)
				else
					createFavoriteForAsset(assetInfo.assetId)
				end
			end
		end,
	}, {
		FavoriteIcon = Roact.createElement("ImageLabel", {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 26, 0, 26),
			Position = UDim2.new(0, 22, 0, 22),
			Image = isFavorited and FAVORITE_IMAGE_FILLED or FAVORITE_IMAGE_NOT_FILLED,
			ImageColor3 = Colors.White,
		}),
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			view = state.view,
			assetInfo = state.assets[assetId],
			bundleInfo = state.bundles,
			gotFavoriteForDetailsItem = GotFavoriteForDetailsItem(state),
			isFavorited = GetIsFavorite(state),
			isDetailsItemPartOfBundle = IsDetailsItemPartOfBundle(state),
		}
	end,
	function(dispatch)
		return {
			createFavoriteForAsset = function(assetId)
				dispatch(CreateFavoriteForAsset(assetId))
			end,
			deleteFavoriteForAsset = function(assetId)
				dispatch(DeleteFavoriteForAsset(assetId))
			end,
			createFavoriteForBundle = function(bundleId)
				dispatch(CreateFavoriteForBundle(bundleId))
			end,
			deleteFavoriteForBundle = function(bundleId)
				dispatch(DeleteFavoriteForBundle(bundleId))
			end,
			getFavoriteForAsset = function(assetId)
				dispatch(GetFavoriteForAsset(assetId))
			end,
			getFavoriteForBundle = function(bundleId)
				dispatch(GetFavoriteForBundle(bundleId))
			end,
		}
	end
)(FavoritesButton)