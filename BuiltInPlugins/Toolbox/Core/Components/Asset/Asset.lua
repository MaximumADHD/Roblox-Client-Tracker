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
		boolean isPlaying 	// remove with FFlagToolboxAssetGridRefactor
		callback onPreviewAudioButtonClicked	 // remove with FFlagToolboxAssetGridRefactor
]]
local FFlagToolboxAssetGridRefactor = game:GetFastFlag("ToolboxAssetGridRefactor6")
local FFlagToolboxAssetCategorization4 = game:GetFastFlag("ToolboxAssetCategorization4")
local FFlagToolboxUsePageInfoInsteadOfAssetContext = game:GetFastFlag("ToolboxUsePageInfoInsteadOfAssetContext2")

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

local disableRatings = require(Plugin.Core.Util.ToolboxUtilities).disableRatings

local Category = require(Plugin.Core.Types.Category)

local Asset = Roact.PureComponent:extend("Asset")

if FFlagToolboxAssetGridRefactor then
	Asset.defaultProps = {
		parentSize = Vector2.new(),
		parentAbsolutePosition = Vector2.new(),
		onAssetHovered = function() end,
		onAssetHoverEnded = function() end,
	}
end

function Asset:init(props)
	if FFlagToolboxAssetGridRefactor then
		self.wasAssetBoundsWithinScrollingBounds = false
		self.hasInitiated = false
		self.ref = Roact.createRef()

		self.state = {
			hoverPosition = nil,
		}
	end

	local assetData = not FFlagToolboxAssetGridRefactor and props.asset or nil
	local asset = not FFlagToolboxAssetGridRefactor and assetData.Asset or nil
	local assetId = not FFlagToolboxAssetGridRefactor and asset.Id or nil

	local canInsertAsset = props.canInsertAsset

	local onAssetHovered = not FFlagToolboxAssetGridRefactor and props.onAssetHovered or nil
	local onAssetHoverEnded = not FFlagToolboxAssetGridRefactor and props.onAssetHoverEnded or nil

	self.onMouseEntered = function(rbx, x, y)
		if FFlagToolboxAssetGridRefactor then
			self.props.onAssetHovered(self.props.assetId)
		else
			onAssetHovered(assetId)
		end
	end

	self.onMouseLeave = function(rbx, x, y)
		if FFlagToolboxAssetGridRefactor then
			self.props.onAssetHoverEnded(self.props.assetId)
		else
			onAssetHoverEnded(assetId)
		end
	end

	self.onInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			if FFlagToolboxAssetGridRefactor then
				self.props.onAssetHoverEnded(self.props.assetId)
			else
				onAssetHoverEnded(assetId)
			end
		end
	end

	self.onMouseMoved = function(rbx, x, y)
		if FFlagToolboxAssetGridRefactor then
			self.props.onAssetHovered(self.props.assetId)
		else
			onAssetHovered(assetId)
		end
	end

	if not FFlagToolboxAssetGridRefactor then
		self.onMouseButton2Click = function(rbx, x, y)
			local showEditOption = self.props.canManage

			local assetAnalyticsContext
			if FFlagToolboxUsePageInfoInsteadOfAssetContext then
				local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
				assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
				self.props.tryCreateContextMenu(assetData, showEditOption, nil, nil, assetAnalyticsContext)
			else
				self.props.tryCreateContextMenu(assetData, showEditOption)
			end
		end
	end

	self.onDragStart = function(rbx, x, y)
		if not canInsertAsset() then
			return
		end
		if FFlagToolboxAssetGridRefactor then
			assetData = self.props.assetData
		end

		self.props.tryInsert(assetData, true)
	end

	self.onClick = function(rbx, x, y)
		if not self.props.canInsertAsset() then
			return
		end

		if FFlagToolboxAssetGridRefactor then
			assetData = self.props.assetData
			asset = assetData.Asset
		else
			asset = asset
		end

		if asset.TypeId == Enum.AssetType.Plugin.Value then
			if FFlagToolboxAssetCategorization4 then
				self.onAssetPreviewButtonClicked()
			else
				if FFlagToolboxAssetGridRefactor then
					self.props.onPreviewToggled(true, self.props.assetId)
				else
					self.props.onAssetPreviewButtonClicked(assetData)
				end
			end
			return
		end

		self.props.tryInsert(assetData, false)
	end

	self.onAssetPreviewButtonClicked = function()
		if FFlagToolboxAssetCategorization4 then
			local assetData = self.props.assetData
			self.props.onAssetPreviewButtonClicked(assetData)
		else
			self.props.onAssetPreviewButtonClicked(assetData)
		end
	end

	if FFlagToolboxAssetGridRefactor then
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
				result = UDim2.new(
					0,
					Constants.ASSET_WIDTH_NO_PADDING,
					0,
					Constants.ASSET_HEIGHT + Constants.PRICE_HEIGHT
				)
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
				if FFlagToolboxAssetCategorization4 then
					local swimlaneName = self.props.swimlaneCategory
					local nav = self.props.NavigationContext:get()
					local analytics = self.props.AssetAnalytics:get()
					local navData = analytics.getNavigationContext(nav, swimlaneName)
					self.props.AssetAnalytics:get():logImpression(assetData, assetAnalyticsContext, navData)
				else
					self.props.AssetAnalytics:get():logImpression(assetData, assetAnalyticsContext)
				end
			end
			self.wasAssetBoundsWithinScrollingBounds = wasAssetBoundsWithinScrollingBounds
		end
	end
end

function Asset:didMount()
	local assetData
	local assetId
	if FFlagToolboxAssetGridRefactor then
		assetData = self.props.assetData
		assetId = self.props.assetId
	else
		assetData = self.props.asset
		local asset = assetData.Asset
		assetId = asset.Id
	end

	self.props.getOwnsAsset(getNetwork(self), assetId)

	self.props.getCanManageAsset(getNetwork(self), assetId)

	if not FFlagToolboxAssetGridRefactor or (FFlagToolboxAssetGridRefactor and assetData) then
		local assetAnalyticsContext
		if FFlagToolboxUsePageInfoInsteadOfAssetContext then
			local getPageInfoAnalyticsContextInfo = self.props.getPageInfoAnalyticsContextInfo
			assetAnalyticsContext = getPageInfoAnalyticsContextInfo()
		end
		if FFlagToolboxAssetCategorization4 then
			local swimlaneName = self.props.swimlaneCategory
			local nav = self.props.NavigationContext:get()
			local analytics = self.props.AssetAnalytics:get()
			local navData = analytics.getNavigationContext(nav, swimlaneName)
			self.props.AssetAnalytics:get():logImpression(assetData, assetAnalyticsContext, navData)
		else
			self.props.AssetAnalytics:get():logImpression(assetData, assetAnalyticsContext)
		end
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

	local assetData
	local assetId
	if FFlagToolboxAssetGridRefactor then
		assetId = props.assetId
		assetData = props.assetData
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
	else
		assetData = props.asset
		if not assetData then
			return
		end
	end

	local layoutOrder = props.LayoutOrder
	local ownsAsset = props.ownsAsset
	local asset = assetData.Asset
	assetId = FFlagToolboxAssetGridRefactor and props.assetId or asset.Id
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

	local assetOutlineHeight = showVotes and Constants.ASSET_OUTLINE_EXTRA_HEIGHT_WITH_VOTING
		or Constants.ASSET_OUTLINE_EXTRA_HEIGHT
	if showStatus then
		assetOutlineHeight = assetOutlineHeight + Constants.ASSET_CREATOR_NAME_HEIGHT
	end

	if hasScripts then
		assetOutlineHeight = assetOutlineHeight + Constants.PRICE_HEIGHT
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

	local tryCreateLocalizedContextMenu
	if FFlagToolboxAssetGridRefactor then
		tryCreateLocalizedContextMenu = function()
			self.tryCreateContextMenu(localizedContent)
		end
	end

	local result = Roact.createElement("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = FFlagToolboxAssetGridRefactor and self.getAssetSize() or UDim2.new(1, 0, 1, 0),
		LayoutOrder = layoutOrder,
		BackgroundTransparency = 1,

		-- Need to raise the container up over the other assets to show the outline correctly
		ZIndex = isHovered and 2 or 1,
		[Roact.Change.AbsolutePosition] = FFlagToolboxAssetGridRefactor and self.onAbsolutePositionChange or nil,
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
			[Roact.Event.MouseButton2Click] = FFlagToolboxAssetGridRefactor and tryCreateLocalizedContextMenu
				or self.onMouseButton2Click,
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
				isPlaying = not FFlagToolboxAssetGridRefactor and props.isPlaying or nil,
				isLoading = props.isLoading,

				voting = votingProps,
				isHovered = isHovered,

				status = showStatus and status or nil,

				onPreviewAudioButtonClicked = not FFlagToolboxAssetGridRefactor and props.onPreviewAudioButtonClicked
					or nil,
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
				LayoutOrder = 3,

				assetId = assetId,
				creatorName = creatorName,

				clickable = not isCurrentlyCreationsTab,

				isVerifiedCreator = isVerifiedCreator,
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
				TextColor3 = theme.asset.textColor,
			}),

			HasScripts = isHovered and hasScripts and Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 5,
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
				LayoutOrder = 6,
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
	Plugin = FFlagToolboxAssetGridRefactor and ContextServices.Plugin or nil,
	NavigationContext = FFlagToolboxAssetCategorization4 and NavigationContext or nil,
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

	local manageableAssets
	if FFlagToolboxAssetGridRefactor then
		manageableAssets = assets.manageableAssets or {}
	else
		manageableAssets = assets.manageableAssets
	end
	local canManage = manageableAssets[tostring(assetId)]

	local assetData
	if FFlagToolboxAssetCategorization4 and not props.assetData then
		assetData = props.assetData
	else
		assetData = FFlagToolboxAssetGridRefactor and idToAssetMap[assetId] or nil
	end

	return {
		asset = if not FFlagToolboxAssetGridRefactor then idToAssetMap[assetId] else nil,
		assetData = assetData,
		categoryName = categoryName,
		currentSoundId = FFlagToolboxAssetGridRefactor and (sound.currentSoundId or 0) or props.currentSoundId,
		currentUserPackagePermissions = FFlagToolboxAssetGridRefactor and (state.packages.permissionsTable or {})
			or nil,
		searchTerm = searchTerm,
		ownsAsset = ownsAsset,
		canManage = not FFlagToolboxAssetGridRefactor and canManage or nil,
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

		tryCreateContextMenu = FFlagToolboxAssetGridRefactor
				and function(assetData, localizedContent, plugin, tryOpenAssetConfig, assetAnalyticsContext)
					dispatch(
						TryCreateContextMenu(
							assetData,
							localizedContent,
							plugin,
							tryOpenAssetConfig,
							assetAnalyticsContext
						)
					)
				end
			or nil,

		getPageInfoAnalyticsContextInfo = if FFlagToolboxUsePageInfoInsteadOfAssetContext
			then function()
				return dispatch(GetPageInfoAnalyticsContextInfo())
			end
			else nil,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Asset)
