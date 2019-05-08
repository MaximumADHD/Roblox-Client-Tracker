local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)
local GetAssetFavoriteCount = require(InspectAndBuyFolder.Thunks.GetAssetFavoriteCount)
local GetBundleFavoriteCount = require(InspectAndBuyFolder.Thunks.GetBundleFavoriteCount)
local GotCurrentFavoriteCount = require(InspectAndBuyFolder.Selectors.GotCurrentFavoriteCount)
local getSelectionImageObjectRegular = require(InspectAndBuyFolder.getSelectionImageObjectRegular)

local FAVORITES_SIZE = 16
local FAVORITE_IMAGE_FILLED = "rbxasset://textures/ui/InspectMenu/ico_favorite.png"

local Favorites = Roact.PureComponent:extend("Favorites")

--[[
	Sets the variables used to display text. If a bundle is
	being shown, they will display the bundle's data instead.
]]
function Favorites:setText()
	local assetInfo = self.props.assetInfo or {}
	local partOfBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn > 0
	local bundleInfo = self.props.bundleInfo

	if partOfBundle then
		local bundleId = UtilityFunctions.getBundleId(assetInfo)
		if bundleInfo[bundleId] then
			self.numFavorites = bundleInfo[bundleId].numFavorites
		end
	elseif assetInfo then
		self.numFavorites = assetInfo.numFavorites
	end
end

function Favorites:init()
	self.numFavorites = ""
	self.selectionImageObject = getSelectionImageObjectRegular()
end

function Favorites:willUpdate(nextProps)
	local getAssetFavoriteCount = self.props.getAssetFavoriteCount
	local getBundleFavoriteCount = self.props.getBundleFavoriteCount

	-- We need to check if this asset is in any bundles, so that web call
	-- needs to be completed first.
	if nextProps.assetInfo and nextProps.assetInfo.bundlesAssetIsIn then
		local assetInfo = nextProps.assetInfo
		local partOfBundle = #assetInfo.bundlesAssetIsIn > 0
		local gotCurrentFavoriteCount = nextProps.gotCurrentFavoriteCount

		if not gotCurrentFavoriteCount then
			coroutine.wrap(function()
				if not partOfBundle then
					getAssetFavoriteCount(assetInfo.assetId)
				else
					local bundleId = UtilityFunctions.getBundleId(assetInfo)
					getBundleFavoriteCount(bundleId)
				end
			end)()
		end
	end
end

function Favorites:render()
	self:setText()

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, FAVORITES_SIZE),
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	}, {
		FavoriteIcon = Roact.createElement("ImageButton", {
			Size = UDim2.new(0, FAVORITES_SIZE, 0, FAVORITES_SIZE),
			BackgroundTransparency = 1,
			Image = FAVORITE_IMAGE_FILLED,
			SelectionImageObject = self.selectionImageObject,
		}),
		FavoriteText = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, -FAVORITES_SIZE, 1, 0),
			Position = UDim2.new(0, FAVORITES_SIZE + 5, 0, 0),
			BackgroundTransparency = 1,
			Text = self.numFavorites or "",
			Font = Enum.Font.Gotham,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = 12,
			TextColor3 = Color3.new(1, 1, 1),
		})
	})
end

function Favorites:shouldUpdate(nextProps)
	if not nextProps.detailsInformation.viewingDetails then
		return false
	end

	return true
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			detailsInformation = state.detailsInformation,
			assetInfo = state.assets[assetId],
			bundleInfo = state.bundles,
			gotCurrentFavoriteCount = GotCurrentFavoriteCount(state),
		}
	end,
	function(dispatch)
		return {
			getAssetFavoriteCount = function(assetId)
				dispatch(GetAssetFavoriteCount(assetId))
			end,
			getBundleFavoriteCount = function(bundleId)
				dispatch(GetBundleFavoriteCount(bundleId))
			end,
		}
	end
)(Favorites)