--[[
	A grid of assets. Use Layouter.calculateAssetsHeight() to know how tall it will be when the assets are rendered.

	Props:
		UDim2 Position = UDim2.new(0, 0, 0, 0)
		UDim2 Size = UDim2.new(1, 0, 1, 0)

		{number -> Asset} idToAssetMap
		[number] assetIds

		number currentSoundId
		boolean isPlaying

		callback tryOpenAssetConfig, invoke assetConfig page with an assetId.
]]

local StudioService = game:GetService("StudioService")

local FFlagToolboxFixDuplicateAssetInsertions = game:DefineFastFlag("ToolboxFixDuplicateAssetInsertions", false)
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")
local FFlagBootstrapperTryAsset = game:GetFastFlag("BootstrapperTryAsset")
local FFlagFixGroupPackagesCategoryInToolbox = game:GetFastFlag("FixGroupPackagesCategoryInToolbox")
local FFlagToolboxFixAnalyticsBugs = game:GetFastFlag("ToolboxFixAnalyticsBugs")
local FFlagToolboxInsertEventContextFixes = game:GetFastFlag("ToolboxInsertEventContextFixes")
local FFlagEnableDefaultSortFix2 = game:GetFastFlag("EnableDefaultSortFix2")
local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")
local FFlagToolboxNewInsertAnalytics = game:GetFastFlag("ToolboxNewInsertAnalytics")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)
local AssetAnalyticsContextItem = require(Plugin.Core.Util.Analytics.AssetAnalyticsContextItem)

local Util = Plugin.Core.Util
local InsertToolPromise = require(Util.InsertToolPromise)
local InsertAsset = require(Util.InsertAsset)
local ContextMenuHelper = require(Util.ContextMenuHelper)
local PageInfoHelper = require(Util.PageInfoHelper)
local Category = require(Plugin.Core.Types.Category)

local getModal = ContextGetter.getModal
local getPlugin = ContextGetter.getPlugin
local getNetwork = ContextGetter.getNetwork
local withModal = ContextHelper.withModal

local Asset = require(Plugin.Core.Components.Asset.Asset)
local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)
local MessageBox = require(Plugin.Core.Components.MessageBox.MessageBox)

local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local GetAssets = require(Plugin.Core.Actions.GetAssets)
local PlayPreviewSound = require(Plugin.Core.Actions.PlayPreviewSound)
local PausePreviewSound = require(Plugin.Core.Actions.PausePreviewSound)
local ResumePreviewSound = require(Plugin.Core.Actions.ResumePreviewSound)
local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)
local SetAssetPreview = require(Plugin.Core.Actions.SetAssetPreview)
local GetPackageHighestPermission = require(Plugin.Core.Networking.Requests.GetPackageHighestPermission)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local withLocalization = ContextHelper.withLocalization

local ContextServices = require(Libs.Framework.ContextServices)

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

function AssetGridContainer:init(props)
	self.state = {
		hoveredAssetId = 0,
		isShowingToolMessageBox = false,
	}

	if FFlagToolboxFixDuplicateAssetInsertions then
		--[[
			We need to track when the user last triggered an insertion, because inserting
			an asset can take several seconds depending on the asset's loading speed. This
			means throttling inserts via "onAssetInserted" does not work as intended
			because a user can queue up several inserts of an asset which is not loaded yet,
			and "onAssetInserted" does not fire and update the last inserted time until
			the asset in question has finished loading.
		]]
		self.lastInsertAttemptTime = 0
	end

	self.canInsertAsset = function()

		if FFlagToolboxFixDuplicateAssetInsertions then
			return (tick() - self.lastInsertAttemptTime > Constants.TIME_BETWEEN_ASSET_INSERTION)
				and not self.insertToolPromise:isWaiting()
		else
			return (tick() - self.props.mostRecentAssetInsertTime > Constants.TIME_BETWEEN_ASSET_INSERTION)
				and not self.insertToolPromise:isWaiting()
		end
	end

	self.openAssetPreview = function(assetData)
		local modal = getModal(self)
		modal.onAssetPreviewToggled(true)
		self.props.onPreviewToggled(true)
		self:setState({
			previewAssetData = assetData,
			openAssetPreviewStartTime = FFlagToolboxFixAnalyticsBugs and tick() or nil,
		})

		if self.props.isPlaying then
			self.props.pauseASound()
		end

		if FFlagToolboxFixAnalyticsBugs then
			-- TODO STM-146: Remove this once we are happy with the new MarketplaceAssetPreview event
			Analytics.onAssetPreviewSelected(assetData.Asset.Id)
		end

		if FFlagToolboxNewAssetAnalytics then
			self.props.AssetAnalytics:get():logPreview(assetData)
		end
	end

	self.closeAssetPreview = function(assetData)
		local modal = getModal(self)
		modal.onAssetPreviewToggled(false)
		self.props.onPreviewToggled(false)

		if FFlagToolboxFixAnalyticsBugs then
			local endTime = tick()
			local startTime = self.state.openAssetPreviewStartTime
			local deltaMs = (endTime - startTime) * 1000
			Analytics.onAssetPreviewEnded(assetData.Asset.Id, deltaMs)
		end

		self:setState({
			previewAssetData = Roact.None,
			openAssetPreviewStartTime = FFlagToolboxFixAnalyticsBugs and Roact.None or nil,
		})
	end

	self.onAssetHovered = function(assetId)
		local modal = getModal(self)
		if self.state.hoveredAssetId == 0 and modal.canHoverAsset() then
			self:setState({
				hoveredAssetId = assetId,
			})
		end
	end

	self.onAssetHoverEnded = function(assetId)
		if self.state.hoveredAssetId == assetId then
			self:setState({
				hoveredAssetId = 0,
			})
		end
	end

	self.onFocusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.onAssetHoverEnded()
		end
	end

	self.onPreviewAudioButtonClicked = function(assetId)
		local currentSoundId = self.props.currentSoundId
		if currentSoundId == assetId then
			if self.props.isPlaying then
				self.props.pauseASound()

				Analytics.onSoundPaused()
				Analytics.onSoundPausedCounter()

			else
				self.props.resumeASound()

				Analytics.onSoundPlayed()
				Analytics.onSoundPlayedCounter()
			end
		else
			self.props.playASound(assetId)

			Analytics.onSoundPlayed()
			Analytics.onSoundPlayedCounter()
		end
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

	self.onAssetGridContainerChanged = function()
		if self.props.onAssetGridContainerChanged then
			self.props.onAssetGridContainerChanged()
		end
	end

	self.insertToolPromise = InsertToolPromise.new(self.onInsertToolPrompt)

	self.onAssetInsertionSuccesful = function(assetId)
		self.props.onAssetInserted(getNetwork(self), assetId)
		self.props.onAssetInsertionSuccesful()
	end

	self.tryCreateContextMenu = function(assetData, showEditOption, localizedContent)
		local asset = assetData.Asset
		local assetId = asset.Id
		local assetTypeId = asset.TypeId
		local plugin = self.props.Plugin:get()

		local isPackageAsset
		if FFlagUseCategoryNameInToolbox then
			isPackageAsset = Category.categoryIsPackage(props.categoryName)
		else
			isPackageAsset = Category.categoryIsPackage(self.props.categoryIndex, self.props.currentTab)
		end
		if isPackageAsset then
			local canEditPackage = (self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.EditKey or
				self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.OwnKey)
			showEditOption = canEditPackage
		end

		ContextMenuHelper.tryCreateContextMenu(plugin, assetId, assetTypeId, showEditOption, localizedContent, props.tryOpenAssetConfig, isPackageAsset)
	end

	self.tryInsert = function(assetData, assetWasDragged, insertionMethod)
		if FFlagToolboxFixDuplicateAssetInsertions then
			self.lastInsertAttemptTime = tick()
		end

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local currentProps = self.props
		local categoryIndex = (not FFlagUseCategoryNameInToolbox) and (currentProps.categoryIndex or 1)
		local categoryName = currentProps.categoryName
		local searchTerm = currentProps.searchTerm or ""
		local assetIndex = currentProps.assetIndex
		local categories = (not FFlagUseCategoryNameInToolbox) and (currentProps.categories)

		local currentCategoryName
		if FFlagToolboxInsertEventContextFixes then
			if FFlagUseCategoryNameInToolbox then
				currentCategoryName = categoryName
			else
				currentCategoryName = PageInfoHelper.getCategory(categories, categoryIndex)
			end
		else
			currentCategoryName = (not FFlagUseCategoryNameInToolbox) and (PageInfoHelper.getCategory(categories, categoryIndex))
		end

		local currentTab
		if FFlagEnableDefaultSortFix2 then
			currentTab = currentProps.currentTab
		else
			currentTab = props.currentTab
		end

		local plugin = self.props.Plugin:get()
		InsertAsset.tryInsert({
				plugin = plugin,
				assetId = assetId,
				assetName = assetName,
				assetTypeId = assetTypeId,
				onSuccess = FFlagToolboxNewAssetAnalytics and FFlagToolboxNewInsertAnalytics and function(assetId, insertedInstance)
					self.onAssetInsertionSuccesful(assetId)
					insertionMethod = insertionMethod or (assetWasDragged and "DragInsert" or "ClickInsert")
					self.props.AssetAnalytics:get():logInsert(assetData, insertionMethod, insertedInstance)
				end or self.onAssetInsertionSuccesful,
				categoryIndex = (not FFlagUseCategoryNameInToolbox) and categoryIndex,
				currentCategoryName = currentCategoryName,
				categoryName = categoryName,
				searchTerm = searchTerm,
				assetIndex = assetIndex,
				currentTab = (not FFlagUseCategoryNameInToolbox) and currentTab,
			},
			self.insertToolPromise,
			assetWasDragged
		)
	end
end

function AssetGridContainer:didMount()
	if FFlagBootstrapperTryAsset then
		local assetIdStr = StudioService:getStartupAssetId()
		local assetId = tonumber(assetIdStr)

		if assetId then
			local ok, result = pcall(function()
				local props = self.props
				local localization = props.Localization
				local api = props.API:get()

				-- There is no API to get individual Toolbox item details in the same format as that which
				-- we use for fetching the whole page of Toolbox assets, so we map the fields from this API
				-- to the expected format from the whole-page batch API (IDE/Toolbox/Items)
				api.ToolboxService.V1.Items.details({
					items = {
						{
							id = assetId,
							itemType = "Asset",
						}
					}
				}):makeRequest():andThen(function(response)
					local responseItem = response.responseBody.data[1]

					if not responseItem then
						-- TODO STM-135: Replace these warnings with Lumberyak logs
						warn("Could not find asset information in response for", assetIdStr)

						Analytics.onTryAssetFailure(assetId)
						return
					end

					local localeId = localization.getLocale()
					local created = DateTime.fromIsoDate(responseItem.asset.createdUtc)
					local updated = DateTime.fromIsoDate(responseItem.asset.updatedUtc)

					local assetData = {
						Asset = {
							Id = responseItem.asset.id,
							TypeId = responseItem.asset.typeId,
							AssetGenres = responseItem.asset.assetGenres,
							Name = responseItem.asset.name,
							Description = responseItem.asset.description,
							-- TODO DEVTOOLS-3378: Format as a "friendly" duration string
							Created = created:FormatLocalTime("LLL", localeId),
							CreatedRaw = created.UnixTimestamp,
							-- TODO DEVTOOLS-3378: Format as a "friendly" duration string
							Updated = updated:FormatLocalTime("LLL", localeId),
							UpdatedRaw = updated.UnixTimestamp,
						},
						Creator = {
							Name = responseItem.creator.name,
							Id = responseItem.creator.id,
							TypeId = responseItem.creator.type,
						},
					}

					-- Add the asset data to the store, so that we can open AssetPreview
					self.props.dispatchGetAssets({
						assetData,
					})

					self.openAssetPreview(assetData)

					self.tryInsert(assetData, false)

					Analytics.onTryAsset(assetId)
				end, function(err)
					-- TODO STM-135: Replace these warnings with Lumberyak logs
					warn("Could not load asset information for", assetIdStr, err)

					Analytics.onTryAssetFailure(assetId)
				end)
			end)

			if not ok then
				-- TODO STM-135: Replace these warnings with Lumberyak logs
				warn("Failed to try asset", assetIdStr, tostring(result))
				Analytics.onTryAssetFailure(assetId)
			end
		end
	end
end

function AssetGridContainer:willUnmount()
	self.insertToolPromise:destroy()
end

function AssetGridContainer.getDerivedStateFromProps(nextProps, lastState)
	local lastHoveredAssetStillVisible = false
	for _, assetTable in ipairs(nextProps.assetIds) do
		local assetId = assetTable[1]
		if lastState.hoveredAssetId == assetId then
			lastHoveredAssetStillVisible = true
			break
		end
	end

	if not lastHoveredAssetStillVisible then
		return {
			hoveredAssetId = 0
		}
	end
end

function AssetGridContainer:render()
	return withModal(function(_, modalStatus)
		return withLocalization(function(_, localizedContent)
			local props = self.props
			local state = self.state

			local assetIds = props.assetIds
			-- TODO remove currentTab when FFlagUseCategoryNameInToolbox is retired
			local currentTab = props.currentTab

			local position = props.Position or UDim2.new(0, 0, 0, 0)
			local size = props.Size or UDim2.new(1, 0, 1, 0)

			local currentSoundId = props.currentSoundId
			local isPlaying = props.isPlaying

			local previewAssetData = state.previewAssetData

			local isPackages
			if FFlagUseCategoryNameInToolbox then
				isPackages = Category.categoryIsPackage(props.categoryName)
			else
				local categoryIndex = props.categoryIndex
				isPackages = Category.categoryIsPackage(categoryIndex, FFlagFixGroupPackagesCategoryInToolbox and currentTab or categoryIsPackage)
			end

			local hoveredAssetId = modalStatus:canHoverAsset() and state.hoveredAssetId or 0
			local isShowingToolMessageBox = state.isShowingToolMessageBox

			local showPrices
			if FFlagUseCategoryNameInToolbox then
				showPrices = Category.shouldShowPrices(props.categoryName)
			else
				showPrices = Category.shouldShowPrices(props.currentTab, props.categoryIndex)
			end

			local cellSize
			if showPrices then
				cellSize = UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0,
					Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT)
			else
				cellSize = UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0, Constants.ASSET_HEIGHT)
			end

			local assetElements = {
				UIGridLayout = Roact.createElement("UIGridLayout", {
					CellPadding = UDim2.new(0, Constants.BETWEEN_ASSETS_HORIZONTAL_PADDING,
						0, Constants.BETWEEN_ASSETS_VERTICAL_PADDING),
					CellSize = cellSize,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Event.Changed] = self.onAssetGridContainerChanged,
				})
			}
			if isPackages and #assetIds ~= 0 then
				local assetIdList = {}
				local index = 1
				while index < PermissionsConstants.MaxPackageAssetIdsForHighestPermissionsRequest and assetIds[index] ~= nil do
					local assetId = assetIds[index][1]
					if not self.props.currentUserPackagePermissions[assetId] then
						table.insert(assetIdList, assetId)
					end
					index = index + 1
				end

				if #assetIdList ~= 0 then
					self.props.dispatchGetPackageHighestPermission(getNetwork(self), assetIdList)
				end
			end

			local function tryCreateLocalizedContextMenu(assetData, showEditOption)
				self.tryCreateContextMenu(assetData, showEditOption, localizedContent)
			end

			local isGroupPackageAsset
			if FFlagUseCategoryNameInToolbox then
				isGroupPackageAsset = Category.categoryIsGroupPackages(props.categoryName)
			else
				isGroupPackageAsset = self.props.categories[self.props.categoryIndex] == Category.GROUP_PACKAGES
			end

			for index, asset in ipairs(assetIds) do
				local assetId = asset[1]
				local assetIndex = asset[2]

				local canEditPackage = (self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.EditKey or
					self.props.currentUserPackagePermissions[assetId] == PermissionsConstants.OwnKey)

				-- If the asset is a group packages, then we want to check only want to show it if we have permission.
				-- if the category is not group packages, then we always want to show.
				local showAsset = (isGroupPackageAsset and canEditPackage) or not isGroupPackageAsset

				assetElements[tostring(assetId)] = showAsset and Roact.createElement(Asset, {
					assetId = assetId,
					LayoutOrder = index,
					assetIndex = assetIndex,

					isHovered = assetId == hoveredAssetId,
					hoveredAssetId = hoveredAssetId,

					currentSoundId = currentSoundId,
					isPlaying = isPlaying,

					categoryIndex = (not FFlagUseCategoryNameInToolbox) and (props.categoryIndex),
					categoryName = props.categoryName,

					onAssetHovered = self.onAssetHovered,
					onAssetHoverEnded = self.onAssetHoverEnded,

					onPreviewAudioButtonClicked = self.onPreviewAudioButtonClicked,
					onAssetPreviewButtonClicked = self.openAssetPreview,

					onAssetInserted = not FFlagToolboxFixDuplicateAssetInsertions and self.onAssetInserted or nil, -- This prop is not used in the child component
					canInsertAsset = self.canInsertAsset,
					tryInsert = self.tryInsert,
					tryCreateContextMenu = tryCreateLocalizedContextMenu,
				})
			end

			assetElements.ToolMessageBox = isShowingToolMessageBox and Roact.createElement(MessageBox, {
				Name = "ToolboxToolMessageBox",

				Title = "Insert Tool",
				Text = "Put this tool into the starter pack?",
				Icon = Images.INFO_ICON,

				onClose = self.onMessageBoxClosed,
				onButtonClicked = self.onMessageBoxButtonClicked,

				buttons = {
					{
						Text = "Yes",
						action = "yes",
					}, {
						Text = "No",
						action = "no",
					}
				}
			})

			assetElements.AssetPreview = previewAssetData and Roact.createElement(AssetPreviewWrapper, {
				assetData = previewAssetData,

				canInsertAsset = self.canInsertAsset,
				tryInsert = self.tryInsert,
				tryCreateContextMenu = tryCreateLocalizedContextMenu,
				onClose = self.closeAssetPreview
			})

			return Roact.createElement("Frame", {
				Position = position,
				Size = size,
				BackgroundTransparency = 1,

				[Roact.Event.InputEnded] = self.onFocusLost,
			}, assetElements)
		end)
	end)
end

ContextServices.mapToProps(AssetGridContainer, {
	API = ContextServices.API,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
	AssetAnalytics = FFlagToolboxNewAssetAnalytics and AssetAnalyticsContextItem or nil,
})

local function mapStateToProps(state, props)
	state = state or {}

	local sound = state.sound or {}
	local pageInfo = state.pageInfo or {}

	local categoryIndex = (not FFlagUseCategoryNameInToolbox) and (pageInfo.categoryIndex or 1)
	local categoryName = FFlagUseCategoryNameInToolbox and (pageInfo.categoryName or Category.DEFAULT.name) or nil

	return {
		currentSoundId = sound.currentSoundId or 0,
		isPlaying = sound.isPlaying or false,
		categoryIndex = (not FFlagUseCategoryNameInToolbox) and (categoryIndex),
		categoryName = categoryName,
		categories = pageInfo.categories or {},
		currentTab = (not FFlagUseCategoryNameInToolbox) and (pageInfo.currentTab),
		currentUserPackagePermissions = state.packages.permissionsTable or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchGetAssets = function(assets)
			dispatch(GetAssets(assets))
		end,

		playASound = function(currentSoundId)
			dispatch(PlayPreviewSound(currentSoundId))
		end,

		pauseASound = function()
			dispatch(PausePreviewSound())
		end,

		resumeASound = function()
			dispatch(ResumePreviewSound())
		end,

		onAssetInserted = function(networkInterface, assetId)
			dispatch(PostInsertAssetRequest(networkInterface, assetId))
		end,

		onPreviewToggled = function(isPreviewing)
			dispatch(SetAssetPreview(isPreviewing))
		end,

		dispatchGetPackageHighestPermission = function(networkInterface, assetIds)
			dispatch(GetPackageHighestPermission(networkInterface, assetIds))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)
