--[[
	This component wraps an AssetPreview for display.

	Props:
		table assetData = A table of asset data, passed from Rodux

		table previewFuncs = A table of functions that can be called from
			the AssetPreview component, provided from Rodux

		function onClose = A callback for when the user clicks outside of the
			preview to close it. // remove with FFlagToolboxAssetGridRefactor5
]]

local StudioService = game:GetService("StudioService")
local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Cryo = require(Packages.Cryo)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local InsertAsset = require(Util.InsertAsset)
local Analytics = require(Util.Analytics.Analytics)
local PageInfoHelper = require(Util.PageInfoHelper)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)

local getUserId = require(Util.getUserId)
local getNetwork = ContextGetter.getNetwork

local Framework = require(Packages.Framework)
local AssetPreview = Framework.StudioUI.AssetPreview

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local Settings = require(Plugin.Core.ContextServices.Settings)

local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization
local getModal = ContextGetter.getModal

local ClearPreview = require(Plugin.Core.Actions.ClearPreview)
local PausePreviewSound = require(Plugin.Core.Actions.PausePreviewSound)
local SetAssetPreview = require(Plugin.Core.Actions.SetAssetPreview)

local PluginPurchaseFlow = require(Plugin.Core.Components.PurchaseFlow.PluginPurchaseFlow)
local PurchaseSuccessDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseSuccessDialog)
local AssetPreviewFooter = require(Plugin.Core.Components.Asset.Preview.AssetPreviewFooter)

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
local TryCreateContextMenu = require(Plugin.Core.Thunks.TryCreateContextMenu)

local Category = require(Plugin.Core.Types.Category)
local PurchaseStatus = require(Plugin.Core.Types.PurchaseStatus)

local AssetPreviewWrapper = Roact.PureComponent:extend("AssetPreviewWrapper")

local FFlagToolboxAssetGridRefactor5 = game:GetFastFlag("ToolboxAssetGridRefactor5")
local FFlagToolboxRedirectToLibraryAbuseReport = game:GetFastFlag("ToolboxRedirectToLibraryAbuseReport")
local FFlagToolboxHideReportFlagForCreator = game:GetFastFlag("ToolboxHideReportFlagForCreator")
local FFlagPluginsSetAudioPreviewUsageContext = game:GetFastFlag("PluginsSetAudioPreviewUsageContext")
local FFlagToolboxFixNonOwnedPluginInstallation = game:GetFastFlag("ToolboxFixNonOwnedPluginInstallation")

local disableRatings = require(Plugin.Core.Util.ToolboxUtilities).disableRatings

local getReportUrl
if FFlagToolboxRedirectToLibraryAbuseReport then
	getReportUrl = require(Util.getReportUrl)
end
local PADDING = 32
local INSTALLATION_ANIMATION_TIME = 1.0 --seconds
local DETECTOR_BACKGROUND_COLOR = Color3.fromRGB(0, 0, 0)
local DETECTOR_BACKGROUND_TRANSPARENCY = 0.25

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

	isPluginAsset = typeId == Enum.AssetType.Plugin.Value
	isPluginInstalled = isPluginAsset and StudioService:IsPluginInstalled(assetId)

	isPluginPaid = isPluginAsset and price > 0
	isPluginLoading = isPluginAsset and assetVersionId == nil and owned == nil
	isPluginUpToDate = isPluginAsset
		and not isPluginLoading
		and assetVersionId
		and StudioService:IsPluginUpToDate(assetId, assetVersionId)

	-- Display loading indicator when plugin was just purchased and is installing
	local purchaseStatus = props.PurchaseStatus
	if
		(purchaseStatus == PurchaseStatus.Success or purchaseStatus == PurchaseStatus.Waiting)
		and not isPluginInstalled
	then
		isPluginLoading = true
	end

	local shouldShowInstallationProgress = isPluginAsset and self.state.showInstallationBar
	isPluginLoading = isPluginLoading or shouldShowInstallationProgress
	local hasRating = typeId == Enum.AssetType.Model.Value
		or (isPluginAsset and isPluginInstalled)
		or self.state.overrideEnableVoting

	local installDisabled = (isPluginAsset and (isPluginLoading or isPluginUpToDate))
		or (isPluginAsset and assetVersionId == nil)

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

		showPurchaseFlow = false,
		showSuccessDialog = false,
		showInstallationBar = false,

		openAssetPreviewStartTime = nil,
	}

	self.ClickDetectorRef = Roact.createRef()

	if FFlagToolboxAssetGridRefactor5 then
		self.openAssetPreview = function()
			local assetData = self.props.assetData
			local modal = getModal(self)
			modal.onAssetPreviewToggled(true)
			self:setState({
				previewAssetData = assetData,
				openAssetPreviewStartTime = tick(),
			})

			if self.props.isPlaying then
				self.props.pauseASound()
			end

			-- TODO STM-146: Remove this once we are happy with the new MarketplaceAssetPreview event
			Analytics.onAssetPreviewSelected(assetData.Asset.Id)

			self.props.AssetAnalytics:get():logPreview(assetData)
		end

		self.closeAssetPreview = function(assetData)
			local modal = getModal(self)
			modal.onAssetPreviewToggled(false)
			self.props.onPreviewToggled(false)

			local endTime = tick()
			local startTime = self.state.openAssetPreviewStartTime or 0
			local deltaMs = (endTime - startTime) * 1000
			Analytics.onAssetPreviewEnded(assetData.Asset.Id, deltaMs)

			self:setState({
				previewAssetData = Roact.None,
				openAssetPreviewStartTime = Roact.None,
			})
		end
	end

	self.onCloseButtonClicked = function()
		local assetData = self.props.assetData
		if FFlagToolboxAssetGridRefactor5 then
			self.closeAssetPreview(assetData)
		else
			self.props.onClose(assetData)
		end
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

	if FFlagToolboxAssetGridRefactor5 then
		self.tryCreateContextMenu = function(localization)
			local props = self.props
			local assetData = props.assetData
			local plugin = props.Plugin:get()
			local tryOpenAssetConfig = props.tryOpenAssetConfig
			self.props.tryCreateContextMenu(assetData, localization, plugin, tryOpenAssetConfig)
		end
	else
		self.tryCreateContextMenu = function()
			local assetData = self.props.assetData
			local showEditOption = self.props.canManage
			self.props.tryCreateContextMenu(assetData, showEditOption)
		end
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
		if FFlagToolboxAssetGridRefactor5 then
			self.closeAssetPreview(assetData)
		else
			self.props.onClose(assetData)
		end
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
		if voting.HasVoted and not voting.UserVote then
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
			local assetData = props.assetData
			local price = assetData.Product and assetData.Product.Price or 0
			if price == 0 then
				return
			end

			self:setState({
				showSuccessDialog = true,
			})
		end
	end

	self.tryInstall = function()
		self:setState({
			showInstallationBar = true,
		})
		local assetData = self.props.assetData
		local previewPluginData = self.props.previewPluginData
		local assetVersionId = previewPluginData.versionId

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local categoryName = self.props.categoryName

		local owned = self.props.Owned
		
		if FFlagToolboxFixNonOwnedPluginInstallation then
			local price = assetData.Product and assetData.Product.Price or 0

			if not owned and price > 0 then
				-- Prompt user to purchase plugin
				local showInstallationBar = false
				self:setState({
					showPurchaseFlow = true,
					showInstallationBar = showInstallationBar,
				})
				return false
			else
				self:setState({
					showPurchaseFlow = false,
				})
			end
		else
			if not owned then
				-- Prompt user to purchase plugin
				local showInstallationBar = false
				self:setState({
					showPurchaseFlow = true,
					showInstallationBar = showInstallationBar,
				})
				return false
			else
				self:setState({
					showPurchaseFlow = false,
				})
			end
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

		self:setState({
			showInstallationBar = false,
		})

		return success
	end

	self.tryInstallWithProgress = function()
		return self.showInstallationBarUntilCompleted(self.tryInstall)
	end

	self.toggleShowInstallationBar = function(shouldShow)
		self:setState({
			showInstallationBar = shouldShow,
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

	if FFlagToolboxRedirectToLibraryAbuseReport then
		self.onClickReport = function()
			local assetData = self.props.assetData
			local assetId = self.props.assetId
			local asset = assetData.Asset
			local assetTypeId = asset.TypeId
			local targetUrl = getReportUrl(assetId, assetTypeId)
			Analytics.reportAssetClicked(assetId, assetTypeId)
			GuiService:OpenBrowserWindow(targetUrl)
		end
	end

	self.renderFooter = function(footerProps)
		return Roact.createElement(
			AssetPreviewFooter,
			Cryo.Dictionary.join(footerProps, {
				AssetData = self.props.assetData,
			})
		)
	end
end

function AssetPreviewWrapper:didMount()
	if FFlagToolboxAssetGridRefactor5 then
		self.openAssetPreview(self.props.assetData)
	end

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
	return withModal(function(modalTarget)
		return withLocalization(function(_, localizedContent)
			return self:renderContent(nil, modalTarget, localizedContent)
		end)
	end)
end

function AssetPreviewWrapper:renderContent(theme, modalTarget, localizedContent)
	local purchaseFlow = self:createPurchaseFlow(localizedContent)

	local props = self.props
	local state = self.state

	local assetData = props.assetData

	local maxPreviewWidth = math.min(state.maxPreviewWidth, Constants.ASSET_PREVIEW_MAX_WIDTH)
	local maxPreviewHeight = state.maxPreviewHeight

	local previewModel = props.previewModel

	local actionEnabled = not purchaseFlow.InstallDisabled and not self.state.showInstallationBar

	local tryCreateLocalizedContextMenu
	if FFlagToolboxAssetGridRefactor5 then
		tryCreateLocalizedContextMenu = function()
			self.tryCreateContextMenu(localizedContent)
		end
	end

	local favorites
	local voting
	if disableRatings() then
		favorites = nil
		voting = nil
	else
		favorites = {
			OnClick = self.onFavoritedActivated,
			Count = tonumber(self.props.favoriteCounts),
			IsFavorited = self.props.favorited,
		}
		voting = (purchaseFlow.HasRating and self.props.voting)
	end

	local assetPreview = Roact.createElement(AssetPreview, {
		Position = UDim2.new(0.5, 0, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Size = UDim2.fromOffset(maxPreviewWidth, maxPreviewHeight),
		ZIndex = 2,

		AssetData = assetData,
		AssetInstance = previewModel,
		OnClickContext = FFlagToolboxAssetGridRefactor5 and tryCreateLocalizedContextMenu or self.tryCreateContextMenu,

		-- TODO DEVTOOLS-4896: refactor the action bar out of AssetPreview and clean up the logic in this component, bring back loading bar for installs in a sensible place
		ActionEnabled = actionEnabled,
		ShowRobuxIcon = purchaseFlow.ShowRobuxIcon,
		ActionText = tostring(purchaseFlow.ActionBarText),
		OnClickAction = purchaseFlow.TryInsert,
		PurchaseFlow = purchaseFlow.PurchaseFlow,
		SuccessDialog = purchaseFlow.SuccessDialog,

		Favorites = favorites,

		Voting = voting,
		OnVoteUp = self.onVoteUpButtonActivated,
		OnVoteDown = self.onVoteDownButtonActivated,
		OnClickCreator = self.searchByCreator,
		OnClickReport = FFlagToolboxRedirectToLibraryAbuseReport and self.onClickReport or nil,

		RenderFooter = self.renderFooter,

		CanFlagAsset = FFlagToolboxHideReportFlagForCreator
				and (assetData.Creator and assetData.Creator.Id ~= 1 and assetData.Creator.Id ~= getUserId())
			or nil,
		
		UsageContext = if FFlagPluginsSetAudioPreviewUsageContext then Enum.UsageContext.Preview else nil,
	})

	return modalTarget
		and Roact.createElement(Roact.Portal, {
			target = modalTarget,
		}, {
			-- This frame should be as big as the screen
			-- So, we will know it's time to close the pop up if there is a click
			-- within the screen
			ScreenClickDetector = Roact.createElement("TextButton", {
				Size = UDim2.new(1, 0, 1, 0),

				BackgroundTransparency = DETECTOR_BACKGROUND_TRANSPARENCY,
				BackgroundColor3 = DETECTOR_BACKGROUND_COLOR,
				ZIndex = 1,
				AutoButtonColor = false,

				[Roact.Event.Activated] = self.onCloseButtonClicked,
				[Roact.Ref] = self.ClickDetectorRef,
				[Roact.Change.AbsoluteSize] = self.onDetectorABSSizeChange,
			}),

			AssetPreview = assetPreview,
		})
end

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local previewModel = assets.previewModel
	local pageInfo = state.pageInfo or {}
	local idToAssetMap = assets.idToAssetMap or {}

	local assetId
	if FFlagToolboxAssetGridRefactor5 then
		assetId = assets.previewAssetId
	else
		assetId = props.assetData.Asset.Id
	end

	local manageableAssets = assets.manageableAssets or {}
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

	local stateToProps = {
		assetData = FFlagToolboxAssetGridRefactor5 and idToAssetMap[assetId] or nil,
		categories = categories,
		categoryName = pageInfo.categoryName or Category.DEFAULT.name,
		previewModel = previewModel or nil,
		canManage = not FFlagToolboxAssetGridRefactor5 and canManage or nil,
		previewPluginData = assets.previewPluginData,
		assetId = assetId,
		favoriteCounts = assetIdToCountsMap[assetId] or 0,
		favorited = assetIdToFavoritedMap[assetId] or false,
		voting = voting[assetId],
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

		onPreviewToggled = function(isPreviewing)
			dispatch(SetAssetPreview(isPreviewing))
		end,

		pauseASound = function()
			dispatch(PausePreviewSound())
		end,

		tryCreateContextMenu = FFlagToolboxAssetGridRefactor5
				and function(assetData, localizedContent, plugin, tryOpenAssetConfig)
					dispatch(TryCreateContextMenu(assetData, localizedContent, plugin, tryOpenAssetConfig))
				end
			or nil,

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

AssetPreviewWrapper = withContext({
	Settings = Settings,
	AssetAnalytics = AssetAnalyticsContextItem,
	Plugin = FFlagToolboxAssetGridRefactor5 and ContextServices.Plugin or nil,
	Stylizer = ContextServices.Stylizer,
})(AssetPreviewWrapper)

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(AssetPreviewWrapper)
