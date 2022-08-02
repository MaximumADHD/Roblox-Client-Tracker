local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)

local DetailsThumbnail = Roact.PureComponent:extend("DetailsThumbnail")

local function isPartOfBundleAndOffsale(assetInfo)
	if assetInfo and assetInfo.isForSale then
		return false
	else
		return assetInfo and assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
	end
end

function DetailsThumbnail:getUrl()
	local assetInfo = self.props.assetInfo
	local detailsInformation = self.props.detailsInformation
	local bundles = self.props.bundles
	local bundleId = UtilityFunctions.getBundleId(assetInfo)
	local partOfBundleAndOffsale = isPartOfBundleAndOffsale(assetInfo)
	local url = ""

	-- If the asset is part of a bundle and that bundle does
	-- not include a costumeId with which to get a thumbnail,
	-- use the asset's thumbnail url
	if partOfBundleAndOffsale and bundles[bundleId] and bundles[bundleId].costumeId then
		url = "rbxthumb://type=Outfit&id=" .. bundles[bundleId].costumeId .. "&w=420&h=420"
	else
		local assetId = detailsInformation.assetId
		url = "rbxthumb://type=Asset&id=" .. assetId .. "&w=420&h=420"
	end

	return url
end

function DetailsThumbnail:render()
	local view = self.props.view
	local detailsInformation = self.props.detailsInformation
	local tryingOnInfo = self.props.tryingOnInfo

	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local viewMapping = views[view]
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
