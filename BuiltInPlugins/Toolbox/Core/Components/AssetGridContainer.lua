--[[
	A container that sets up full assets functionality. It sets up asset insertion, AssetPreview, and messageBoxes.

	Required Props:
		callback tryOpenAssetConfig: invoke assetConfig page with an assetId.

	Optional Props:
		int LayoutOrder
		UDim2 Position
		function renderTopContent: function that returns a roact element which is the content located above the infinite grid.
		UDim2 Size
]]
local HttpService = game:GetService("HttpService")

local FFlagToolboxEnableScriptConfirmation = game:GetFastFlag("ToolboxEnableScriptConfirmation")
local FFlagToolboxGetItemsDetailsUsesSingleApi = game:GetFastFlag("ToolboxGetItemsDetailsUsesSingleApi")

local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local Images = require(Util.Images)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)
local InsertToolPromise = require(Util.InsertToolPromise)
local InsertAsset = require(Util.InsertAsset)
local getStartupAssetId = require(Util.getStartupAssetId)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork

local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)
local MessageBox = require(Plugin.Core.Components.MessageBox.MessageBox)
local ScriptConfirmationDialog = require(Plugin.Core.Components.ScriptConfirmationDialog)

local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)

local AssetGrid = require(Plugin.Core.Components.AssetGrid)
local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local GetAssetPreviewDataForStartup = require(Plugin.Core.Thunks.GetAssetPreviewDataForStartup)
local SetMostRecentAssetInsertTime = require(Plugin.Core.Actions.SetMostRecentAssetInsertTime)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local NextPageRequest = require(Plugin.Core.Networking.Requests.NextPageRequest)
local PostAssetCheckPermissions = require(Plugin.Core.Networking.Requests.PostAssetCheckPermissions)

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

AssetGridContainer.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
}

function AssetGridContainer:init(props)
	self.ref = Roact.createRef()

	self.state = {
		isShowingToolMessageBox = false,
		absoluteSize = Vector2.new(Constants.TOOLBOX_MIN_WIDTH, 0),
		absolutePosition = Vector2.new(),
		isShowingScriptWarningMessageBox = false,
		scriptWarningInfo = nil,
	}

	--[[
		We need to track when the user last triggered an insertion, because inserting
		an asset can take several seconds depending on the asset's loading speed. This
		means throttling inserts via "onAssetInserted" does not work as intended
		because a user can queue up several inserts of an asset which is not loaded yet,
		and "onAssetInserted" does not fire and update the last inserted time until
		the asset in question has finished loading.
	]]
	self.lastInsertAttemptTime = 0

	self.canInsertAsset = function()
		return (tick() - self.lastInsertAttemptTime > Constants.TIME_BETWEEN_ASSET_INSERTION)
			and not self.insertToolPromise:isWaiting()
	end

	self.onMessageBoxClosed = function()
		self:setState({
			isShowingToolMessageBox = false,
		})

		self.insertToolPromise:insertToWorkspace()
	end

	self.onMessageBoxButtonClicked = function(index, action)
		self:setState({
			isShowingToolMessageBox = false,
		})

		if action == "yes" then
			self.insertToolPromise:insertToStarterPack()
		elseif action == "no" then
			self.insertToolPromise:insertToWorkspace()
		end
	end

	self.onInsertToolPrompt = function()
		self:setState({
			isShowingToolMessageBox = true,
		})
	end

	self.onScriptWarningBoxClosed = function()
		if not FFlagToolboxEnableScriptConfirmation then
			return
		end
		self:setState({
			isShowingScriptWarningMessageBox = false,
		})
		self.insertToolPromise:dismissWarningPrompt()
	end

	self.onInsertScriptWarningPrompt = function(info)
		if not FFlagToolboxEnableScriptConfirmation then
			return
		end
		local settings = self.props.Settings:get("Plugin")
		if settings:getShowScriptWarning() then
			self:setState({
				isShowingScriptWarningMessageBox = true,
				scriptWarningInfo = info,
			})
			return true
		else
			return false
		end
	end

	self.onScriptWarningBoxToggleShow = function(showState)
		local settings = self.props.Settings:get("Plugin")
		settings:setShowScriptWarning(showState)
	end

	self.insertToolPromise = InsertToolPromise.new(self.onInsertToolPrompt, self.onInsertScriptWarningPrompt)

	self.tryInsert = function(assetData, assetWasDragged, insertionMethod)
		self.lastInsertAttemptTime = tick()

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local currentProps = self.props
		local categoryName = currentProps.categoryName
		local searchTerm = currentProps.searchTerm or ""
		local assetIndex = currentProps.assetIndex

		local currentCategoryName = categoryName

		local plugin = self.props.Plugin:get()
		InsertAsset.tryInsert({
			plugin = plugin,
			assetId = assetId,
			assetName = assetName,
			assetTypeId = assetTypeId,
			onSuccess = function(assetId, insertedInstance)
				self.props.postInsertAssetRequest(getNetwork(self), assetId)
				self.props.setMostRecentAssetInsertTime()
				insertionMethod = insertionMethod or (assetWasDragged and "DragInsert" or "ClickInsert")
				self.props.AssetAnalytics:get():logInsert(assetData, insertionMethod, insertedInstance)
			end,
			currentCategoryName = currentCategoryName,
			categoryName = categoryName,
			searchTerm = searchTerm,
			assetIndex = assetIndex,
		}, self.insertToolPromise, assetWasDragged)
	end

	self.updateBoundaryVariables = function()
		local ref = self.ref.current
		if not ref then
			return
		end
		if self.state.absolutePosition ~= ref.AbsolutePosition or self.state.absoluteSize ~= ref.AbsoluteSize then
			self:setState({
				absoluteSize = ref.AbsoluteSize,
				absolutePosition = ref.AbsolutePosition,
			})
		end
	end

	self.requestNextPage = function()
		local networkInterface = getNetwork(self)
		local settings = self.props.Settings:get("Plugin")
		self.props.nextPage(networkInterface, settings)
	end
end

function AssetGridContainer:didMount()
	local assetIdStr = getStartupAssetId()
	local assetId = tonumber(assetIdStr)

	self.updateBoundaryVariables()

	if assetId then
		local props = self.props
		if FFlagToolboxGetItemsDetailsUsesSingleApi then
			props.getAssetPreviewDataForStartup(assetId, self.tryInsert, props.Localization, getNetwork(self))
		else
			props.getAssetPreviewDataForStartup(assetId, self.tryInsert, props.Localization, props.API:get())
		end
	end
end

function AssetGridContainer:willUnmount()
	self.insertToolPromise:destroy()
end

function AssetGridContainer:render()
	local props = self.props
	local state = self.state

	local assetIds = props.assetIds
	local automaticSize = props.AutomaticSize
	local layoutOrder = props.LayoutOrder
	local isPreviewing = props.isPreviewing
	local position = props.Position
	local renderTopContent = props.renderTopContent
	local size = props.Size
	local tryOpenAssetConfig = props.tryOpenAssetConfig

	local isShowingToolMessageBox = state.isShowingToolMessageBox
	local isShowingScriptWarningMessageBox = state.isShowingScriptWarningMessageBox
	local scriptWarningInfo = state.scriptWarningInfo

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

	return Roact.createElement("Frame", {
		AutomaticSize = automaticSize,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
		[Roact.Ref] = self.ref,
		[Roact.Change.AbsolutePosition] = self.updateBoundaryVariables,
		[Roact.Change.AbsoluteSize] = self.updateBoundaryVariables,
	}, {
		ToolScriptWarningMessageBox = isShowingScriptWarningMessageBox
			and Roact.createElement(ScriptConfirmationDialog, {
				Name = string.format("ToolboxToolScriptWarningMessageBox-%s", HttpService:GenerateGUID()),

				Info = scriptWarningInfo,
				Icon = Images.INFO_ICON,

				onClose = self.onScriptWarningBoxClosed,
				onButtonClicked = self.onScriptWarningBoxClosed,
				onChangeShowDialog = self.onScriptWarningBoxToggleShow,
			}),

		ToolMessageBox = isShowingToolMessageBox and Roact.createElement(MessageBox, {
			Name = string.format("ToolboxToolMessageBox-%s", HttpService:GenerateGUID()),

			Title = "Insert Tool",
			Text = "Put this tool into the starter pack?",
			Icon = Images.INFO_ICON,

			onClose = self.onMessageBoxClosed,
			onButtonClicked = self.onMessageBoxButtonClicked,

			buttons = {
				{
					Text = "Yes",
					action = "yes",
				},
				{
					Text = "No",
					action = "no",
				},
			},
		}),

		AssetPreview = isPreviewing and Roact.createElement(AssetPreviewWrapper, {
			tryInsert = self.tryInsert,
			tryOpenAssetConfig = tryOpenAssetConfig,
		}),

		AssetGrid = Roact.createElement(AssetGrid, {
			assetIds = assetIds,
			canInsertAsset = self.canInsertAsset,
			parentAbsolutePosition = state.absolutePosition,
			parentSize = state.absoluteSize,
			renderTopContent = renderTopContent,
			requestNextPage = self.requestNextPage,
			tryInsert = self.tryInsert,
			tryOpenAssetConfig = tryOpenAssetConfig,
		}),
	})
end

AssetGridContainer = withContext({
	API = if FFlagToolboxGetItemsDetailsUsesSingleApi then nil else ContextServices.API,
	AssetAnalytics = AssetAnalyticsContextItem,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	Settings = Settings,
})(AssetGridContainer)

local function mapStateToProps(state, props)
	state = state or {}
	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}
	local categoryName = pageInfo.categoryName or Category.DEFAULT.name

	return {
		assetIds = assets.idsToRender or {},
		categoryName = categoryName,
		currentUserPackagePermissions = state.packages.permissionsTable or {},
		isPreviewing = assets.isPreviewing or false,
		searchTerm = pageInfo.searchTerm or "",
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getAssetPreviewDataForStartup = function(assetId, tryInsert, localization, api)
			-- TODO when removing FFlagToolboxGetItemsDetailsUsesSingleApi: rename api to networkInterface
			dispatch(GetAssetPreviewDataForStartup(assetId, tryInsert, localization, api))
		end,
		postInsertAssetRequest = function(networkInterface, assetId)
			dispatch(PostInsertAssetRequest(networkInterface, assetId))
		end,
		setMostRecentAssetInsertTime = function()
			dispatch(SetMostRecentAssetInsertTime())
		end,
		dispatchPostAssetCheckPermissions = function(networkInterface, assetIds)
			dispatch(PostAssetCheckPermissions(networkInterface, assetIds))
		end,
		nextPage = function(networkInterface, settings)
			dispatch(NextPageRequest(networkInterface, settings))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)
