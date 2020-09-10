--[[
	Represents an asset in the grid view of the toolbox
	Takes in data from the endpoint as a prop
	Has events and callbacks for when it is hovered and clicked
	Shows asset icon, name, creator name and the voting details

	Props:
		Asset asset
		number LayoutOrder
		boolean isHovered

		callback onAssetHovered(number assetId)
		callback onAssetHoverEnded(number assetId)

		callback insertAsset(NetworkInterface networkInterface, number assetId)
		callback onAssetInserted()

		number currentSoundId
		boolean isPlaying
		callback onPreviewAudioButtonClicked
]]

local FFlagFixAssetTextTruncation = game:DefineFastFlag("FixAssetTextTruncation", false)
local FFlagRemoveAudioEndorsedIcon = game:GetFastFlag("RemoveAudioEndorsedIcon")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")
local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Util.Images)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local DebugFlags = require(Util.DebugFlags)
local getTimeString = require(Util.getTimeString)
local PageInfoHelper = require(Util.PageInfoHelper)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization
local getNetwork = ContextGetter.getNetwork

local Components = Plugin.Core.Components
local AssetFolder = Components.Asset
local DraggableButton = require(Components.DraggableButton)
local DropShadow = require(Components.DropShadow)
local AssetCreatorName = require(AssetFolder.AssetCreatorName)
local AssetIcon = require(AssetFolder.AssetIcon)
local AssetName = require(AssetFolder.AssetName)
local Voting = require(AssetFolder.Voting.Voting)

local GetOwnsAssetRequest = require(Plugin.Core.Networking.Requests.GetOwnsAssetRequest)
local GetCanManageAssetRequest = require(Plugin.Core.Networking.Requests.GetCanManageAssetRequest)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices

local Category = require(Plugin.Core.Types.Category)

local Asset = Roact.PureComponent:extend("Asset")

function Asset:init(props)
	if not props.asset then
		if DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox asset id %s: asset not found"):format(tostring(props.assetId)))
		end
		return
	end

	local assetData = props.asset
	local asset = assetData.Asset
	local assetId = asset.Id

	local onAssetHovered = props.onAssetHovered
	local onAssetHoverEnded = props.onAssetHoverEnded
	local canInsertAsset = props.canInsertAsset

	self.onMouseEntered = function(rbx, x, y)
		onAssetHovered(assetId)
	end

	self.onMouseLeave = function(rbx, x, y)
		onAssetHoverEnded(assetId)
	end

	self.onInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			onAssetHoverEnded(assetId)
		end
	end

	self.onMouseMoved = function(rbx, x, y)
		onAssetHovered(assetId)
	end

	self.onMouseButton2Click = function(rbx, x, y)
		local showEditOption = self.props.canManage

		self.props.tryCreateContextMenu(assetData, showEditOption)
	end

	self.onDragStart = function(rbx, x, y)
		if not canInsertAsset() then
			return
		end

		self.props.tryInsert(assetData, true)
	end

	self.onClick = function(rbx, x, y)
		if not self.props.canInsertAsset() then
			return
		end

		if asset.TypeId == Enum.AssetType.Plugin.Value then
			self.props.onAssetPreviewButtonClicked(assetData)
			return
		end

		self.props.tryInsert(assetData, false)
	end

	self.onAssetPreviewButtonClicked = function()
		self.props.onAssetPreviewButtonClicked(assetData)
	end
end

function Asset:didMount()
	local assetData = self.props.asset
	local asset = assetData.Asset
	local assetId = asset.Id

	self.props.getOwnsAsset(getNetwork(self), assetId)

	self.props.getCanManageAsset(getNetwork(self), assetId)

	if FFlagToolboxNewAssetAnalytics then
		self.props.AssetAnalytics:get():logImpression(assetData)
	end
end

function Asset:render()
	return withTheme(function(theme)
		return withLocalization(function(_, localizedContent)
			local props = self.props

			if not props.asset then
				return
			end

			local assetData = props.asset
			local ownsAsset = props.ownsAsset

			local asset = assetData.Asset
			local assetId = asset.Id
			local assetTypeId = asset.TypeId
			local isEndorsed = asset.IsEndorsed
			local showAudioLength = false
			if assetTypeId == Enum.AssetType.Audio.Value then
				if FFlagRemoveAudioEndorsedIcon then
					isEndorsed = false
				end
				showAudioLength = true
			end

			local assetName = asset.Name
			local status = asset.Status

			local price, isFree
			if assetTypeId == Enum.AssetType.Plugin.Value then
				price = assetData.Product and assetData.Product.Price or 0
				isFree = price == 0
			end

			local creator = assetData.Creator
			local creatorName = creator.Name

			local votingProps = props.voting or {}
			local showVotes = votingProps.ShowVotes
			local isCurrentlyCreationsTab
			if FFlagUseCategoryNameInToolbox then
				isCurrentlyCreationsTab = Category.getTabForCategoryName(props.categoryName) == Category.CREATIONS
			else
				isCurrentlyCreationsTab = Category.CREATIONS_KEY == props.currentTab
			end
			if isCurrentlyCreationsTab then
				showVotes = false
			end
			if showAudioLength then
				showVotes = false
			end

			local showStatus = isCurrentlyCreationsTab

			local layoutOrder = props.LayoutOrder
			local isHovered = props.isHovered

			local showPrices
			if FFlagUseCategoryNameInToolbox then
				showPrices = Category.shouldShowPrices(props.categoryName)
			else
				showPrices = Category.shouldShowPrices(props.currentTab, props.categoryIndex)
			end

			local assetOutlineHeight = showVotes and Constants.ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING
				or Constants.ASSET_OUTLINE_EXTRA_HEIGHT
			if showStatus then
				assetOutlineHeight = assetOutlineHeight + Constants.ASSET_CREATOR_NAME_HEIGHT
			end

			-- At current stage, price and audio length won't exist together.
			if showPrices or showAudioLength then
				assetOutlineHeight = assetOutlineHeight + Constants.ASSET_INNER_PADDING
			end

			local isDarkerTheme = theme.isDarkerTheme
			local outlineTheme = theme.asset.outline
			local dropShadowSize = Constants.DROP_SHADOW_SIZE
			local innerFrameHeight = isHovered and assetOutlineHeight - (2 * Constants.ASSET_OUTLINE_PADDING) or 0
			local innerFramePadding = Constants.ASSET_INNER_PADDING
			if showAudioLength then
				-- For now, only audio asset requires extra space.
				innerFramePadding = 0
			end

			local durationText = ""
			if showAudioLength then
				durationText = (asset.Duration ~= nil) and getTimeString(asset.Duration, 1) or ""
			end

			return Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				LayoutOrder = layoutOrder,
				BackgroundTransparency = 1,

				-- Need to raise the container up over the other assets to show the outline correctly
				ZIndex = isHovered and 2 or 1,
			}, {
				DropShadow = isHovered and isDarkerTheme and Roact.createElement(DropShadow, {
					-- Copy the size and position of the outline but add a few pixels extra
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, -(Constants.ASSET_OUTLINE_PADDING + dropShadowSize)),
					Size = UDim2.new(1, 2 * (Constants.ASSET_OUTLINE_PADDING + dropShadowSize),
						1, assetOutlineHeight + (2 * dropShadowSize)),
					ZIndex = -2, -- Ensure it's below the outline
				}),

				Outline = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = isHovered and (isDarkerTheme and 0 or Constants.ASSET_OUTLINE_HOVERED_TRANSPARENCY) or 1,

					BackgroundColor3 = outlineTheme.backgroundColor,
					BorderColor3 = outlineTheme.borderColor,

					BorderSizePixel = 1,
					Position = UDim2.new(0.5, 0, 0, -Constants.ASSET_OUTLINE_PADDING),
					Size = UDim2.new(1, 2 * Constants.ASSET_OUTLINE_PADDING, 1, assetOutlineHeight),
					ZIndex = -1,

					[Roact.Event.MouseLeave] = self.onMouseLeave,
					[Roact.Event.InputEnded] = self.onInputEnded,
				}),

				InnerFrame = Roact.createElement(DraggableButton, {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, innerFrameHeight),

					[Roact.Event.MouseEnter] = self.onMouseEntered,
					[Roact.Event.MouseButton2Click] = self.onMouseButton2Click,
					onMouseMoved = self.onMouseMoved,

					onDragStart = self.onDragStart,
					onClick = self.onClick,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, innerFramePadding),
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Top,
					}),

					AssetIcon = Roact.createElement(AssetIcon, {
						Size = UDim2.new(1, 0, 1, 0),
						LayoutOrder = 0,

						assetId = assetId,
						assetName = assetName,
						isEndorsed = isEndorsed,
						typeId = assetTypeId,
						currentSoundId = props.currentSoundId,
						isPlaying = props.isPlaying,
						isLoading = props.isLoading,

						voting = votingProps,
						isHovered = isHovered,

						status = showStatus and status or nil,

						onPreviewAudioButtonClicked = props.onPreviewAudioButtonClicked,
						onAssetPreviewButtonClicked = self.onAssetPreviewButtonClicked,
					}),

					AssetName = Roact.createElement(AssetName, {
						Size = UDim2.new(1, 0, 0.45, 0),
						LayoutOrder = 1,

						assetId = assetId,
						assetName = assetName,
					}),

					Price = showPrices and Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						Size = UDim2.new(1, 0, 0, Constants.PRICE_HEIGHT),
					}, {
						Layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Horizontal,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							Padding = UDim.new(0, 4),
						}),

						RobuxIcon = not isFree and not ownsAsset and Roact.createElement("ImageLabel", {
							LayoutOrder = 1,
							Image = Images.ROBUX_SMALL,
							Size = Constants.Dialog.ROBUX_SIZE,
							BackgroundTransparency = 1,
							ImageColor3 = theme.asset.status.textColor,
						}),

						PriceText = not ownsAsset and Roact.createElement("TextLabel", {
							LayoutOrder = 2,
							BackgroundTransparency = 1,
							Size = UDim2.new(1, -20, 0, Constants.PRICE_HEIGHT),
							TextColor3 = theme.asset.status.textColor,
							Font = Constants.FONT,
							TextSize = Constants.PRICE_FONT_SIZE,
							TextXAlignment = Enum.TextXAlignment.Left,
							Text = isFree and localizedContent.PurchaseFlow.Free or price,
							TextTruncate = Enum.TextTruncate.AtEnd,
						}),

						OwnedIcon = ownsAsset and Roact.createElement("ImageLabel", {
							LayoutOrder = 1,
							Image = Images.OWNED_ICON,
							Size = Constants.Dialog.ROBUX_SIZE,
							BackgroundTransparency = 1,
							ImageColor3 = theme.asset.status.textColor,
						}),
					}),

					CreatorName = isHovered and Roact.createElement(AssetCreatorName,{
						Size = UDim2.new(1, 0, 0.15, 0),
						LayoutOrder = 3,

						assetId = assetId,
						creatorName = creatorName,

						clickable = not isCurrentlyCreationsTab
					}),

					Voting = isHovered and showVotes and Roact.createElement(Voting, {
						LayoutOrder = 4,
						assetId = assetId,
						voting = votingProps,
					}),

					AudioLength = isHovered and showAudioLength and Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0, Constants.AUDIO_LENGTH_HEIGHT),
						LayoutOrder = 4,
						Text = durationText,
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						TextXAlignment = Enum.TextXAlignment.Left,
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_SMALL,
						TextColor3 = theme.asset.status.textColor,
					}),

					Status = isHovered and showStatus and Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						LayoutOrder = 5,
						Size = UDim2.new(1, 0, 0, Constants.STATUS_NAME_HEIGHT),
						Text = localizedContent.Status[status],
						TextColor3 = theme.asset.status.textColor,
						Font = Constants.FONT,
						TextSize = Constants.STATUS_NAME_FONT_SIZE,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Top,
						ClipsDescendants = false,
						TextTruncate = FFlagFixAssetTextTruncation and Enum.TextTruncate.None
							or Enum.TextTruncate.AtEnd,
					}),
				}),
			})
		end)
	end)
end

if FFlagToolboxNewAssetAnalytics then
	ContextServices.mapToProps(Asset, {
		AssetAnalytics = AssetAnalyticsContextItem,
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local voting = state.voting or {}
	local sound = state.sound or {}

	local idToAssetMap = assets.idToAssetMap or {}

	local assetId = props.assetId

	local pageInfo = state.pageInfo or {}
	local categoryIndex = (not FFlagUseCategoryNameInToolbox) and (pageInfo.categoryIndex or 1)
	local categoryName = FFlagUseCategoryNameInToolbox and (pageInfo.categoryName or Category.DEFAULT.name) or nil
	local searchTerm = pageInfo.searchTerm or ""

	local cachedOwnedAssets = state.purchase.cachedOwnedAssets
	local ownsAsset = cachedOwnedAssets[tostring(assetId)]

	local manageableAssets = assets.manageableAssets
	local canManage = manageableAssets[tostring(assetId)]

	return {
		asset = idToAssetMap[assetId],
		voting = voting[assetId] or {},
		categoryIndex = (not FFlagUseCategoryNameInToolbox) and (categoryIndex),
		categoryName = categoryName,
		searchTerm = searchTerm,
		currentTab = PageInfoHelper.getCurrentTab(pageInfo),
		ownsAsset = ownsAsset,
		canManage = canManage,
		isLoading = (sound.currentSoundId == assetId) and sound.isLoading or false,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getOwnsAsset = function(networkInterface, assetId)
			dispatch(GetOwnsAssetRequest(networkInterface, assetId))
		end,

		getCanManageAsset = function(networkInterface, assetId)
			dispatch(GetCanManageAssetRequest(networkInterface, assetId))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Asset)
