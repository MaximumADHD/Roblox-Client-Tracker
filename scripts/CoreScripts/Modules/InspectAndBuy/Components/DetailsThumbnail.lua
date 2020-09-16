local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

local GetFFlagUseThumbnailUrl = require(game:GetService("CoreGui").RobloxGui.Modules.Common.Flags.GetFFlagUseThumbnailUrl)

local DetailsThumbnail = Roact.PureComponent:extend("DetailsThumbnail")

local function isPartOfBundle(assetInfo)
	return assetInfo and assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
end

function DetailsThumbnail:getUrl()
	local assetInfo = self.props.assetInfo
	local detailsInformation = self.props.detailsInformation
	local bundles = self.props.bundles
	local partOfBundle = isPartOfBundle(assetInfo)
	local url = ""

	if partOfBundle then
		local bundleId = UtilityFunctions.getBundleId(assetInfo)
		if bundles[bundleId] then
			url = GetFFlagUseThumbnailUrl() and "rbxthumb://type=Outfit&id=" .. bundles[bundleId].costumeId .. "&w=420&h=420" or Url.BASE_URL_SECURE .."outfit-thumbnail/image?userOutfitId=" ..bundles[bundleId].costumeId
				.."&width=420&height=420&format=png"
		end
	else
		local assetId = detailsInformation.assetId
		url = GetFFlagUseThumbnailUrl() and "rbxthumb://type=Asset&id=" .. assetId .. "&w=420&h=420" or Url.BASE_URL_SECURE .."asset-thumbnail/image?assetId=" ..assetId .."&width=420&height=420&format=png"
	end

	return url
end

function DetailsThumbnail:render()
	local view = self.props.view
	local viewMapping = self._context[view]
	local detailsInformation = self.props.detailsInformation
	local tryingOnInfo = self.props.tryingOnInfo

	return Roact.createElement("Frame", {
		Position = viewMapping.DetailsThumbnailFramePosition,
		Size = UDim2.new(1, 0, 0, 300),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
		Visible = not tryingOnInfo.tryingOn,
	}, {
		Thumbnail = detailsInformation.viewingDetails and Roact.createElement("ImageLabel", {
			Position = viewMapping.DetailsThumbnailPosition,
			AnchorPoint = viewMapping.DetailsThumbnailAnchorPoint,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			Image = self:getUrl(),
		}, {
			AspectRatioConstraint = Roact.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1,
				AspectType = Enum.AspectType.FitWithinMaxSize,
				DominantAxis = viewMapping.DetailsThumbnailARDominantAxis,
			}),
		})
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			view = state.view,
			tryingOnInfo = state.tryingOnInfo,
			detailsInformation = state.detailsInformation,
			assetInfo = state.assets[assetId],
			bundles = state.bundles,
		}
	end
)(DetailsThumbnail)