--!strict
--[[
	A container that sets up full assets functionality. It sets up asset insertion, AssetPreview, and messageBoxes.

	Required Props:
		callback TryOpenAssetConfig: invoke assetConfig page with an assetId.

	Optional Props:
		int LayoutOrder
		UDim2 Position
		function renderTopContent: function that returns a roact element which is the content located above the infinite grid.
		UDim2 Size
]]
local Plugin = script.Parent.Parent.Parent

local FFlagToolboxFixTryInStudio = game:GetFastFlag("ToolboxFixTryInStudio")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local map = require(Packages.LuauPolyfill).Array.map

local Util = Plugin.Core.Util
local ContextGetter = require(Util.ContextGetter)
local getStartupAssetId = require(Util.getStartupAssetId)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork

local AssetGrid = require(Plugin.Core.Components.AssetGrid)
local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)
local AssetLogicWrapper = require(Plugin.Core.Components.AssetLogicWrapper)
local AudioScroller = require(Plugin.Core.Components.AudioHomeView.AudioScroller)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local GetAssets
local SetAssetPreview
local Actions = Plugin.Core.Actions
if FFlagToolboxFixTryInStudio then
	GetAssets = require(Actions.GetAssets)
	SetAssetPreview = require(Actions.SetAssetPreview)
end

local GetAssetPreviewDataForStartup = require(Plugin.Core.Thunks.GetAssetPreviewDataForStartup)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)
local IXPContext = require(Plugin.Core.ContextServices.IXPContext)

local NextPageRequest = require(Plugin.Core.Networking.Requests.NextPageRequest)
local PostAssetCheckPermissions = require(Plugin.Core.Networking.Requests.PostAssetCheckPermissions)

type _ExternalProps = {
	LayoutOrder: number?,
	Position: number?,
	RenderTopContent: (() -> any)?,
	Size: UDim2?,
}

type _InternalProps = {
	-- Props from AssetLogicWrapper
	CanInsertAsset: () -> boolean,
	OnAssetPreviewButtonClicked: ((assetData: any) -> ()),
	ParentAbsolutePosition: Vector2,
	ParentSize: Vector2,
	TryInsert: ((assetData: any, assetWasDragged: boolean, insertionMethod: string?) -> any),
	TryOpenAssetConfig: ((
		assetId: number?,
		flowType: string,
		instances: any,
		assetTypeEnum: Enum.AssetType
	) -> any),
	-- mapStateToProps
	assetIds: { number },
	categoryName: string,
	currentUserPackagePermissions: any,
	idToAssetMap: { [number]: AssetInfo.AssetInfo },
	-- mapDispatchToProps
	dispatchPostAssetCheckPermissions: ((networkInterface: any, assetIds: { number }) -> any),
	getAssetPreviewDataForStartup: ((assetId: number, tryInsert: any, localization: any, api: any) -> any),
	nextPage: ((networkInterface: any, settings: any) -> any),
	-- Context
	IXP: any,
}

export type AssetGridContainerProps = _ExternalProps & _InternalProps

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

AssetGridContainer.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
}

function AssetGridContainer:init(props)
	self.requestNextPage = function()
		local networkInterface = getNetwork(self)
		local settings = self.props.Settings:get("Plugin")
		self.props.nextPage(networkInterface, settings)
	end

	self.setAssetPreview = if FFlagToolboxFixTryInStudio
		then function(assetData)
			local assetId = assetData.Asset.Id
			props.getAssets({ assetData })
			props.setAssetPreview(true, assetId)
		end
		else nil
end

function AssetGridContainer:didMount()
	local assetIdStr = getStartupAssetId()
	local assetId = tonumber(assetIdStr)

	if assetId then
		local props = self.props
		if FFlagToolboxFixTryInStudio then
			props.getAssetPreviewDataForStartup(
				assetId,
				props.TryInsert,
				props.Localization,
				getNetwork(self),
				self.setAssetPreview
			)
		else
			props.getAssetPreviewDataForStartup(assetId, props.TryInsert, props.Localization, getNetwork(self))
		end
	end
end

function AssetGridContainer:render()
	local props: AssetGridContainerProps = self.props

	local ixp = props.IXP
	local assetIds = props.assetIds
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local renderTopContent = props.RenderTopContent
	local size = props.Size

	-- Props from AssetLogicWrapper
	local canInsertAsset = props.CanInsertAsset
	local onAssetPreviewButtonClicked = props.OnAssetPreviewButtonClicked
	local tryInsert = props.TryInsert
	local tryOpenAssetConfig = props.TryOpenAssetConfig

	-- TODO: Move to AssetFetcher?
	local isPackages = Category.categoryIsPackage(props.categoryName)
	if isPackages and #assetIds ~= 0 then
		local assetIdList = {}
		local index = 1
		while index < PermissionsConstants.MaxPackageAssetIdsForHighestPermissionsRequest and assetIds[index] ~= nil do
			local assetId = assetIds[index]
			if not self.props.currentUserPackagePermissions[assetId] then
				table.insert(assetIdList, assetId)
			end
			index = index + 1
		end

		if #assetIdList ~= 0 then
			self.props.dispatchPostAssetCheckPermissions(getNetwork(self), assetIdList)
		end
	end

	if Category.categoryIsAudio(props.categoryName) and not ixp:isError() then
		if not ixp:isReady() then
			-- IXP state has not loaded yet, avoid a flash of (potentially) the wrong content
			return nil
		end

		local ixpVariables = ixp:getVariables()["MarketplaceHomeView"]

		if ixpVariables then
			if ixpVariables["2022Q2AudioDiscoveryEnabled"] then
				local assets: { AssetInfo.AssetInfo } = map(props.assetIds, function(assetId)
					return props.idToAssetMap[assetId]
				end)

				return AudioScroller.Generator({
					Assets = assets,
					Loading = false,
					CanInsertAsset = canInsertAsset,
					TryInsert = tryInsert,
					Position = position,
					FetchNextPage = self.requestNextPage,
					Size = size,
					tryOpenAssetConfig = props.TryOpenAssetConfig,
				})
			end
		end
	end

	return Roact.createElement(AssetGrid, {
		AssetIds = assetIds,
		AssetMap = props.idToAssetMap,
		LayoutOrder = layoutOrder,
		Position = position,
		RenderTopContent = renderTopContent,
		RequestNextPage = self.requestNextPage,
		Size = size,

		-- Props from AssetLogicWrapper
		CanInsertAsset = canInsertAsset,
		OnAssetPreviewButtonClicked = onAssetPreviewButtonClicked,
		ParentAbsolutePosition = props.ParentAbsolutePosition,
		ParentSize = props.ParentSize,
		TryInsert = tryInsert,
		TryOpenAssetConfig = tryOpenAssetConfig,
	})
end

AssetGridContainer = AssetLogicWrapper(AssetGridContainer)

AssetGridContainer = withContext({
	IXP = IXPContext,
	Localization = ContextServices.Localization,
	Settings = Settings,
})(AssetGridContainer)

local function mapStateToProps(state: any, props)
	state = state or {}
	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}
	local categoryName = pageInfo.categoryName or Category.DEFAULT.name

	return {
		assetIds = assets.idsToRender or {},
		categoryName = categoryName,
		currentUserPackagePermissions = state.packages.permissionsTable or {},
		idToAssetMap = assets.idToAssetMap,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchPostAssetCheckPermissions = function(networkInterface, assetIds)
			dispatch(PostAssetCheckPermissions(networkInterface, assetIds))
		end,
		getAssetPreviewDataForStartup = function(assetId, tryInsert, localization, networkInterface, setAssetPreview)
			dispatch(GetAssetPreviewDataForStartup(assetId, tryInsert, localization, networkInterface, setAssetPreview))
		end,
		getAssets = if FFlagToolboxFixTryInStudio
			then function(assetData)
				return dispatch(GetAssets(assetData))
			end
			else nil,
		nextPage = function(networkInterface, settings)
			dispatch(NextPageRequest(networkInterface, settings))
		end,
		setAssetPreview = if FFlagToolboxFixTryInStudio
			then function(isPreviewing, previewAssetId)
				return dispatch(SetAssetPreview(isPreviewing, previewAssetId))
			end
			else nil,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)
