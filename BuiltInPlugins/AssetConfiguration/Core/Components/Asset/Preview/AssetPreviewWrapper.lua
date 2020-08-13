--[[
	This component wraps an AssetPreview for display.

	Props:
		table assetData = A table of asset data, passed from Rodux

		number assetVersionId = if our asset is a plugin,
		this will be the most updated asset version ID for that plugin

		table previewFuncs = A table of functions that can be called from
			the AssetPreview component, provided from Rodux

		function onClose = A callback for when the user clicks outside of the
			preview to close it.
]]
local FFlagEnableDefaultSortFix = game:GetFastFlag("EnableDefaultSortFix2")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local UILibrary = require(Libs.UILibrary)
local AssetPreview = UILibrary.Component.AssetPreview

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local InsertAsset = require(Util.InsertAsset)
local Analytics = require(Util.Analytics.Analytics)
local PageInfoHelper = require(Util.PageInfoHelper)

local getUserId = require(Util.getUserId)
local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings

local ContextServices = require(Libs.Framework.ContextServices)
local Settings = require(Plugin.Core.ContextServices.Settings)

local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ClearPreview = require(Plugin.Core.Actions.ClearPreview)

local PluginPurchaseFlow = require(Plugin.Core.Components.PurchaseFlow.PluginPurchaseFlow)
local PurchaseSuccessDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseSuccessDialog)

local Requests = Plugin.Core.Networking.Requests
local GetPreviewInstanceRequest = require(Requests.GetPreviewInstanceRequest)
local GetAssetVersionIdRequest = require(Requests.GetAssetVersionIdRequest)
local GetPluginInfoRequest = require(Requests.GetPluginInfoRequest)
local SearchWithOptions = require(Requests.SearchWithOptions)
local PostUnvoteRequest = require(Requests.PostUnvoteRequest)
local PostVoteRequest = require(Requests.PostVoteRequest)
local GetOwnsAssetRequest = require(Plugin.Core.Networking.Requests.GetOwnsAssetRequest)
local ClearPurchaseFlow = require(Plugin.Core.Actions.ClearPurchaseFlow)
local GetFavoriteCountsRequest = require(Requests.GetFavoriteCountsRequest)
local GetFavoritedRequest = require(Requests.GetFavoritedRequest)
local ToggleFavoriteStatusRequest = require(Requests.ToggleFavoriteStatusRequest)

local Category = require(Plugin.Core.Types.Category)
local PurchaseStatus = require(Plugin.Core.Types.PurchaseStatus)

local AssetPreviewWrapper = Roact.PureComponent:extend("AssetPreviewWrapper")

local FixModelPreviewSelection = settings():GetFFlag("FixModelPreviewSelection")
local FFlagFixUseDevelopFetchPluginVersionId2 = game:DefineFastFlag("FixUseDevelopFetchPluginVersionId2", false)
local FFlagStudioToolboxPluginPurchaseFlow = game:GetFastFlag("StudioToolboxPluginPurchaseFlow")
local FFlagStudioHideSuccessDialogWhenFree = game:GetFastFlag("StudioHideSuccessDialogWhenFree")
local FFlagStudioFixAssetPreviewTreeView = settings():GetFFlag("StudioFixAssetPreviewTreeView")
local FFlagStudioFixAssetPreviewCloseButton = settings():GetFFlag("StudioFixAssetPreviewCloseButton")
local FFlagToolboxFixAnalyticsBugs = game:GetFastFlag("ToolboxFixAnalyticsBugs")

local FFlagToolboxUseNewAssetType = game:GetFastFlag("ToolboxUseNewAssetType")

local AssetType = FFlagToolboxUseNewAssetType and UILibrary.Util.AssetType or require(Plugin.Core.Types.AssetType)

local PADDING = FFlagStudioFixAssetPreviewCloseButton and 32 or 20
local INSTALLATION_ANIMATION_TIME = 1.0 --seconds

function AssetPreviewWrapper:createPurchaseFlow(localizedContent)
	local props = self.props

	local showPurchaseFlow = self.state.showPurchaseFlow
	local showSuccessDialog = self.state.showSuccessDialog

	local assetData = props.assetData
	local Asset = assetData.Asset
	local assetId = Asset.Id
	local currentPreview = props.currentPreview
	local price = assetData.Product and assetData.Product.Price or 0
	local owned = props.Owned

	local typeId = assetData.Asset.TypeId or Enum.AssetType.Model.Value

	local assetVersionId
	if FFlagFixUseDevelopFetchPluginVersionId2 then
		local previewPluginData = self.props.previewPluginData
		if previewPluginData then
			assetVersionId = previewPluginData.versionId
		end
	else
		assetVersionId = self.props.assetVersionId
	end

	local assetPreviewType
	-- We shouldn't be changing asset preview type here. AssetPreviewWrappers are used to load the content for asset
	-- preview. So, that's where we can change the assetPreviewType.
	if typeId == Enum.AssetType.Plugin.Value then
		assetPreviewType = AssetType:markAsPlugin()
	else
		assetPreviewType = AssetType:getAssetType(currentPreview)
	end

	local isPluginAsset, isPluginPaid, isPluginInstalled, isPluginLoading, isPluginUpToDate
	isPluginAsset = AssetType:isPlugin(assetPreviewType)
	isPluginInstalled = isPluginAsset and StudioService:IsPluginInstalled(assetId)

	if FFlagStudioToolboxPluginPurchaseFlow then
		isPluginPaid = isPluginAsset and price > 0
		isPluginLoading = isPluginAsset and assetVersionId == nil and owned == nil
		isPluginUpToDate = isPluginAsset and not isPluginLoading and assetVersionId
			and StudioService:IsPluginUpToDate(assetId, assetVersionId)

		-- Display loading indicator when plugin was just purchased and is installing
		local purchaseStatus = props.PurchaseStatus
		if (purchaseStatus == PurchaseStatus.Success or purchaseStatus == PurchaseStatus.Waiting)
			and not isPluginInstalled then
			isPluginLoading = true
		end
	else
		isPluginLoading = isPluginAsset and assetVersionId == nil
		isPluginUpToDate = isPluginAsset and not isPluginLoading
			and StudioService:IsPluginUpToDate(assetId, assetVersionId)
	end

	local shouldShowInstallationProgress = isPluginAsset and self.state.showInstallationBar
	isPluginLoading = isPluginLoading or shouldShowInstallationProgress
	local hasRating = typeId == Enum.AssetType.Model.Value
		or (isPluginAsset and isPluginInstalled) or self.state.overrideEnableVoting

	local installDisabled = (isPluginAsset and (isPluginLoading or isPluginUpToDate)) or
		(FFlagFixUseDevelopFetchPluginVersionId2 and isPluginAsset and assetVersionId == nil)

	local tryInsert
	if not FFlagStudioToolboxPluginPurchaseFlow then
		-- This is a workaround to support progress indicators if the purchase flow is disabled.
		tryInsert = isPluginAsset and self.tryInstallWithProgress or self.tryInsert
	else
		tryInsert = isPluginAsset and self.tryInstall or self.tryInsert
	end

	local showRobuxIcon
	local pluginButtonText = localizedContent.AssetConfig.Insert
	if isPluginAsset then
		if FFlagFixUseDevelopFetchPluginVersionId2 and assetVersionId == nil then
			pluginButtonText = localizedContent.AssetConfig.Loading
		elseif isPluginLoading then
			pluginButtonText = localizedContent.AssetConfig.Installing
		elseif not isPluginInstalled then
			if FFlagStudioToolboxPluginPurchaseFlow then
				-- Show price if paid plugin has not been purchased
				if isPluginPaid and not owned then
					showRobuxIcon = true
					pluginButtonText = price
				else
					pluginButtonText = localizedContent.AssetConfig.Install
				end
			else
				pluginButtonText = localizedContent.AssetConfig.Install
			end
		elseif not isPluginUpToDate then
			pluginButtonText = localizedContent.AssetConfig.Update
		else
			pluginButtonText = localizedContent.AssetConfig.Installed
		end
	end

	return {
		InstallDisabled = installDisabled,
		ActionBarText = pluginButtonText,
		ShowInstallationBar = shouldShowInstallationProgress,
		ShowRobuxIcon = showRobuxIcon,
		HasRating = hasRating,

		TryInsert = tryInsert,

		PurchaseFlow = FFlagStudioToolboxPluginPurchaseFlow and showPurchaseFlow
		and Roact.createElement(PluginPurchaseFlow, {
			Cancel = self.purchaseCancelled,
			Continue = self.purchaseSucceeded,
			AssetData = assetData,
		}),

		SuccessDialog = FFlagStudioToolboxPluginPurchaseFlow and showSuccessDialog
			and Roact.createElement(PurchaseSuccessDialog, {
			OnClose = self.closeSuccessDialog,
			Name = assetData.Asset.Name,
			Balance = props.Balance,
			IsFree = price == nil or price == 0,
		}),
	}
end

function AssetPreviewWrapper:init(props)
	local networkInterface = getNetwork(self)

	self.state = {
		maxPreviewWidth = 0,
		maxPreviewHeight = 0,
		currentPreview = nil,

		showPurchaseFlow = false,
		showSuccessDialog = false,
		showInstallationBar = false,
	}

	self.ClickDetectorRef = Roact.createRef()

	self.onCloseButtonClicked = function()
		local state = self.state

		if state.previewModel then
			state.previewModel:Destroy()
		end
		if state.currentPreview then
			state.currentPreview:Destroy()
		end

		self:setState({
			currentPreview = nil
		})

		local assetData
		if FFlagToolboxFixAnalyticsBugs then
			assetData = self.props.assetData
		end
		self.props.onClose(assetData)
		self.props.clearPreview()
	end

	self.onDetectorABSSizeChange = function()
		local currentClickDetector = self.ClickDetectorRef.current
		if not currentClickDetector then
			return
		end

		local detectorAbsSize = currentClickDetector.AbsoluteSize
		local detectorWidth = detectorAbsSize.x
		local detectorHeight = detectorAbsSize.y

		self:setState({
			maxPreviewWidth = detectorWidth - 2 * PADDING,
			maxPreviewHeight = detectorHeight - 2 * PADDING,
		})
	end

	self.onTreeItemClicked = function(instance)
		self:setState({
			currentPreview = instance
		})
	end

	self.tryCreateContextMenu = function()
		local assetData = self.props.assetData

		local showEditOption = self.props.canManage

		self.props.tryCreateContextMenu(assetData, showEditOption)
	end

	self.tryInsert = function()
		local assetData = props.assetData
		return self.props.tryInsert(assetData, false) --Asset was not dragged
	end

	self.takePlugin = function(assetId)
		networkInterface:postTakePlugin()
	end

	self.searchByCreator = function(creatorName)
		local settings = self.props.Settings:get("Plugin")
		self.props.searchWithOptions(networkInterface, settings, {
			Creator = creatorName,
		})
		self.props.onClose()
	end

	-- For Voting in Asset Preview
	local onVoteRequested = self.props.onVoteRequested
	local onUnvoteRequested = self.props.onUnvoteRequested

	self.onVoteUpButtonActivated = function(assetId, voting)
		if voting.HasVoted and voting.UserVote then
			onUnvoteRequested(networkInterface, assetId)
		else
			onVoteRequested(networkInterface, assetId, true)
		end
	end

	self.onVoteDownButtonActivated = function(assetId, voting)
		if voting.HasVoted and (not voting.UserVote) then
			onUnvoteRequested(networkInterface, assetId)
		else
			onVoteRequested(networkInterface, assetId, false)
		end
	end

	self.purchaseCancelled = function()
		self:setState({
			showPurchaseFlow = false,
		})
	end

	self.purchaseSucceeded = function()
		local tryInstall = self.tryInstallWithProgress
		if tryInstall() then

			-- if this is a free asset/plugin, don't show the success dialog
			if FFlagStudioHideSuccessDialogWhenFree then
				local assetData = props.assetData
				local price = assetData.Product and assetData.Product.Price or 0
				if price == 0 then
					return
				end
			end

			self:setState({
				showSuccessDialog = true,
			})
		end
	end

	self.tryInstall = function()
		local assetData = self.props.assetData
		local assetVersionId
		if FFlagFixUseDevelopFetchPluginVersionId2 then
			local previewPluginData = self.props.previewPluginData
			assetVersionId = previewPluginData.versionId
		else
			assetVersionId = self.props.assetVersionId
		end

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local categoryIndex = (not FFlagUseCategoryNameInToolbox) and (self.props.categoryIndex)
		local categoryName = self.props.categoryName

		if FFlagStudioToolboxPluginPurchaseFlow then
			local owned = self.props.Owned
			if not owned then
				-- Prompt user to purchase plugin
				self:setState({
					showPurchaseFlow = true,
				})
				return false
			else
				self:setState({
					showPurchaseFlow = false,
				})
			end
		end

		local success = InsertAsset.tryInsert({
			assetId = assetId,
			assetVersionId = assetVersionId,
			assetName = assetName,
			assetTypeId = assetTypeId,
			currentTab = (not FFlagUseCategoryNameInToolbox) and (self.props.currentTab),
			categoryIndex = (not FFlagUseCategoryNameInToolbox) and (FFlagEnableDefaultSortFix and categoryIndex or nil),
			categoryName = FFlagUseCategoryNameInToolbox and categoryName or nil,
		})
		if success then
			self:setState({
				overrideEnableVoting = true,
			})

			StudioService:UpdatePluginManagement()
		end
		return success
	end

	self.tryInstallWithProgress = function()
		return self.showInstallationBarUntilCompleted( self.tryInstall )
	end

	self.toggleShowInstallationBar = function(shouldShow)
		self:setState({
			showInstallationBar = shouldShow
		})
	end

	self.showInstallationBarUntilCompleted = function(workToComplete)
		local startTime = tick()
		self.toggleShowInstallationBar(true)

		local result = workToComplete()

		-- artificially slow down the installation to watch the animation complete
		local timeToInstall = tick() - startTime
		if timeToInstall < INSTALLATION_ANIMATION_TIME then
			wait(INSTALLATION_ANIMATION_TIME - timeToInstall)
		end
		self.toggleShowInstallationBar(false)

		return result
	end

	self.closeSuccessDialog = function()
		self:setState({
			showSuccessDialog = false,
		})
	end

	-- For Favorite component
	self.requestFavoriteCounts = function()
		local assetId = self.props.assetId
		self.props.getFavoriteCounts(networkInterface, assetId)
	end

	self.checkFavorited = function()
		local assetId = self.props.assetId
		self.props.getFavorited(networkInterface, getUserId(), assetId)
	end

	self.onFavoritedActivated = function(rbx)
		local assetId = self.props.assetId
		local favorited = self.props.favorited
		self.props.toggleFavoriteStatus(networkInterface, getUserId(), assetId, favorited)
	end

	if FFlagStudioToolboxPluginPurchaseFlow then
		self.props.clearPurchaseFlow(props.assetData.Asset.Id)
	end

	self.reportPlay = function()
		Analytics.onSoundPlayed()
	end

	self.reportPause = function()
		Analytics.onSoundPaused()
	end
end

function AssetPreviewWrapper:didMount()
	self.props.getPreviewInstance(self.props.assetData.Asset.Id, self.props.assetData.Asset.TypeId)
	if self.props.assetData.Asset.TypeId == Enum.AssetType.Plugin.Value then
		if FFlagFixUseDevelopFetchPluginVersionId2 then
			self.props.getPluginInfo(getNetwork(self), self.props.assetData.Asset.Id)
		else
			self.props.deprecated_getAssetVersionId(getNetwork(self), self.props.assetData.Asset.Id)
		end
	end

	if FFlagStudioToolboxPluginPurchaseFlow then
		local assetData = self.props.assetData
		local Asset = assetData.Asset
		local assetId = Asset.Id
		self.props.getOwnsAsset(getNetwork(self), assetId)
	end

	self.requestFavoriteCounts()
	self.checkFavorited()
end

function AssetPreviewWrapper:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget)
			return withLocalization(function(_, localizedContent)
				local purchaseFlow = self:createPurchaseFlow(localizedContent)

				local props = self.props
				local state = self.state

				local assetData = props.assetData

				local maxPreviewWidth = math.min(state.maxPreviewWidth, Constants.ASSET_PREVIEW_MAX_WIDTH)
				local maxPreviewHeight = state.maxPreviewHeight

				local previewModel = props.previewModel
				local currentPreview
				if FixModelPreviewSelection then
					currentPreview = state.currentPreview or previewModel
				else
					currentPreview = previewModel
				end

				local popUpTheme = theme.assetPreview.popUpWrapperButton

				local assetPreviewProps = {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					MaxPreviewWidth = maxPreviewWidth,
					MaxPreviewHeight = maxPreviewHeight,

					AssetData = assetData,
					PreviewModel = previewModel,
					CurrentPreview = currentPreview,

					ActionBarText = purchaseFlow.ActionBarText,
					TryInsert = purchaseFlow.TryInsert,

					OnFavoritedActivated = self.onFavoritedActivated,
					FavoriteCounts = self.props.favoriteCounts,
					Favorited = self.props.favorited,

					TryCreateContextMenu = self.tryCreateContextMenu,
					OnTreeItemClicked = self.onTreeItemClicked,

					InstallDisabled = purchaseFlow.InstallDisabled,
					PurchaseFlow = purchaseFlow.PurchaseFlow,
					SuccessDialog = purchaseFlow.SuccessDialog,
					ShowRobuxIcon = purchaseFlow.ShowRobuxIcon,
					ShowInstallationBar = purchaseFlow.ShowInstallationBar,
					LoadingBarText = localizedContent.AssetConfig.Installing,

					HasRating = purchaseFlow.HasRating,
					Voting = self.props.voting,
					OnVoteUp = self.onVoteUpButtonActivated,
					OnVoteDown = self.onVoteDownButtonActivated,

					SearchByCreator = self.searchByCreator,

					reportPlay = self.reportPlay,
					reportPause = self.reportPause,

					ZIndex = 2,
				}

				if FFlagStudioFixAssetPreviewTreeView then
					assetPreviewProps.PreviewModel = previewModel
				end

				return modalTarget and Roact.createElement(Roact.Portal, {
					target = modalTarget
				}, {
					-- This frame should be as big as the screen
					-- So, we will know it's time to close the pop up if there is a click
					-- within the screen
					ScreenClickDetector = Roact.createElement("TextButton", {
						Size = UDim2.new(1, 0, 1, 0),

						BackgroundTransparency = popUpTheme.detectorBGTrans,
						BackgroundColor3 = popUpTheme.detectorBackground,
						ZIndex = 1,
						AutoButtonColor = false,

						[Roact.Event.Activated] = self.onCloseButtonClicked,
						[Roact.Ref] = self.ClickDetectorRef,
						[Roact.Change.AbsoluteSize] = self.onDetectorABSSizeChange,
					}),

					AssetPreview = Roact.createElement(AssetPreview, assetPreviewProps),
				})
			end)
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}

	local previewModel = assets.previewModel

	local pageInfo = state.pageInfo or {}
	local assetVersionId = assets.assetVersionId

	local assetId = props.assetData.Asset.Id
	local manageableAssets = assets.manageableAssets
	local canManage = manageableAssets[tostring(assetId)]

	local purchase = state.purchase or {}
	local purchaseStatus = purchase.status
	local owned = purchase.cachedOwnedAssets[tostring(assetId)]
	local balance = purchase.robuxBalance

	-- For Favorites
	local favorite = state.favorite or {}
	local assetIdToCountsMap = favorite.assetIdToCountsMap or {}
	local assetIdToFavoritedMap = favorite.assetIdToFavoritedMap or {}

	local voting = state.voting or {}

	local stateToProps = {
		categoryIndex =  (not FFlagUseCategoryNameInToolbox) and (FFlagEnableDefaultSortFix and (pageInfo.categoryIndex or 1) or nil),
		categoryName = FFlagUseCategoryNameInToolbox and (pageInfo.categoryName or Category.DEFAULT.name) or nil,
		previewModel = previewModel or nil,
		currentTab = PageInfoHelper.getCurrentTab(pageInfo),
		assetVersionId = assetVersionId,
		canManage = canManage,
		previewPluginData = assets.previewPluginData,
		assetId = assetId,
		favoriteCounts = assetIdToCountsMap[assetId] or 0,
		favorited = assetIdToFavoritedMap[assetId] or false,
		voting = voting[assetId] or {},
	}

	if FFlagStudioToolboxPluginPurchaseFlow then
		stateToProps.Owned = owned
		stateToProps.PurchaseStatus = purchaseStatus
		stateToProps.Balance = balance
	end

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	return {
		getPreviewInstance = function(assetId, assetTypeId)
			dispatch(GetPreviewInstanceRequest(assetId, assetTypeId))
		end,

		clearPreview = function()
			dispatch(ClearPreview())
		end,

		deprecated_getAssetVersionId = function(networkInterface, assetId)
			dispatch(GetAssetVersionIdRequest(networkInterface, assetId))
		end,

		getPluginInfo = function(networkInterface, assetId)
			dispatch(GetPluginInfoRequest(networkInterface, assetId))
		end,

		searchWithOptions = function(networkInterface, settings, options)
			dispatch(SearchWithOptions(networkInterface, settings, options))
		end,

		onVoteRequested = function(networkInterface, assetId, bool)
			dispatch(PostVoteRequest(networkInterface, assetId, bool))
		end,

		onUnvoteRequested = function(networkInterface, assetId)
			dispatch(PostUnvoteRequest(networkInterface, assetId))
		end,

		-- For Purchase Flow
		getOwnsAsset = function(network, assetId)
			dispatch(GetOwnsAssetRequest(network, assetId))
		end,

		clearPurchaseFlow = function(assetId)
			dispatch(ClearPurchaseFlow(assetId))
		end,

		-- For Favorites
		getFavorited = function(networkInterface, userId, assetId)
			dispatch(GetFavoritedRequest(networkInterface, userId, assetId))
		end,

		getFavoriteCounts = function(networkInterface, assetId)
			dispatch(GetFavoriteCountsRequest(networkInterface, assetId))
		end,

		toggleFavoriteStatus = function(networkInterface, userId, assetId, favorited)
			dispatch(ToggleFavoriteStatusRequest(networkInterface, userId, assetId, favorited))
		end,
	}
end

ContextServices.mapToProps(AssetPreviewWrapper, {
	Settings = Settings,
})

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AssetPreviewWrapper)