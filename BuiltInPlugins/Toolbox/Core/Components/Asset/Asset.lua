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
]]
local FFlagToolboxUsePageInfoInsteadOfAssetContext = game:GetFastFlag("ToolboxUsePageInfoInsteadOfAssetContext2")
local FFlagAssetVoteSimplification = game:GetFastFlag("AssetVoteSimplification")

local Plugin = script.Parent.Parent.Parent.Parent
local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local Images = require(Util.Images)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local getTimeString = require(Util.getTimeString)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)

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

local GetPageInfoAnalyticsContextInfo = require(Plugin.Core.Thunks.GetPageInfoAnalyticsContextInfo)
local TryCreateContextMenu = require(Plugin.Core.Thunks.TryCreateContextMenu)
local PermissionsConstants = require(Plugin.Core.Components.AssetConfiguration.Permissions.PermissionsConstants)

local GetOwnsAssetRequest = require(Plugin.Core.Networking.Requests.GetOwnsAssetRequest)
local GetCanManageAssetRequest = require(Plugin.Core.Networking.Requests.GetCanManageAssetRequest)

local SetAssetPreview = require(Plugin.Core.Actions.SetAssetPreview)
local NavigationContext = require(Plugin.Core.ContextServices.NavigationContext)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local FrameworkUtil = if FFlagAssetVoteSimplification then Framework.Util else nil
local formatVoteNumber = if FFlagAssetVoteSimplification then FrameworkUtil.formatVoteNumber else nil
local getTextSize = if FFlagAssetVoteSimplification then FrameworkUtil.GetTextSize else nil

local disableRatings = require(Plugin.Core.Util.ToolboxUtilities).disableRatings

local Category = require(Plugin.Core.Types.Category)

local Asset = Roact.PureComponent:extend("Asset")

Asset.defaultProps = {
	parentSize = Vector2.new(),
	parentAbsolutePosition = Vector2.new(),
	onAssetHovered = function() end,
	onAssetHoverEnded = function() end,
}

function Asset:init(props)
	self.wasAssetBoundsWithinScrollingBounds = false
	self.hasInitiated = false
	self.ref = Roact.createRef()

	self.state = {
		hoverPosition = nil,
	}
	local canInsertAsset = props.canInsertAsset

	self.onMouseEntered = function(rbx, x, y)
		self.props.onAssetHovered(self.props.assetId)
	end

	self.onMouseLeave = function(rbx, x, y)
		self.props.onAssetHoverEnded(self.props.assetId)
	end

	self.onInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.props.onAssetHoverEnded(self.props.assetId)
		end
	end

	self.onMouseMoved = function(rbx, x, y)
		self.props.onAssetHovered(self.props.assetId)
	end

	self.onDragStart = function(rbx, x, y)
		if not canInsertAsset() then
			return
		end
		local assetData = self.props.assetData

		self.props.tryInsert(assetData, true)
	end

	self.onClick = function(rbx, x, y)
		if not self.props.canInsertAsset() then
			return
		end

		local assetData = self.props.assetData
		local asset = assetData.Asset

		if asset.TypeId == Enum.AssetType.Plugin.Value then
			self.onAssetPreviewButtonClicked()
			return
		end

		self.props.tryInsert(assetData, false)
	end

	self.onAssetPreviewButtonClicked = function()
		local assetData = self.props.assetData
		self.props.onAssetPreviewButtonClicked(assetData)
	end

	self.tryCreateContextMenu = function(localization)
		local props = self.props
		local assetData = props.assetData
		local plugin = props.Plugin:get()
		local tryOpenAssetConfig = props.tryOpenAssetConfig

		local assetAnalyticsContext
		if FFlagToolboxUsePageInfoInsteadOfAssetContext then
			local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
			assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
		end

		self.props.tryCreateContextMenu(assetData, localization, plugin, tryOpenAssetConfig, assetAnalyticsContext)
	end

	self.getAssetSize = function()
		local result
		local showPrices = Category.shouldShowPrices(self.props.categoryName)
		if showPrices then
			result = UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0, Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT)
		else
			result = UDim2.new(0, Constants.ASSET_WIDTH_NO_PADDING, 0, Constants.ASSET_HEIGHT)
		end
		return result
	end

	self.isWithinParentBounds = function(position)
		-- NOTE: This assumes the parent's AnchorPoint is at 0,0
		local parentSize = self.props.parentSize
		local parentAbsolutePosition = self.props.parentAbsolutePosition

		return (position.X >= parentAbsolutePosition.X)
			and (position.X <= parentSize.X + parentAbsolutePosition.X)
			and (position.Y >= parentAbsolutePosition.Y)
			and (position.Y <= parentSize.Y + parentAbsolutePosition.Y)
	end

	self.onAbsolutePositionChange = function(rbx)
		local assetData = self.props.assetData
		local absolutePos = rbx.AbsolutePosition
		local size = self.getAssetSize()

		assert(
			rbx.AnchorPoint.X == 0 and rbx.AnchorPoint.Y == 0,
			"self.onAbsolutePositionChange needs the asset AnchorPoint to be 0,0 to calculate the scrollingBounds."
		)
		local assetTopLeftBoundary = rbx.AbsolutePosition
		local assetBottomRightBoundary = Vector2.new(absolutePos.X + size.X.Offset, absolutePos.Y + size.Y.Offset)

		local wasAssetBoundsWithinScrollingBounds = self.isWithinParentBounds(assetTopLeftBoundary)
			or self.isWithinParentBounds(assetBottomRightBoundary)

		if assetData and wasAssetBoundsWithinScrollingBounds and not self.wasAssetBoundsWithinScrollingBounds then
			local assetAnalyticsContext
			if FFlagToolboxUsePageInfoInsteadOfAssetContext then
				local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
				assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
			end
			local swimlaneName = self.props.swimlaneCategory
			local nav = self.props.NavigationContext:get()
			local analytics = self.props.AssetAnalytics:get()
			local navData = analytics.getNavigationContext(nav, swimlaneName)
			self.props.AssetAnalytics:get():logImpression(assetData, assetAnalyticsContext, navData)
		end
		self.wasAssetBoundsWithinScrollingBounds = wasAssetBoundsWithinScrollingBounds
	end
end

function Asset:didMount()
	local assetData
	local assetData = self.props.assetData
	local assetId = self.props.assetId

	self.props.getOwnsAsset(getNetwork(self), assetId)

	self.props.getCanManageAsset(getNetwork(self), assetId)

	if assetData then
		local assetAnalyticsContext
		if FFlagToolboxUsePageInfoInsteadOfAssetContext then
			local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
			assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
		end
		local swimlaneName = self.props.swimlaneCategory
		local nav = self.props.NavigationContext:get()
		local analytics = self.props.AssetAnalytics:get()
		local navData = analytics.getNavigationContext(nav, swimlaneName)
		self.props.AssetAnalytics:get():logImpression(assetData, assetAnalyticsContext, navData)
	end
end

function Asset:render()
	return withLocalization(function(localization, localizedContent)
		return self:renderContent(nil, localization, localizedContent)
	end)
end

function Asset:renderContent(theme, localization, localizedContent)
	local props = self.props
	theme = props.Stylizer

	local assetId = props.assetId
	local assetData = props.assetData
	local categoryName = props.categoryName
	local currentUserPackagePermissions = props.currentUserPackagePermissions

	local isGroupPackageAsset = Category.categoryIsGroupPackages(categoryName)
	local canEditPackage = (
		currentUserPackagePermissions[assetId] == PermissionsConstants.EditKey
		or currentUserPackagePermissions[assetId] == PermissionsConstants.OwnKey
	)

	local showAsset
	if isGroupPackageAsset then
		showAsset = canEditPackage
	else
		showAsset = true
	end

	if not assetData or not showAsset then
		-- TODO: Render Loading instead?
		return
	end

	local layoutOrder = props.LayoutOrder
	local ownsAsset = props.ownsAsset
	local asset = assetData.Asset
	assetId = props.assetId
	local assetTypeId = asset.TypeId
	local isEndorsed = asset.IsEndorsed
	local isVerifiedCreator = assetData.Creator.IsVerifiedCreator
	local hasScripts = asset.HasScripts

	local showAudioLength = false
	if assetTypeId == Enum.AssetType.Audio.Value then
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
	local isCurrentlyCreationsTab = Category.getTabForCategoryName(props.categoryName) == Category.CREATIONS
	if isCurrentlyCreationsTab or showAudioLength or disableRatings() then
		showVotes = false
	end

	local showStatus = isCurrentlyCreationsTab

	if showStatus and status == nil then
		showStatus = false
	end

	local isHovered = props.isHovered

	local showPrices = Category.shouldShowPrices(props.categoryName)

	local assetOutlineHeight, showVoteButtons, showVoteCounts, hasEnoughRatings, useOneLineForAssetName, assetNameOnlyNeedsOneLine, assetNameFontSize, assetNameFont
	if FFlagAssetVoteSimplification then
		hasEnoughRatings = votingProps ~= nil
			and votingProps.VoteCount ~= nil
			and formatVoteNumber.hasEnoughRatings(votingProps.VoteCount)
		showVoteCounts = showVotes and isHovered and hasEnoughRatings
		showVoteButtons = showVotes and votingProps ~= nil and votingProps.showVoteButtons
		-- Once a user inserts an asset, VoteButtons show regardless of hovering but we only want to change the outline when hovered
		if showVoteButtons and isHovered then
			assetOutlineHeight = Constants.ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTE_BUTTONS_HOVERED
			-- VoteCounts will only show when hovered, so we don't need to check for hover state like above
		elseif showVoteCounts then
			assetOutlineHeight = Constants.ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING_COUNT
		else
			assetOutlineHeight = Constants.ASSET_OUTLINE_EXTRA_HEIGHT
		end
		assetNameFontSize = Constants.ASSET_NAME_FONT_SIZE
		assetNameFont = Constants.FONT
		local assetNameLength = getTextSize(assetName, assetNameFontSize, assetNameFont).X
		-- use the asset width since if it's larger then that, then it'll go off the tile and look bad
		assetNameOnlyNeedsOneLine = assetNameLength <= Constants.ASSET_WIDTH_NO_PADDING
		-- when vote buttons are showing and it's hovered, we force the asset name to be one line
		if assetNameOnlyNeedsOneLine or showVoteButtons then
			useOneLineForAssetName = true
			assetOutlineHeight = assetOutlineHeight - Constants.ASSET_NAME_ONE_LINE_HEIGHT
		end
	else
		assetOutlineHeight = if showVotes
			then Constants.ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING
			else Constants.ASSET_OUTLINE_EXTRA_HEIGHT
	end
	if showStatus then
		assetOutlineHeight = assetOutlineHeight + Constants.ASSET_CREATOR_NAME_HEIGHT
	end

	if hasScripts then
		assetOutlineHeight = assetOutlineHeight + Constants.PRICE_HEIGHT
	end

	if FFlagAssetVoteSimplification and showVoteButtons and isHovered and hasScripts then
		assetOutlineHeight = assetOutlineHeight + Constants.ASSET_VOTE_BUTTONS_SCRIPT_PADDING
	end

	-- At current stage, price and audio length won't exist together.
	if showPrices or showAudioLength then
		assetOutlineHeight = assetOutlineHeight + Constants.ASSET_INNER_PADDING
	end

	local outlineTheme = theme.asset.outline
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

	local isDarkerTheme = true
	local dropShadowSize = theme.asset.dropShadowSize
	local outlineTransparency = outlineTheme.transparency

	local tryCreateLocalizedContextMenu = function()
		self.tryCreateContextMenu(localizedContent)
	end

	local result = Roact.createElement("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = self.getAssetSize(),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,

		-- Need to raise the container up over the other assets to show the outline correctly
		ZIndex = isHovered and 2 or 1,
		[Roact.Change.AbsolutePosition] = self.onAbsolutePositionChange,
	}, {
		DropShadow = isHovered and isDarkerTheme and Roact.createElement(DropShadow, {
			-- Copy the size and position of the outline but add a few pixels extra
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, -(Constants.ASSET_OUTLINE_PADDING + dropShadowSize)),
			Size = UDim2.new(
				1,
				2 * (Constants.ASSET_OUTLINE_PADDING + dropShadowSize),
				1,
				assetOutlineHeight + (2 * dropShadowSize)
			),
			ZIndex = -2, -- Ensure it's below the outline
		}),

		Outline = Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundTransparency = isHovered and outlineTransparency or 1,

			BackgroundColor3 = isVerifiedCreator and outlineTheme.verifiedBackgroundColor
				or outlineTheme.backgroundColor,
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
			[Roact.Event.MouseButton2Click] = tryCreateLocalizedContextMenu,
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
				isLoading = props.isLoading,

				voting = votingProps,
				isHovered = isHovered,

				status = showStatus and status or nil,

				onAssetPreviewButtonClicked = self.onAssetPreviewButtonClicked,
			}),

			AssetName = Roact.createElement(AssetName, {
				Size = UDim2.new(1, 0, 0.45, 0),
				LayoutOrder = if FFlagAssetVoteSimplification then 10 else 1,
				NumberRows = if FFlagAssetVoteSimplification and useOneLineForAssetName then 1 else nil,
				assetId = assetId,
				assetName = assetName,
				TextSize = if FFlagAssetVoteSimplification then assetNameFontSize else nil,
				Font = if FFlagAssetVoteSimplification then assetNameFont else nil,
			}),

			Price = showPrices and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = if FFlagAssetVoteSimplification then 20 else 2,
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
					ImageColor3 = theme.asset.textColor,
				}),

				PriceText = not ownsAsset and Roact.createElement("TextLabel", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -20, 0, Constants.PRICE_HEIGHT),
					TextColor3 = theme.asset.textColor,
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
					ImageColor3 = theme.asset.textColor,
				}),
			}),

			CreatorName = isHovered and Roact.createElement(AssetCreatorName, {
				Size = UDim2.new(1, 0, 0.15, 0),
				LayoutOrder = if FFlagAssetVoteSimplification then 30 else 3,

				assetId = assetId,
				creatorName = creatorName,

				clickable = not isCurrentlyCreationsTab,

				isVerifiedCreator = isVerifiedCreator,
			}),

			Voting = if not FFlagAssetVoteSimplification
					and isHovered
					and showVotes
				then Roact.createElement(Voting, {
					LayoutOrder = 4,
					assetId = assetId,
					voting = votingProps,
				})
				elseif
					FFlagAssetVoteSimplification
					-- if an asset is hovered, show the vote counts and percentage. if an asset is inserted (making showvotebuttons true) then we want to show the vote buttons even after they hover.
					-- The same component is used for vote bar and vote buttons, so we use this boolean to determine whether to show that component
					and (showVoteCounts or showVoteButtons)
				then
					Roact.createElement(Voting, {
						-- if we're showing buttons to vote, move them to before the creator name (layout order 25). But if we're showing the vote count, keep it after (layout order 35).
						LayoutOrder = if showVoteButtons then 25 else 35,
						assetId = assetId,
						voting = votingProps,
						showBackgroundBox = isHovered,
					})
				else nil,

			AudioLength = isHovered and showAudioLength and Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, Constants.AUDIO_LENGTH_HEIGHT),
				LayoutOrder = if FFlagAssetVoteSimplification then 40 else 4,
				Text = durationText,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_SMALL,
				TextColor3 = theme.asset.textColor,
			}),

			HasScripts = isHovered and hasScripts and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = if FFlagAssetVoteSimplification then 50 else 5,
				Size = UDim2.new(1, 0, 0, Constants.PRICE_HEIGHT),
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Padding = UDim.new(0, 4),
				}),

				ScriptIcon = Roact.createElement("ImageLabel", {
					LayoutOrder = 1,
					Image = Images.SCRIPT,
					Size = Constants.Dialog.SCRIPT_SIZE,
					BackgroundTransparency = 1,
				}),

				Text = Roact.createElement("TextLabel", {
					LayoutOrder = 2,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, -20, 0, Constants.PRICE_HEIGHT),
					TextColor3 = theme.asset.textColor,
					Font = Constants.FONT,
					TextSize = Constants.STATUS_NAME_FONT_SIZE,
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = localizedContent.HasScripts.HasScripts,
					TextTruncate = Enum.TextTruncate.None,
				}),
			}),

			Status = isHovered and showStatus and Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				LayoutOrder = if FFlagAssetVoteSimplification then 60 else 6,
				Size = UDim2.new(1, 0, 0, Constants.STATUS_NAME_HEIGHT),
				Text = localizedContent.Status[status],
				TextColor3 = theme.asset.textColor,
				Font = Constants.FONT,
				TextSize = Constants.STATUS_NAME_FONT_SIZE,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Top,
				ClipsDescendants = false,
				TextTruncate = Enum.TextTruncate.None,
			}),
		}),
	})
	return result
end

Asset = withContext({
	AssetAnalytics = AssetAnalyticsContextItem,
	Plugin = ContextServices.Plugin,
	NavigationContext = NavigationContext,
	Stylizer = ContextServices.Stylizer,
})(Asset)

local function mapStateToProps(state, props)
	state = state or {}

	local assets = state.assets or {}
	local voting = state.voting or {}
	local sound = state.sound or {}

	local idToAssetMap = assets.idToAssetMap or {}

	local assetId = props.assetId

	local pageInfo = state.pageInfo or {}
	local categoryName = pageInfo.categoryName or Category.DEFAULT.name
	local searchTerm = pageInfo.searchTerm or ""

	local cachedOwnedAssets = state.purchase.cachedOwnedAssets
	local ownsAsset = cachedOwnedAssets[tostring(assetId)]

	local manageableAssets = assets.manageableAssets or {}

	local canManage = manageableAssets[tostring(assetId)]

	local assetData
	if not props.assetData then
		assetData = props.assetData
	else
		assetData = idToAssetMap[assetId]
	end

	return {
		assetData = assetData,
		categoryName = categoryName,
		currentSoundId = sound.currentSoundId or 0,
		currentUserPackagePermissions = state.packages.permissionsTable or {} or nil,
		searchTerm = searchTerm,
		ownsAsset = ownsAsset,
		isLoading = (sound.currentSoundId == assetId) and sound.isLoading or false,
		voting = voting[assetId] or {},
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

		onPreviewToggled = function(isPreviewing, previewAssetId)
			dispatch(SetAssetPreview(isPreviewing, previewAssetId))
		end,

		tryCreateContextMenu = function(assetData, localizedContent, plugin, tryOpenAssetConfig, assetAnalyticsContext)
			dispatch(
				TryCreateContextMenu(assetData, localizedContent, plugin, tryOpenAssetConfig, assetAnalyticsContext)
			)
		end,

		getPageInfoAnalyticsContextInfo = if FFlagToolboxUsePageInfoInsteadOfAssetContext
			then function()
				return dispatch(GetPageInfoAnalyticsContextInfo())
			end
			else nil,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Asset)
