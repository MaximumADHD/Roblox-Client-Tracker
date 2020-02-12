local CorePackages = game:GetService("CorePackages")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local DetailsText = require(InspectAndBuyFolder.Components.DetailsText)
local DetailsThumbnail = require(InspectAndBuyFolder.Components.DetailsThumbnail)
local DetailsDescription = require(InspectAndBuyFolder.Components.DetailsDescription)
local DetailsButtons = require(InspectAndBuyFolder.Components.DetailsButtons)
local TryOnViewport = require(InspectAndBuyFolder.Components.TryOnViewport)
local GetAssetBundles = require(InspectAndBuyFolder.Thunks.GetAssetBundles)
local ReportOpenDetailsPage = require(InspectAndBuyFolder.Thunks.ReportOpenDetailsPage)
local GetEconomyProductInfo = require(InspectAndBuyFolder.Thunks.GetEconomyProductInfo)
local Colors = require(InspectAndBuyFolder.Colors)
local UtilityFunctions = require(InspectAndBuyFolder.UtilityFunctions)

local AssetDetails = Roact.PureComponent:extend("AssetDetails")

function AssetDetails:setScrollingEnabled(enabled)
	local scrollingEnabled = self.state.scrollingEnabled

	if scrollingEnabled ~= enabled then
		self:setState({
			scrollingEnabled = enabled
		})
	end
end

function AssetDetails:init()
	self.state = {
		scrollingEnabled = true,
	}
end

function AssetDetails:willUpdate(nextProps)
	if self.props.assetInfo ~= nextProps.assetInfo and nextProps.assetInfo then
		local getAssetBundles = self.props.getAssetBundles

		if not nextProps.assetInfo.bundlesAssetIsIn then
			getAssetBundles(nextProps.assetInfo.assetId)
		end
	end
end

function AssetDetails:didUpdate(prevProps)
	local reportOpenDetailsPage = self.props.reportOpenDetailsPage
	local assetInfo = self.props.assetInfo
	local prevAssetInfo = prevProps.assetInfo

	if assetInfo ~= prevAssetInfo and assetInfo and assetInfo.bundlesAssetIsIn then
		local getEconomyProductInfo = self.props.getEconomyProductInfo
		local bundles = self.props.bundles
		local isBundle = assetInfo.bundlesAssetIsIn and #assetInfo.bundlesAssetIsIn == 1
		local bundleId = isBundle and UtilityFunctions.getBundleId(assetInfo)
		local productId = isBundle and bundles[bundleId].productId or assetInfo.productId

		if (not isBundle and assetInfo.owned == nil) or (isBundle and bundles[bundleId].owned == nil) then
			getEconomyProductInfo(productId, isBundle, bundleId)
		end
	end

	--[[
		We need to report when the item details page was opened, but we need to know if it's showing a bundle
		or asset. So we have to check if we've gotten that data yet or not.
	]]
	local startedViewingDetails = self.props.detailsInformation.viewingDetails
		and not prevProps.detailsInformation.viewingDetails
	local obtainedBundlesInfo = prevAssetInfo and not prevAssetInfo.bundlesAssetIsIn
		and assetInfo and assetInfo.bundlesAssetIsIn

	if ((assetInfo and assetInfo.bundlesAssetIsIn and startedViewingDetails) or obtainedBundlesInfo) then
		reportOpenDetailsPage(assetInfo)
	end
end

function AssetDetails:render()
	local view = self.props.view
	local viewMapping = self._context[view]
	local detailsInformation = self.props.detailsInformation
	local assetInfo = self.props.assetInfo or {}
	local localPlayerModel = self.props.localPlayerModel
	local scrollingEnabled = self.state.scrollingEnabled

	return Roact.createElement("Frame", {
		Position = UDim2.new(0, viewMapping.BorderPaddingSize, 0, 0),
		Size = UDim2.new(1, -(2 * viewMapping.BorderPaddingSize), 1, 0),
		BackgroundTransparency = 0,
		BackgroundColor3 = Colors.Carbon,
		BorderSizePixel = 0,
		-- Do not show asset information until we know if a bundle should be shown instead.
		Visible = detailsInformation.viewingDetails and assetInfo.bundlesAssetIsIn ~= nil,
	}, {
		DetailsButtons = Roact.createElement(DetailsButtons),

		Container = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			ScrollBarThickness = 0,
			Size = UDim2.new(1, 0, 1, -55),
			ScrollingEnabled = scrollingEnabled,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),
			DetailsThumbnail = Roact.createElement(DetailsThumbnail),
			TryOnViewport = localPlayerModel and Roact.createElement(TryOnViewport, {
				localPlayerModel = localPlayerModel,
				setScrollingEnabled = function(enabled)
					self:setScrollingEnabled(enabled)
				end,
			}),
			DetailsText = Roact.createElement(DetailsText),
			DetailsDescription = Roact.createElement(DetailsDescription),
		})
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		local assetId = state.detailsInformation.assetId

		return {
			view = state.view,
			detailsInformation = state.detailsInformation,
			assetInfo = state.assets[assetId],
			bundles = state.bundles,
		}
	end,

	function(dispatch)
		return {
			getAssetBundles = function(assetId)
				dispatch(GetAssetBundles(assetId))
			end,
			getEconomyProductInfo = function(productId, isBundle, bundleId)
				dispatch(GetEconomyProductInfo(productId, isBundle, bundleId))
			end,
			reportOpenDetailsPage = function(assetInfo)
				dispatch(ReportOpenDetailsPage(assetInfo))
			end,
		}
	end
)(AssetDetails)