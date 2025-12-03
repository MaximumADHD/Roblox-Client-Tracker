--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Packages.Roact)
local Cryo = require(CorePackages.Packages.Cryo)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UIBlox = require(CorePackages.Packages.UIBlox)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local AssetCard = require(InspectAndBuyFolder.Components.AssetCard)
local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)
local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local SetAssetFromBundleInfo = require(InspectAndBuyFolder.Actions.SetAssetFromBundleInfo)

local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav

local AssetList = Roact.PureComponent:extend("AssetList")

local CARD_PADDING = 10
local FRAME_PADDING = 15
local ASSET_CARD_RATIO = 0.68
local NUM_SHIMMER_PANELS = 30

function AssetList:calculateCanvasSize(numCardsPerRow, numAssetCards, cardSizeY)
	local rbx = self.gridFrameRef.current
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]

	if rbx then
		local positionDifference = viewMapping.TopSizeY + FRAME_PADDING
		local canvasSize = math.ceil(numAssetCards / numCardsPerRow) * (cardSizeY + CARD_PADDING) + positionDifference
		rbx.Parent.CanvasSize = UDim2.new(1, 0, 0, canvasSize)
	end
end

function AssetList:init()
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]

	self.gridFrameRef = Roact.createRef()

	self.state = {
		assetCardSizeX = viewMapping.AssetCardMaxSizeX,
		assetCardSizeY = viewMapping.AssetCardMaxSizeY,
		assetCardsLoaded = if FFlagAddNewPlayerListMobileFocusNav then false else nil,
	}
end

function AssetList:render()
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]

	local assets = self.props.assets
	local numCardsPerRow = viewMapping.MaxAssetCardsPerRow
	local assetCardSizeX = self.state.assetCardSizeX
	local assetCardSizeY = self.state.assetCardSizeY
	local assetCards = {}
	local numAssets = 0

	assetCards["UIGridLayout"] = Roact.createElement("UIGridLayout", {
		CellPadding = UDim2.new(0, CARD_PADDING, 0, CARD_PADDING),
		CellSize = UDim2.new(0, assetCardSizeX, 0, assetCardSizeY),
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirectionMaxCells = numCardsPerRow,
	})

	for _, assetInfo in pairs(assets) do
		numAssets = numAssets + 1
		assetCards[assetInfo.assetId] = Roact.createElement(AssetCard, {
			assetInfo = assetInfo,
			assetCardSizeX = assetCardSizeX,
		})
	end

	if numAssets == 0 then
		-- show shimmer panels if we're still waiting for the assets table to be filled
		for i = 1, NUM_SHIMMER_PANELS do
			assetCards[i] = Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(1, 0, 0, assetCardSizeX),
			})
		end
	else
		if FFlagAddNewPlayerListMobileFocusNav then
			self:setState({
				assetCardsLoaded = true,
			})
		end
	end

	self:calculateCanvasSize(numCardsPerRow, numAssets, assetCardSizeY)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, -(2 * viewMapping.BorderPaddingSize), 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = 3,
		[Roact.Ref] = self.gridFrameRef,
		[Roact.Change.AbsoluteSize] = function(rbx)
			spawn(function()
				self:resize()
			end)
		end,
	}, assetCards)
end

function AssetList:didMount()
	self:resize()
	self.mounted = true
end

--[[
	We need to update the assets with the bundle information
	so that we can display the correct bundle information in the asset card
	when the asset is part of a bundle.
	However, since we send requests of bundles and assets at the same time,
	we need to make sure that the assets are loaded before we update the assets with the bundle information.

	Thus, we trigger the updateAssetsFromBundles function in didUpdate lifecycle method.
]]
function AssetList:updateAssetsFromBundles()
	local bundles = self.props.bundles
	local assetBundles = self.props.assetBundles
	local assets = self.props.assets
	local loadedAssetIds = Cryo.Dictionary.keys(assets)

	if not bundles or Cryo.isEmpty(bundles) then
		return
	end
	local bundleInfoIndex = 1
	for _, bundleInfo in pairs(bundles) do
		-- loop all bundles
		local assetsIdsInBundle = bundleInfo.assetIds
		for i = 1, #assetsIdsInBundle do
			-- loop each asset in each bundle
			local assetId = tostring(assetsIdsInBundle[i])
			if not table.find(loadedAssetIds, assetId) then
				-- make sure the assetId is loaded assets
				continue
			end
			local assetBundleMapping = assetBundles[assetId] or {}
			-- if the asset is in multiple bundles, we will only respect the first bundle for displaying
			if
				#assetBundleMapping == 1
				or (
					bundleInfoIndex == 1
					and #assetBundleMapping > 1
					and assets[assetId]
					and assets[assetId].parentBundleId == nil
				)
			then
				-- if the asset only belongs to 1 bundle
				-- or only consider the first bundle own the asset
				self.props.dispatchSetAssetFromBundleInfo(assetId, bundleInfo)
			end
		end
		bundleInfoIndex += 1
	end
end

function AssetList:didUpdate(prevProps)
	if self.props.view ~= prevProps.view then
		self:resize()
	end

	if
		self.mounted
		and self.props.gamepadEnabled
		and not self.props.detailsInformation.viewingDetails
		and self.props.visible
		and (if FFlagAddNewPlayerListMobileFocusNav then self.state.assetCardsLoaded else true)
	then
		GuiService.SelectedCoreObject = self.gridFrameRef.current:FindFirstChildWhichIsA("GuiObject")
	end

	if self.props.assetBundles ~= prevProps.assetBundles or self.props.bundles ~= prevProps.bundles then
		self:updateAssetsFromBundles()
	end
end

function AssetList:willUnmount()
	self.mounted = false
end

function AssetList:resize()
	local rbx = self.gridFrameRef.current
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]

	if rbx then
		local numCardsPerRow = viewMapping.MaxAssetCardsPerRow

		local width = math.floor((rbx.AbsoluteSize.X - CARD_PADDING * (numCardsPerRow - 1)) / numCardsPerRow)
		local assetCardSizeX = math.min(width, viewMapping.AssetCardMaxSizeX)
		local assetCardSizeY = math.min(width / ASSET_CARD_RATIO, viewMapping.AssetCardMaxSizeY)

		if self.state.assetCardSizeX ~= assetCardSizeX or self.state.assetCardSizeY ~= assetCardSizeY then
			self:setState({
				assetCardSizeX = assetCardSizeX,
				assetCardSizeY = assetCardSizeY,
			})
		end
	end
end

local function AssetListWrapper(props)
	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local combinedProps = Cryo.Dictionary.join(props, { views = views })
			return Roact.createElement(AssetList, combinedProps)
		end,
	})
end

return RoactRodux.connect(function(state, props)
	return {
		view = state.view,
		visible = state.visible,
		assets = state.assets,
		bundles = state.bundles,
		assetBundles = state.assetBundles,
		detailsInformation = state.detailsInformation,
		gamepadEnabled = state.gamepadEnabled,
	}
end, function(dispatch)
	return {
		dispatchSetAssetFromBundleInfo = function(assetId, bundleInfo)
			dispatch(SetAssetFromBundleInfo(assetId, bundleInfo))
		end,
	}
end)(AssetListWrapper)
