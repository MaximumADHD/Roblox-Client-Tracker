--[[
	This component wraps an AssetPreview for display.

	Props:
		table assetData = A table of asset data, passed from Rodux

		table previewFuncs = A table of functions that can be called from
			the AssetPreview component, provided from Rodux

		function onClose = A callback for when the user clicks outside of the
			preview to close it.
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local UILibrary = require(Libs.UILibrary)
local DEPRECATED_AssetPreview = UILibrary.Component.AssetPreview

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local InsertAsset = require(Util.InsertAsset)
local Analytics = require(Util.Analytics.Analytics)
local PageInfoHelper = require(Util.PageInfoHelper)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)
local FlagsList = require(Util.FlagsList)

local getUserId = require(Util.getUserId)
local getNetwork = ContextGetter.getNetwork

local Framework = require(Libs.Framework)
local AssetPreview = Framework.StudioUI.AssetPreview

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

local FFlagStudioHideSuccessDialogWhenFree = game:GetFastFlag("StudioHideSuccessDialogWhenFree")

local AssetType
if not FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
	AssetType = UILibrary.Util.AssetType
end

local PADDING = 32
local INSTALLATION_ANIMATION_TIME = 1.0 --seconds

function AssetPreviewWrapper:createPurchaseFlow(localizedContent)
	local props = self.props

	local showPurchaseFlow = self.state.showPurchaseFlow
	local showSuccessDialog = self.state.showSuccessDialog

	local assetData = props.assetData
	local Asset = assetData.Asset
	local assetId = Asset.Id
	local price = assetData.Product and assetData.Product.Price or 0
	local owned = props.Owned
	
	local typeId = assetData.Asset.TypeId or Enum.AssetType.Model.Value
	
	local assetVersionId
	local previewPluginData = self.props.previewPluginData
	if previewPluginData then
		assetVersionId = previewPluginData.versionId
	end
	
	local isPluginAsset, isPluginPaid, isPluginInstalled, isPluginLoading, isPluginUpToDate
	
	if FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
		isPluginAsset = typeId == Enum.AssetType.Plugin.Value
	else
		local assetPreviewType
		local currentPreview = props.currentPreview
		if typeId == Enum.AssetType.Plugin.Value then
			assetPreviewType = AssetType:markAsPlugin()
		else
			assetPreviewType = AssetType:getAssetType(currentPreview)
		end
		isPluginAsset = AssetType:isPlugin(assetPreviewType)
	end
	isPluginInstalled = isPluginAsset and StudioService:IsPluginInstalled(assetId)

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

	local shouldShowInstallationProgress = isPluginAsset and self.state.showInstallationBar
	isPluginLoading = isPluginLoading or shouldShowInstallationProgress
	local hasRating = typeId == Enum.AssetType.Model.Value
		or (isPluginAsset and isPluginInstalled) or self.state.overrideEnableVoting

	local installDisabled = (isPluginAsset and (isPluginLoading or isPluginUpToDate)) or
		(isPluginAsset and assetVersionId == nil)

	-- This function needs to be rewritten and unit tested.
	-- STM-55 was a report of the purchase flow breaking, which was caused
	-- by this function allowing install when asset ownership data was not yet loaded.
	-- There was no retrying of the network request to get ownership, so install would
	-- be enabled but not work if ownership data was not loaded.

	-- TODO DEVTOOLS-4896: When this is rewritten, also make the loading status correct for this state
	-- (if it's still a reachable state)
	installDisabled = installDisabled or (isPluginAsset and owned == nil)

	local tryInsert = isPluginAsset and self.tryInstall or self.tryInsert

	local showRobuxIcon
	local pluginButtonText = localizedContent.AssetConfig.Insert
	if isPluginAsset then
		if assetVersionId == nil then
			pluginButtonText = localizedContent.AssetConfig.Loading
		elseif isPluginLoading then
			pluginButtonText = localizedContent.AssetConfig.Installing
		elseif not isPluginInstalled then
			-- Show price if paid plugin has not been purchased
			if isPluginPaid and not owned then
				showRobuxIcon = true
				pluginButtonText = price
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

		PurchaseFlow = showPurchaseFlow and Roact.createElement(PluginPurchaseFlow, {
			Cancel = self.purchaseCancelled,
			Continue = self.purchaseSucceeded,
			AssetData = assetData,
		}) or nil,

		SuccessDialog = showSuccessDialog and Roact.createElement(PurchaseSuccessDialog, {
			OnClose = self.closeSuccessDialog,
			Name = assetData.Asset.Name,
			Balance = props.Balance,
			IsFree = price == nil or price == 0,
		}) or nil,
	}
end

function AssetPreviewWrapper:init(props)
	local networkInterface = getNetwork(self)

	self.state = {
		maxPreviewWidth = 0,
		maxPreviewHeight = 0,
		currentPreview = nil, -- Remove with FFlagToolboxUseDevFrameworkAssetPreview

		showPurchaseFlow = false,
		showSuccessDialog = false,
		showInstallationBar = false,
	}

	self.ClickDetectorRef = Roact.createRef()

	self.onCloseButtonClicked = function()
		if not FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
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
		end

		local assetData = self.props.assetData
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

	if not FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
		self.onTreeItemClicked = function(instance)
			self:setState({
				currentPreview = instance
			})
		end
	end

	self.tryCreateContextMenu = function()
		local assetData = self.props.assetData

		local showEditOption = self.props.canManage

		self.props.tryCreateContextMenu(assetData, showEditOption)
	end

	self.tryInsert = function()
		local assetData = props.assetData
		local assetWasDragged = false
		return self.props.tryInsert(assetData, assetWasDragged, "PreviewClickInsertButton")
	end

	self.takePlugin = function(assetId)
		networkInterface:postTakePlugin()
	end

	self.searchByCreator = function(creatorName)
		local settings = self.props.Settings:get("Plugin")
		self.props.searchWithOptions(networkInterface, settings, {
			Creator = creatorName,
		})
		local assetData = self.props.assetData
		self.props.onClose(assetData)
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
		local previewPluginData = self.props.previewPluginData
		local assetVersionId = previewPluginData.versionId

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local categoryName = self.props.categoryName

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

		local currentCategoryName = categoryName
		
		local success = InsertAsset.tryInsert({
			assetId = assetId,
			assetVersionId = assetVersionId,
			assetName = assetName,
			assetTypeId = assetTypeId,
			categoryName = categoryName,
			currentCategoryName = currentCategoryName,
			onSuccess = function()
				self.props.AssetAnalytics:get():logInsert(assetData, "PreviewClickInsertButton")
			end,
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

	self.props.clearPurchaseFlow(props.assetData.Asset.Id)

	if not FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
		self.reportPlay = function()
			Analytics.onSoundPlayed()
		end

		self.reportPause = function()
			Analytics.onSoundPaused()
		end
	end
end

function AssetPreviewWrapper:didMount()
	if self.props.assetData.Asset.TypeId == Enum.AssetType.Plugin.Value then
		self.props.getPluginInfo(getNetwork(self), self.props.assetData.Asset.Id)
	else
		self.props.getPreviewInstance(self.props.assetData.Asset.Id, self.props.assetData.Asset.TypeId)	
	end

	local assetData = self.props.assetData
	local Asset = assetData.Asset
	local assetId = Asset.Id
	self.props.getOwnsAsset(getNetwork(self), assetId)

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

				local popUpTheme = theme.assetPreview.popUpWrapperButton

				local assetPreview

				if FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
					assetPreview = Roact.createElement(AssetPreview, {
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.fromOffset(maxPreviewWidth, maxPreviewHeight),
						ZIndex = 2,

						AssetData = assetData,
						AssetInstance = previewModel,

						-- TODO DEVTOOLS-4896: refactor the action bar out of AssetPreview and clean up the logic in this component, bring back loading bar for installs in a sensible place
						ActionEnabled = not purchaseFlow.InstallDisabled,
						ShowRobuxIcon = purchaseFlow.ShowRobuxIcon,
						ActionText = tostring(purchaseFlow.ActionBarText),
						OnClickAction = purchaseFlow.TryInsert,
						PurchaseFlow = purchaseFlow.PurchaseFlow,
						SuccessDialog = purchaseFlow.SuccessDialog,

						OnClickContext = self.tryCreateContextMenu,

						Favorites = {
							OnClick = self.onFavoritedActivated,
							Count = tonumber(self.props.favoriteCounts),
							IsFavorited = self.props.favorited
						},

						Voting = purchaseFlow.HasRating and self.props.voting or nil,
						OnVoteUp = self.onVoteUpButtonActivated,
						OnVoteDown = self.onVoteDownButtonActivated,

						OnClickCreator = self.searchByCreator,
					})
				else
					local currentPreview = state.currentPreview or previewModel

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

					assetPreviewProps.PreviewModel = previewModel

					assetPreview = Roact.createElement(DEPRECATED_AssetPreview, assetPreviewProps)
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

					AssetPreview = assetPreview,
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

	local categories = nil

	local votingProp

	if FlagsList:get("FFlagToolboxUseDevFrameworkAssetPreview") then
		votingProp = voting[assetId]
	else
		votingProp = voting[assetId] or {}
	end

	local stateToProps = {
		categories = categories,
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,
		previewModel = previewModel or nil,
		canManage = canManage,
		previewPluginData = assets.previewPluginData,
		assetId = assetId,
		favoriteCounts = assetIdToCountsMap[assetId] or 0,
		favorited = assetIdToFavoritedMap[assetId] or false,
		voting = votingProp,
		Owned = owned,
		PurchaseStatus = purchaseStatus,
		Balance = balance,
	}

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
	AssetAnalytics = AssetAnalyticsContextItem,
})

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AssetPreviewWrapper)
