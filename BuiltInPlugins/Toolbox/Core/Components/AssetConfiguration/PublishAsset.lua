--[[
	This component holds all the detail page we want to show to the user. The content being displayed here should be
	determined by the parent. And each time the component changes, it needs to notify the parent about the change.

	Necessary Props:
		Size, UDim2, used to set the size for the whole page.
		name, string, used to represent the asset's name. Nil for new asset. Can't be nil.
		description, string, used to represent the asset's description.
		owner, table, contain data structure describe the owner.
		genres, arrar of string, it's an array, even you can only select one genre.
		allowCopy, bool, decide if user can change the copyOn toggle button or not.
		copyOn, bool, decide if the user has set the copyOn to true or false.
		allowComment, bool, decide if other users can change comment on this asset or not.
		commentOn, bool, decide if the comment on is true or false.

		assetTypeEnum, enum, asset type.

		onNameChange, function, callback when name changes.
		onDescChange, function, callback when description changes.
		onOwnerSelected, function, callback when owner changes.
		onGenreSelected, function, callback when genre changes.
		toggleCopy, function, callback when copy changes.
		toggleComment, function, callback when comment changes.

		displayOwnership, bool, if we want to show ownership.
		displayGenre, bool, genre.
		displayCopy, bool, copy.
		displayComment, bool, comment.
		displayAssetType, bool, assetType.
		displayTags, bool, tags.

		newAssetStatus, string, from AssetConfigConstants.ASSET_STATUS (what the status for the asset will be in the back-end after we save the changes on this widget)
		currentAssetStatus, string, from AssetConfigConstants.ASSET_STATUS (what the current status for the asset is in the back-end)
		price, number, price of asset
		minPrice, number, minimum price
		maxPrice, number, max price
		feeRate, number, fee rate
		isPriceValid, bool, changes the behavior of the component
		onPriceChange, function, price has changed

	Optional Props:
		LayoutOrder, number, used by the layouter to set the position of the component.
]]
local FFlagToolboxPrivatePublicAudioAssetConfig3 = game:GetFastFlag("ToolboxPrivatePublicAudioAssetConfig3")
local FFlagToolboxAudioAssetConfigIdVerification = game:GetFastFlag("ToolboxAudioAssetConfigIdVerification")
local FFlagToolboxAudioAssetConfigDisablePublicAudio = game:GetFastFlag("ToolboxAudioAssetConfigDisablePublicAudio")
local FFlagToolboxEnablePublicAudioToggle = game:GetFastFlag("ToolboxEnablePublicAudioToggle")
local FFlagToolboxAssetConfigurationMatchPluginFlow = game:GetFastFlag("ToolboxAssetConfigurationMatchPluginFlow")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Framework = require(Packages.Framework)
local TitledFrame = Framework.StudioUI.TitledFrame
local Separator = Framework.UI.Separator
local Pane = Framework.UI.Pane
local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = FFlagToolboxAssetConfigurationMatchPluginFlow and require(Util.AssetConfigUtil) or nil
local Constants = require(Util.Constants)
local Images = require(Plugin.Core.Util.Images)

local withLocalization = ContextHelper.withLocalization

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local ConfigTextField = require(AssetConfiguration.ConfigTextField)
local ConfigAccess = require(AssetConfiguration.ConfigAccess)
local ConfigGenre = require(AssetConfiguration.ConfigGenre)
local ConfigCopy = require(AssetConfiguration.ConfigCopy)
local ConfigComment = require(AssetConfiguration.ConfigComment)
local ConfigSharing = require(AssetConfiguration.ConfigSharing)
local TagsComponent = require(AssetConfiguration.CatalogTags.TagsComponent)
local Header = require(AssetConfiguration.Header)
local PriceComponent = FFlagToolboxAssetConfigurationMatchPluginFlow and require(AssetConfiguration.PriceComponent) or nil

local SetFieldError = require(Plugin.Core.Actions.SetFieldError)

local PublishAsset = Roact.PureComponent:extend("PublishAsset")

local NAME_HEIGHT = 100
local DESC_HEIGHT = 180
local ACCESS_HEIGHT = 70
local ASSET_TYPE_HEIGHT = not FFlagToolboxAssetConfigurationMatchPluginFlow and 60 or nil -- unused variable, remove with FFlagToolboxAssetConfigurationMatchPluginFlow
local GENRE_HEIGHT = 70
local COPY_HEIGHT = 80
local COMMENT_HEIGHT = 80
local PADDING = 24
local HEIGHT_FOR_ACCOUNT_SETTING_TEXT = 60
local DIVIDER_BASE_HEIGHT = 20
local ICON_SIZE = 24
local BOTTOM_PADDING = 30
local SPACING = 5

function PublishAsset:init(props)
	self.state = {
		maxDropdownPosition = 0,
	}

	self.baseFrameRef = Roact.createRef()
	self.listLayoutRef = Roact.createRef()
	self.tagsRef = Roact.createRef()
	self.genreRef = Roact.createRef()

	self.refreshCanvas = function()
		if self.baseFrameRef.current and self.listLayoutRef.current then
			local baseFrame = self.baseFrameRef.current
			local uiListLayout = self.listLayoutRef.current
			local canvasHeight = math.max(uiListLayout.AbsoluteContentSize.y + PADDING*2, self.state.maxDropdownPosition)
			baseFrame.CanvasSize = UDim2.new(props.Size.X.Scale, props.Size.X.Offset, 0, canvasHeight)
		end
	end

	self.updateMaxDropdownPosition = function(ref, dropdownHeight)
		local frame = ref.current
		if frame and dropdownHeight > 0 then
			local topOfDropdownField =
				ref.current.AbsolutePosition.Y
				+ self.baseFrameRef.current.CanvasPosition.Y
				+ -self.baseFrameRef.current.AbsolutePosition.Y
				- PADDING

			local bottomOfDropdown =
				topOfDropdownField
				+ PADDING
				+ ref.current.AbsoluteSize.Y
				+ dropdownHeight
				+ PADDING

			spawn(function()
				if bottomOfDropdown > self.state.maxDropdownPosition then
					self:setState({ maxDropdownPosition = bottomOfDropdown })
					self.refreshCanvas()
				end
				self:bumpCanvas(topOfDropdownField, bottomOfDropdown)
			end)
		end
	end
end

function PublishAsset:bumpCanvas(top, bottom)
	if self.baseFrameRef.current then
		local baseFrame = self.baseFrameRef.current
		local canvasY = baseFrame.CanvasPosition.Y
		local baseFrameSizeY = baseFrame.AbsoluteSize.Y
		if top < canvasY then
			baseFrame.CanvasPosition = Vector2.new(0, math.max(0, top))
		elseif bottom > canvasY + baseFrameSizeY then
			baseFrame.CanvasPosition = Vector2.new(0, math.max(0, bottom - baseFrameSizeY))
		end
	end
end

function PublishAsset:render()
	return withLocalization(function(_, localizedContent)
		return self:renderContent(nil, localizedContent)
	end)
end

function PublishAsset:renderContent(theme, localizedContent)
	theme = self.props.Stylizer

	local props = self.props

	local Size = props.Size
	local LayoutOrder = props.LayoutOrder

	local allowCopy = props.allowCopy
	local allowSelectPrivate = props.allowSelectPrivate
	local name = props.name
	local description = props.description
	local tags = props.tags
	local owner = props.owner
	local genres = props.genres
	local copyOn = props.copyOn
	local allowComment = props.allowComment
	local commentOn = props.commentOn
	local assetTypeEnum = props.assetTypeEnum
	local isAssetPublic = props.isAssetPublic

	local isAudio = assetTypeEnum == Enum.AssetType.Audio
	local isModel = assetTypeEnum == Enum.AssetType.Model
	local isPlugin = FFlagToolboxAssetConfigurationMatchPluginFlow and assetTypeEnum == Enum.AssetType.Plugin

	local onNameChange = props.onNameChange
	local onDescChange = props.onDescChange
	local onTagsChange = props.onTagsChange
	local onOwnerSelected = props.onOwnerSelected
	local onGenreSelected = props.onGenreSelected
	local onSharingChanged = props.onSharingChanged
	local toggleCopy = props.toggleCopy
	local toggleComment = props.toggleComment

	local displayOwnership = props.displayOwnership
	local displayGenre = props.displayGenre
	local displayCopy = props.displayCopy
	local displayComment = props.displayComment
	local displayAssetType = props.displayAssetType and not isPlugin
	local displayTags = props.displayTags
	local displaySharing = props.displaySharing

	local allowedAssetTypesForRelease = if isPlugin then props.allowedAssetTypesForRelease else nil
	local newAssetStatus = if isPlugin then props.newAssetStatus else nil
	local currentAssetStatus = if isPlugin then props.currentAssetStatus else nil
	local onStatusChange = if isPlugin then props.onStatusChange else nil
	local price = if isPlugin then props.price else nil
	local minPrice = if isPlugin then props.minPrice else nil
	local maxPrice = if isPlugin then props.maxPrice else nil
	local feeRate = if isPlugin then props.feeRate else nil
	local isPriceValid = if isPlugin then props.isPriceValid else nil
	local onPriceChange = if isPlugin then props.onPriceChange else nil
	local canChangeSalesStatus = if isPlugin and (AssetConfigUtil.isReadyForSale(newAssetStatus) or AssetConfigUtil.isBuyableMarketplaceAsset(assetTypeEnum)) then true else nil

	local maximumItemTagsPerItem = props.maximumItemTagsPerItem

	local isVerified
	local onClickRefreshVerficationStatus
	if FFlagToolboxAudioAssetConfigIdVerification then
		isVerified = props.isVerified
		onClickRefreshVerficationStatus = props.onClickRefreshVerficationStatus
	end

	local copyWarning
	local modelPublishWarningText
	local localization = if FFlagToolboxPrivatePublicAudioAssetConfig3 or FFlagToolboxAssetConfigurationMatchPluginFlow then props.Localization else nil
	if FFlagToolboxPrivatePublicAudioAssetConfig3 then

		if isAudio and not isAssetPublic and copyOn then
			copyWarning = localization:getText("AssetConfigCopy", "MustShare")
		end

		if isModel then
			modelPublishWarningText = localization:getText("AssetConfig", "ModelPublishWarning")
		end
	end
	
	local orderIterator = LayoutOrderIterator.new()

	local publishAssetTheme = theme.publishAsset
	local publishAssetLocalized = localizedContent.AssetConfig.PublishAsset

	local configCopyHeight = COPY_HEIGHT
	if not allowCopy then
		configCopyHeight = configCopyHeight + HEIGHT_FOR_ACCOUNT_SETTING_TEXT
	end

	local scrollingFrameProps = {
		Size = Size,
		LayoutOrder = LayoutOrder,
		[Roact.Ref] = self.baseFrameRef,
	}

	-- If the asset is a plugin, buyable on the marketplace, and the user is not whitelisted, we hide the price.
	-- The copy option will only be able to toggle between Free and OffSale.
	local showPrice = isPlugin and allowedAssetTypesForRelease[assetTypeEnum.Name] or false

	return Roact.createElement(StyledScrollingFrame,
		scrollingFrameProps,
	{
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, PADDING),
			PaddingBottom = UDim.new(0, PADDING),
			PaddingLeft = UDim.new(0, PADDING),
			PaddingRight = UDim.new(0, PADDING),
		}),

		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 5),

			[Roact.Change.AbsoluteContentSize] = self.refreshCanvas or function(rbx)
				if self.baseFrameRef.current then
					self.baseFrameRef.current.CanvasSize = UDim2.new(Size.X.Scale, Size.X.Offset, 0, rbx.AbsoluteContentSize.y + PADDING*2)
				end
			end,

			[Roact.Ref] = self.listLayoutRef,
		}),

		ModelWarningFrame = if FFlagToolboxPrivatePublicAudioAssetConfig3 and isModel then Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			LayoutOrder = orderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, Constants.FONT_SIZE_TITLE),
			Padding = {
				Bottom = BOTTOM_PADDING,
			},
			Spacing = SPACING,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			Icon = Roact.createElement("ImageLabel", {
				LayoutOrder = 1,
				BackgroundTransparency = 1,
				Image = Images.WARNING_ICON,
				ImageColor3 = publishAssetTheme.warningIconColor,
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			}),

			WarningText = Roact.createElement("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				Size = UDim2.new(1, 0, 1, 0),
				Text = modelPublishWarningText,
				TextWrapped = true,
				TextColor3 = theme.assetConfig.warningColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = Constants.FONT_SIZE_TITLE,
			}),
		}) else nil,

		Header = isPlugin and Roact.createElement(Header, {
			LayoutOrder = orderIterator:getNextOrder(),
			Title = localization:getText("AssetConfig", "PublishPluginHeader"),
		}),

		Title = Roact.createElement(ConfigTextField, {
			Title = publishAssetLocalized.Title,
			TotalHeight = NAME_HEIGHT,
			MaxCount = AssetConfigConstants.NAME_CHARACTER_LIMIT,
			TextChangeCallBack = onNameChange,
			TextContent = name,

			ErrorCallback = function(hasError)
				self.props.setFieldError(AssetConfigConstants.FIELD_NAMES.Title, hasError)
			end,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		Description = Roact.createElement(ConfigTextField, {
			Title = publishAssetLocalized.Description,
			TotalHeight = DESC_HEIGHT,
			MaxCount = AssetConfigConstants.DESCRIPTION_CHARACTER_LIMIT ,
			TextChangeCallBack = onDescChange,
			TextContent = description,

			ErrorCallback = function(hasError)
				self.props.setFieldError(AssetConfigConstants.FIELD_NAMES.Description, hasError)
			end,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		AssetType = displayAssetType and Roact.createElement(TitledFrame, {
			Title = publishAssetLocalized.AssetType,
			LayoutOrder = orderIterator:getNextOrder(),
		}, {
			Label = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				TextColor3 = publishAssetTheme.textColor,

				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_TITLE,

				Text = publishAssetLocalized.AssetTextDisplay[assetTypeEnum],
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
		}),

		Tags = displayTags and Roact.createElement(TagsComponent, {
			tags = tags,
			onTagsChange = onTagsChange,
			maximumItemTagsPerItem = maximumItemTagsPerItem,

			Title = publishAssetLocalized.Tags,
			AssetTypeEnum = assetTypeEnum,
			LayoutOrder = orderIterator:getNextOrder(),

			setDropdownHeight = function(dropdownHeight)
				self.updateMaxDropdownPosition(self.tagsRef, dropdownHeight)
			end,

			[Roact.Ref] = self.tagsRef,
		}),

		Ownership = displayOwnership and Roact.createElement(ConfigAccess, {
			Title = publishAssetLocalized.Ownership,
			owner = owner,

			TotalHeight = ACCESS_HEIGHT,

			onDropDownSelect = onOwnerSelected,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		Genre = displayGenre and Roact.createElement(ConfigGenre, {
			Title = publishAssetLocalized.Genre,
			genres = genres,

			TotalHeight = GENRE_HEIGHT,

			onDropDownSelect = onGenreSelected,

			LayoutOrder = orderIterator:getNextOrder(),

			setDropdownHeight = function(dropdownHeight)
				self.updateMaxDropdownPosition(self.genreRef, dropdownHeight)
			end,

			[Roact.Ref] = self.genreRef,
		}),

		DividerBase = displayGenre and Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = orderIterator:getNextOrder(),
			Size = UDim2.new(1, 0, 0, DIVIDER_BASE_HEIGHT),
		}, {
			Separator = Roact.createElement(Separator, {
				Position = UDim2.new(0.5, 0, 0.5, 0)
			}),
		}),
		
		Sharing = if FFlagToolboxPrivatePublicAudioAssetConfig3 and displaySharing then
			Roact.createElement(ConfigSharing, {
				AssetType = if FFlagToolboxAudioAssetConfigDisablePublicAudio then assetTypeEnum else nil,
				AllowSelectPrivate = allowSelectPrivate,
				LayoutOrder = orderIterator:getNextOrder(),
				IsIdVerificationRequired = if FFlagToolboxAudioAssetConfigIdVerification then isAudio else nil,
				IsVerified = isVerified,
				IsAssetPublic = isAssetPublic,
				OnSelected = onSharingChanged,
				OnClickRefreshVerficationStatus = onClickRefreshVerficationStatus,
			})
		else nil,

		Copy = displayCopy and Roact.createElement(ConfigCopy, {
			AssetType = if FFlagToolboxPrivatePublicAudioAssetConfig3 or FFlagToolboxAudioAssetConfigDisablePublicAudio then assetTypeEnum else nil,
			Title = if FFlagToolboxPrivatePublicAudioAssetConfig3 then publishAssetLocalized.DistributeOnMarketplace else publishAssetLocalized.Copy,

			TotalHeight = if FFlagToolboxEnablePublicAudioToggle then nil else configCopyHeight,
			CopyEnabled = if isPlugin then canChangeSalesStatus else allowCopy,
			CopyOn = copyOn,
			CopyWarning = copyWarning,

			ToggleCallback = toggleCopy,

			LayoutOrder = orderIterator:getNextOrder(),

			IsAssetPublic = if FFlagToolboxPrivatePublicAudioAssetConfig3 then isAssetPublic else nil,
			IsAudio = if FFlagToolboxPrivatePublicAudioAssetConfig3 then isAudio else nil,

			canChangeSalesStatus = canChangeSalesStatus,
			currentAssetStatus = currentAssetStatus,
			onStatusChange = onStatusChange,
		}),

		PriceComponent = showPrice and Roact.createElement(PriceComponent, {
			AssetTypeEnum = assetTypeEnum,
			AllowedAssetTypesForRelease = allowedAssetTypesForRelease,
			NewAssetStatus = newAssetStatus,

			Price = price,
			MinPrice = minPrice,
			MaxPrice = maxPrice,
			FeeRate = feeRate,
			IsPriceValid = isPriceValid,

			OnPriceChange = onPriceChange,

			LayoutOrder = orderIterator:getNextOrder(),
		}),

		Comment = displayComment and Roact.createElement(ConfigComment, {
			Title = publishAssetLocalized.Comments,

			TotalHeight = COMMENT_HEIGHT,
			CommentEnabled = allowComment,
			CommentOn = commentOn,

			ToggleCallback = toggleComment,

			LayoutOrder = orderIterator:getNextOrder(),
		}),
	})
end

local mapStateToProps
if FFlagToolboxAudioAssetConfigIdVerification then
	mapStateToProps = function(state, props)
		state = state or {}

		return {
			isVerified = state.isVerified,
		}
	end
end

local function mapDispatchToProps(dispatch)
	return {
		setFieldError = function(fieldName, hasError)
			dispatch(SetFieldError(AssetConfigConstants.SIDE_TABS.General, fieldName, hasError))
		end,
	}
end

PublishAsset = withContext({
	Localization = if FFlagToolboxPrivatePublicAudioAssetConfig3 or FFlagToolboxAssetConfigurationMatchPluginFlow then ContextServices.Localization else nil,
	Stylizer = ContextServices.Stylizer,
})(PublishAsset)

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PublishAsset)