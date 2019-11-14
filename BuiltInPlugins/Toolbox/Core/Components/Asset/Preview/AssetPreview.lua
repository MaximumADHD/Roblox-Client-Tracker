--[[
	AssetPreview component is responsible for manageing the models will be displaying on the
	ViewPortFrame.
	Models, detail information regarding the asset should be coming from the parent. Asnyc reqest for getting
	the asset should also be done in the parent.

	Necessary property:
	Position = UDim2
	Size = UDim2, decides how big should the whole assetPreview component should be.
	assetData = table, a table contains asset data.
	AseetNameColor = Color3, the color of the asset. Default is black.
	robuxContent = string, the content to display for robux.
	robuxColor = Color3, the color for the robux content.
	robuxImage = string, Url to the image.
	likesContent = string, the content to display for likes.
	likeImage = string, Url to the image.
	likesColor = Color3, the color for the likes content.
	DeveloperName = string, the name of the developer.
	Category = string, it's actually the genre of the asset.
	Created = String or time, when this asset is created.
	Updated = String or item, when this asset is created.

	Optional property:
	zIndex = num, used to override the zIndex depth of the base button.
]]

-- FIXME (psewell) See related comment in didMount below
local FFlagStudioRemoveToolboxScrollingFrameHack = settings():GetFFlag("StudioRemoveToolboxScrollingFrameHack")
local FFlagEnableMarketplaceFavorite = settings():GetFFlag("EnableMarketplaceFavorite")
local FFlagEnableCatelogForAPIService = settings():GetFFlag("EnableCatelogForAPIService")
local FFlagPluginAccessAndInstallationInStudio = settings():GetFFlag("PluginAccessAndInstallationInStudio")
local FFlagStudioToolboxPluginPurchaseFlow = game:GetFastFlag("StudioToolboxPluginPurchaseFlow")
local FFlagStudioToolboxShowPluginInstallationProgress = game:GetFastFlag("StudioToolboxShowPluginInstallationProgress")
local FFlagUseDevelopFetchPluginVersionId = game:GetFastFlag("UseDevelopFetchPluginVersionId")

local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local UILibrary = require(Libs.UILibrary)

local Preview = Plugin.Core.Components.Asset.Preview
local AssetDescription = require(Preview.AssetDescription)
local Vote = require(Preview.Vote)
local PreviewController = require(Preview.PreviewController)
local ActionBar = require(Preview.ActionBar)
local Favorites = require(Preview.Favorites)
local LoadingBar = require(Plugin.Core.Components.AssetConfiguration.LoadingBar)
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Colors = require(Util.Colors)
local Images = require(Util.Images)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local getTextSize = require(Util.getTextSize)
local Analytics = require(Util.Analytics.Analytics)
local InsertAsset = require(Util.InsertAsset)
local PluginPurchaseFlow = require(Plugin.Core.Components.PurchaseFlow.PluginPurchaseFlow)
local PurchaseSuccessDialog = require(Plugin.Core.Components.PurchaseFlow.PurchaseSuccessDialog)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization
local getNetwork = ContextGetter.getNetwork

local GetOwnsAssetRequest = require(Plugin.Core.Networking.Requests.GetOwnsAssetRequest)
local ClearPurchaseFlow = require(Plugin.Core.Actions.ClearPurchaseFlow)
local PurchaseStatus = require(Plugin.Core.Types.PurchaseStatus)

local AssetType = require(Plugin.Core.Types.AssetType)

local AssetPreview = Roact.PureComponent:extend("AssetPreview")

-- TODO: Later, I will need to move all the unchanged numbers
-- into the constants.
local TITLE_HEIGHT = 18

local PADDING = Constants.ASSET_PREVIEW_PADDING
local VERTICAL_PADDING = 10
local TOP_PADDING = 12
local BOTTOM_PADDING = 20

local VOTE_HEIGHT = 36

local ACTION_BAR_HEIGHT = 52
local INSTALLATION_BAR_SECTION_HEIGHT = 80
local INSTALLATION_BAR_SECTION_PADDING = 16
local INSTALLATION_BAR_HEIGHT = 6
local INSTALLATION_ANIMATION_TIME = 1.0 --seconds


-- Multiply minimum treeview width by 2 to get minimum threshold
-- When the asset preview is twice the minimum width, then we
-- can split the view in half to show the treeview on the right.
local TREEVIEW_ON_BOTTOM_WIDTH_THRESHOLD = 242 * 2

local function getGenreString(genreArray)
	local arraySize = #genreArray
	if arraySize == 0 then
		return "All"
	else
		return tostring(genreArray[1])
	end
end

function AssetPreview:init(props)
	self.state = {
		enableScroller = true,
		overrideEnableVoting = false,
		showPurchaseFlow = false,
		showSuccessDialog = false,
		showInstallationBar = false,
	}

	self.assetSizeInited = false

	self.baseScrollRef = Roact.createRef()
	self.baseLayouterRef = Roact.createRef()

	self.assetBaseButtonRef = Roact.createRef()

	self.onModelPreviewFrameEntered = function()
		self:setState({
			enableScroller = false
		})
	end

	self.onModelPreviewFrameLeft = function()
		self:setState({
			enableScroller = true
		})
	end

	self.closeSuccessDialog = function()
		self:setState({
			showSuccessDialog = false,
		})
	end

	-- For first time setting the canvas size.
	self.onScrollContentSizeChange = function(rbx)
		local baseScroller = self.baseScrollRef.current
		local listLayouter = self.baseLayouterRef.current
		local absSize = listLayouter and listLayouter.AbsoluteContentSize or Vector2.new()
		if baseScroller and listLayouter then
			baseScroller.CanvasSize = UDim2.new(1, 0, 0, absSize.Y + BOTTOM_PADDING)
		end

		self:adjustAssetHeight()
	end

	self.adjustAssetHeight = function()
		-- Init the total height of asset preview component
		local listLayouter = self.baseLayouterRef.current
		local assetBaseButton = self.assetBaseButtonRef.current
		if assetBaseButton then
			local absSize = listLayouter and listLayouter.AbsoluteContentSize or Vector2.new()
			local assetHeight = math.min(absSize.Y + ACTION_BAR_HEIGHT + BOTTOM_PADDING, self.props.maxPreviewHeight)
			assetBaseButton.Size = UDim2.new(0, self.props.maxPreviewWidth, 0, assetHeight)
		end
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

	self.purchaseCancelled = function()
		self:setState({
			showPurchaseFlow = false,
		})
	end

	self.purchaseSucceeded = function()
		local tryInstall = FFlagStudioToolboxShowPluginInstallationProgress and self.tryInstallWithProgress or self.tryInstall
		if tryInstall() then
			self:setState({
				showSuccessDialog = true,
			})
		end
	end

	self.tryInstall = function()
		local assetData = self.props.assetData
		local assetVersionId
		if FFlagUseDevelopFetchPluginVersionId then
			local previewPluginData = self.props.previewPluginData
			assetVersionId = previewPluginData.versionId
		else
			assetVersionId = self.props.assetVersionId
		end

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

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
			plugin = plugin,
			assetId = assetId,
			assetVersionId = assetVersionId,
			assetName = assetName,
			assetTypeId = assetTypeId,
			currentTab = self.props.currentTab,
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

	if FFlagStudioToolboxPluginPurchaseFlow then
		self.props.clearPurchaseFlow(props.assetData.Asset.Id)
	end

	Analytics.onAssetPreviewSelected(props.assetData.Asset.Id)
end

function AssetPreview:didMount()
	--[[
		FIXME (psewell)
		THIS IS A HACK! ScrollingFrames can sometimes render the scroll bar in the
		wrong place. Because of this, we have to hide the ScrollingFrame for a step
		so that the scroll bar appears in the right place when we make it visible.

		This is a temporary fix recommended by PlayerEx.
		There is a permanent fix on the way for this bug in C++.
		See https://jira.rbx.com/browse/CLIPLAYEREX-2494
		We will enable the flag FFlagStudioRemoveToolboxScrollingFrameHack when the fix is done.
	]]
	if not FFlagStudioRemoveToolboxScrollingFrameHack then
		local scrollingFrame = self.baseScrollRef.current
		local baseButton = self.assetBaseButtonRef.current
		if scrollingFrame and baseButton then
			local stepConnection
			stepConnection = RunService.Heartbeat:Connect(function()
				scrollingFrame.Visible = true
				stepConnection:Disconnect()
			end)
		end
	end

	if FFlagStudioToolboxPluginPurchaseFlow then
		local assetData = self.props.assetData
		local Asset = assetData.Asset
		local assetId = Asset.Id
		self.props.getOwnsAsset(getNetwork(self), assetId)
	end
end

function AssetPreview:didUpdate()
	self:adjustAssetHeight()
end

function AssetPreview:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			-- TODO: Time to tide up the properties passed from the asset.
			local props = self.props
			local state = self.state

			local assetPreviewTheme = theme.assetPreview

			local maxPreviewWidth = props.maxPreviewWidth
			local maxPreviewHeight = props.maxPreviewHeight

			local position = props.position
			local anchorPoint = props.anchorPoint

			local assetData = props.assetData
			local assetVersionId = props.assetVersionId

			-- Data structure from the server
			local Asset = assetData.Asset
			local assetId = Asset.Id
			local assetName = Asset.Name or "Test Name"
			local detailDescription = Asset.Description
			local created = Asset.Created
			local updated = Asset.Updated
			local assetGenres = Asset.AssetGenres

			local price, owned, showPurchaseFlow, showSuccessDialog
			if FFlagStudioToolboxPluginPurchaseFlow then
				price = assetData.Product and assetData.Product.Price or 0
				owned = props.Owned
				showPurchaseFlow = state.showPurchaseFlow
				showSuccessDialog = state.showSuccessDialog
			end

			local creator = assetData.Creator
			local creatorName = creator.Name

			local typeId = assetData.Asset.TypeId or Enum.AssetType.Model.Value

			local previewModel = props.previewModel
			local currentPreview = props.currentPreview

			local assetPreviewType
			if FFlagPluginAccessAndInstallationInStudio and (typeId == Enum.AssetType.Plugin.Value) then
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

			local shouldShowInstallationProgress = false
			if FFlagStudioToolboxShowPluginInstallationProgress then
				shouldShowInstallationProgress = isPluginAsset and self.state.showInstallationBar

				-- prevent the ActionBar's text from changing to "Installed" before the loading bar
				--  finishes its animation
				isPluginLoading = isPluginLoading or shouldShowInstallationProgress
			end

			local pluginButtonText = localizedContent.AssetConfig.Insert
			local showRobuxIcon
			if isPluginAsset then
				if isPluginLoading then
					pluginButtonText = localizedContent.AssetConfig.Loading
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

			local hasRating = typeId == Enum.AssetType.Model.Value
				or (isPluginAsset and isPluginInstalled) or self.state.overrideEnableVoting

			local voting = props.voting or {}
			local upVoteRate = 0
			if voting.UpVotes and voting.DownVotes then
				local totalVotes = voting.UpVotes + voting.DownVotes
				if totalVotes > 0 then
					upVoteRate = voting.UpVotes / totalVotes
				end
			end
			local rating = upVoteRate * 100

			local putTreeviewOnBottom = maxPreviewWidth <= TREEVIEW_ON_BOTTOM_WIDTH_THRESHOLD

			local assetSize = UDim2.new(0, maxPreviewWidth, 0, maxPreviewHeight)

			local zIndex = props.zIndex or 0

			local onTreeItemClicked = props.onTreeItemClicked

			local canInsertAsset = props.canInsertAsset
			local tryInsert
			if FFlagStudioToolboxShowPluginInstallationProgress and not FFlagStudioToolboxPluginPurchaseFlow then
				-- This is a workaround to support progress indicators if the purchase flow is disabled.
				tryInsert = isPluginAsset and self.tryInstallWithProgress or props.tryInsert
			else
				tryInsert = isPluginAsset and self.tryInstall or props.tryInsert
			end


			local tryCreateContextMenu = props.tryCreateContextMenu

			local enableScroller = self.state.enableScroller

			local detailDescriptionWidth = props.maxPreviewWidth - 4 * PADDING - 2
			local textSize = getTextSize(detailDescription,
				Constants.FONT_SIZE_LARGE,
				Constants.FONT,
				Vector2.new(detailDescriptionWidth, 9000))
			local detailDescriptionHeight = textSize.y + VERTICAL_PADDING

			local enableFavorite = FFlagEnableMarketplaceFavorite and FFlagEnableCatelogForAPIService

			local layoutIndex = LayoutOrderIterator.new()

			return Roact.createElement("ImageButton", {
				Position = position,
				Size = assetSize,
				AnchorPoint = anchorPoint,

				ZIndex = zIndex,

				BackgroundTransparency = 0,
				BackgroundColor3 = assetPreviewTheme.background,
				AutoButtonColor = false,
				BorderSizePixel = 0,

				[Roact.Ref] = self.assetBaseButtonRef,
			},{
				CloseImage = Roact.createElement("ImageLabel", {
					Position = UDim2.new(1, 0, 0, 0),
					Size = UDim2.new(0, 20, 0, 20),
					AnchorPoint = Vector2.new(0, 1),

					Image = Images.DELETE_BUTTON,
					BackgroundTransparency = 1,
				}),

				BaseScrollFrame = Roact.createElement("ScrollingFrame", {
					Size = UDim2.new(1, PADDING, 1, -ACTION_BAR_HEIGHT),
					Visible = FFlagStudioRemoveToolboxScrollingFrameHack, --See comment in didMount

					ScrollBarThickness = 8,
					ScrollBarImageColor3 = theme.scrollingFrame.scrollbarImageColor,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TopImage = Images.SCROLLBAR_TOP_IMAGE,
					MidImage = Images.SCROLLBAR_MIDDLE_IMAGE,
					BottomImage = Images.SCROLLBAR_BOTTOM_IMAGE,
					ScrollingEnabled = enableScroller,

					[Roact.Ref] = self.baseScrollRef,
				},{
					UIPadding = Roact.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, BOTTOM_PADDING),
						PaddingLeft = UDim.new(0, PADDING),
						PaddingRight = UDim.new(0, PADDING * 2),
						PaddingTop = UDim.new(0, TOP_PADDING),
					}),

					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, VERTICAL_PADDING),

						[Roact.Change.AbsoluteContentSize] = self.onScrollContentSizeChange,
						[Roact.Ref] = self.baseLayouterRef,
					}),

					AssetName = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),

						Text = assetName,
						Font = Constants.FONT_BOLD,
						TextSize = Constants.FONT_SIZE_TITLE,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = assetPreviewTheme.assetName.textColor,
						BackgroundTransparency = 1,
						TextTruncate = Enum.TextTruncate.AtEnd,

						AutoLocalize = false,

						LayoutOrder = layoutIndex:getNextOrder(),
					}),

					Rating = hasRating and Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 12),

						LayoutOrder = layoutIndex:getNextOrder(),
					}, {
						VoteIcon = Roact.createElement("ImageLabel", {
							Size = UDim2.new(0, 16, 0, 16),
							BackgroundTransparency = 1,
							Image = Images.THUMB_UP_SMALL,
						}),

						VoteText = Roact.createElement("TextLabel", {
							Size = UDim2.new(1, 0, 1, 0),
							Position = UDim2.new(0, 22, 0, 3),
							BackgroundTransparency = 1,

							Text = ("%d%%"):format(rating),
							TextXAlignment = Enum.TextXAlignment.Left,
							TextSize = Constants.FONT_SIZE_MEDIUM,
							Font = Constants.FONT,
							TextColor3 = theme.assetPreview.vote.textColor,

							LayoutOrder = 1,
						}),
					}),

					PreviewController = Roact.createElement(PreviewController, {
						width = PADDING * 2,

						currentPreview = currentPreview,
						previewModel = previewModel,
						assetPreviewType = assetPreviewType,
						assetId = assetId,
						putTreeviewOnBottom = putTreeviewOnBottom,

						onTreeItemClicked = onTreeItemClicked,
						onModelPreviewFrameEntered = self.onModelPreviewFrameEntered,
						onModelPreviewFrameLeft = self.onModelPreviewFrameLeft,

						layoutOrder = layoutIndex:getNextOrder(),
					}),

					LoadingIndicator = shouldShowInstallationProgress and Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, INSTALLATION_BAR_SECTION_HEIGHT),
						BackgroundTransparency = 1,
						LayoutOrder = layoutIndex:getNextOrder(),
					}, {
						UIPadding = Roact.createElement("UIPadding", {
							PaddingBottom = UDim.new(0, 0),
							PaddingLeft = UDim.new(0, INSTALLATION_BAR_SECTION_PADDING),
							PaddingRight = UDim.new(0, INSTALLATION_BAR_SECTION_PADDING),
							PaddingTop = UDim.new(0, (INSTALLATION_BAR_SECTION_HEIGHT * 0.5) + 10),
						}),
						LoadingBar = Roact.createElement(LoadingBar, {
							loadingText = localizedContent.AssetConfig.Installing,
							Size = UDim2.new(1, 0, 0, INSTALLATION_BAR_HEIGHT),
							holdPercent = 0.92,
							loadingTime = INSTALLATION_ANIMATION_TIME,
							onFinish = isPluginInstalled and function() end or nil,
						}),
					}),

					Favorites = enableFavorite and Roact.createElement(Favorites, {
						size = UDim2.new(1, 0, 0, 20),
						assetId = assetId,

						layoutOrder = layoutIndex:getNextOrder(),
					}),

					DetailDescription = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0, detailDescriptionHeight),

						BackgroundTransparency = 1,
						TextWrapped = true,

						Text = detailDescription,
						TextSize = Constants.FONT_SIZE_LARGE,
						Font = Constants.FONT,
						TextColor3 = assetPreviewTheme.detailedDescription.textColor,
						TextXAlignment = Enum.TextXAlignment.Left,

						LayoutOrder = layoutIndex:getNextOrder(),
					}),

					Vote = hasRating and Roact.createElement(Vote, {
						size = UDim2.new(1, 0, 0, VOTE_HEIGHT),

						voting = voting,
						assetId = assetId,

						layoutOrder = layoutIndex:getNextOrder(),
					}),

					Developer = Roact.createElement(AssetDescription, {
						leftContent = "Creator",
						rightContent = creatorName,

						layoutOrder = layoutIndex:getNextOrder(),
					}),

					Category = Roact.createElement(AssetDescription, {
						leftContent = "Type",
						rightContent = getGenreString(assetGenres),

						layoutOrder = layoutIndex:getNextOrder(),
					}),

					-- For the format of the time, we need only a generic function to handle that.
					-- A separate component is not needed.
					Created = Roact.createElement(AssetDescription, {
						leftContent = "Created",
						rightContent = created,

						layoutOrder = layoutIndex:getNextOrder(),
					}),

					Updated = Roact.createElement(AssetDescription, {
						leftContent = "Last Updated",
						rightContent = updated,
						hideSeparator = true,

						layoutOrder = layoutIndex:getNextOrder(),
					})
				}),

				ActionBar = Roact.createElement(ActionBar, {
					Text = pluginButtonText,
					Size = UDim2.new(1, 0, 0, ACTION_BAR_HEIGHT),
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					AssetId = assetId,
					AssetVersionId = assetVersionId,

					Asset = Asset,
					CanInsertAsset = canInsertAsset,
					TryInsert = tryInsert,
					TryCreateContextMenu = tryCreateContextMenu,
					InstallDisabled = isPluginAsset and (isPluginLoading or isPluginUpToDate),
					ShowRobuxIcon = showRobuxIcon,
				}),

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
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local voting = state.voting or {}
	local purchase = state.purchase or {}
	local idToAssetMap = assets.idToAssetMap or {}
	local assetId = props.assetData.Asset.Id
	local pageInfo = state.pageInfo or {}
	local purchaseStatus = purchase.status
	local owned = purchase.cachedOwnedAssets[tostring(assetId)]
	local balance = purchase.robuxBalance

	local stateToProps = {
		asset = idToAssetMap[assetId],
		voting = voting[assetId] or {},
		currentTab = pageInfo.currentTab,
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
		getOwnsAsset = function(network, assetId)
			dispatch(GetOwnsAssetRequest(network, assetId))
		end,

		clearPurchaseFlow = function(assetId)
			dispatch(ClearPurchaseFlow(assetId))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetPreview)