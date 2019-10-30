--[[
	This component is responsible for showing user the preview of the to be uploaded object.

	Necessary Props:
	TotalWidth number, will be used to decide how width component is.
	OnTabSelect function, call back when a sideTab is clicked, the key will be returned.
	CurrentTab, the current tab being viewed
	ShowThumbnailImage, try to show a thumbnail image
	ShowViewport, try to show the viewport

	Optional Props:
	LayoutOrder number, will be used by the layouter to change the position of the components.
	AssetStatus, AssetConfigConstants.ASSET_STATUS, will not show status label if nil or unknown passed in
	AssetId int, will not show asset id label if nil passed in
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local SideTabs = require(AssetConfiguration.SideTabs)
local AssetThumbnailPreview = require(AssetConfiguration.AssetThumbnailPreview)
local ImagePicker = require(AssetConfiguration.ImagePicker)

local Util = Plugin.Core.Util
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local ContextGetter = require(Util.ContextGetter)
local Urls = require(Util.Urls)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local ImageWithDefault = require(Plugin.Core.Components.ImageWithDefault)

local GetAssetConfigThumbnailStatusRequest = require(Plugin.Core.Networking.Requests.GetAssetConfigThumbnailStatusRequest)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local getNetwork = ContextGetter.getNetwork

local PreviewArea = Roact.PureComponent:extend("PreviewArea")

local FFlagUseRBXThumbInToolbox = game:GetFastFlag("UseRBXThumbInToolbox") and settings():GetFFlag("EnableRbxThumbAPI")

local FFlagEnablePreviewTabSelection = settings():GetFFlag("EnablePreviewTabSelection")
local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

local THUMBNAIL_SIZE = FFlagUseRBXThumbInToolbox and Constants.ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE or 110
local TITLE_HEIGHT = 25
local THUMBNAIL_WIDTH = 150

local HORIZONTAL_PADDING = 5
local VERTICAL_PADDING = 24

local TAB_ITEM_HEIGHT = 48
local DEFAULT_PRE_TAB_HEIGHT = 400

function PreviewArea:init(props)
	self.baseFrameRef = Roact.createRef()
	self.layouterRef = Roact.createRef()
end

function PreviewArea:didMount()
	-- We only try to fetch the thumbnail status in edit flow.
	local props = self.props
	if FFlagEnablePurchasePluginFromLua2 and
		props.ScreenFlowType == AssetConfigConstants.FLOW_TYPE.EDIT_FLOW and
		props.PreviewType == AssetConfigConstants.PreviewTypes.ImagePicker then
			props.getThumbnailStatus(getNetwork(self), props.AssetId)
	end
end

function PreviewArea:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props
			local tabItems = props.TabItems
			local currentTab = props.CurrentTab
			local assetStatus = props.AssetStatus
			local assetId = props.AssetId

			local totalWidth = props.TotalWidth
			local layoutOrder = props.LayoutOrder
			local onTabSelect = props.OnTabSelect
			local chooseThumbnail = props.ChooseThumbnail
			local iconFile = props.IconFile
			local previewType = props.PreviewType
			local thumbnailStatus = props.thumbnailStatus

			local showSideTabs = (onTabSelect and tabItems and #tabItems > 1) or false

			local thunmbnailHeight = THUMBNAIL_WIDTH

			local previewAreaTheme = theme.previewArea

			local thumbnailUrl = nil
			if assetId and previewType == AssetConfigConstants.PreviewTypes.Thumbnail then
				thumbnailUrl = Urls.constructAssetThumbnailUrl(assetId, THUMBNAIL_SIZE, THUMBNAIL_SIZE)
			end

			local preTabHeight = DEFAULT_PRE_TAB_HEIGHT
			local currentLayouter = self.layouterRef.current
			if currentLayouter then
				preTabHeight = currentLayouter.AbsoluteContentSize.Y
			end

			local orderIterator = LayoutOrderIterator.new()

			return Roact.createElement("Frame", {
				Size = UDim2.new(0, totalWidth, 1, 0),

				BackgroundTransparency = 0,
				BackgroundColor3 = previewAreaTheme.backgroundColor,
				BorderSizePixel = 0,

				[Roact.Ref] = self.baseFrameRef,

				LayoutOrder = layoutOrder,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, VERTICAL_PADDING),
					PaddingBottom = UDim.new(0, VERTICAL_PADDING),
					PaddingLeft = UDim.new(0, HORIZONTAL_PADDING),
					PaddingRight = UDim.new(0, HORIZONTAL_PADDING),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 20),

					[Roact.Ref] = self.layouterRef,
				}),

				ImagePicker = previewType == AssetConfigConstants.PreviewTypes.ImagePicker and Roact.createElement(ImagePicker, {
					Size = UDim2.new(0, THUMBNAIL_WIDTH, 0, thunmbnailHeight),
					AssetId = assetId,
					ThumbnailStatus = thumbnailStatus,
					ChooseThumbnail = chooseThumbnail,
					IconFile = iconFile,
					LayoutOrder = orderIterator:getNextOrder(),
				}),

				Thumbnail = previewType == AssetConfigConstants.PreviewTypes.Thumbnail and Roact.createElement(ImageWithDefault, {
					Size = UDim2.new(0, THUMBNAIL_WIDTH, 0, thunmbnailHeight),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),

					Image = thumbnailUrl,
					defaultImage = "",
				}),

				AssetThumbnailPreview = previewType == AssetConfigConstants.PreviewTypes.ModelPreview and Roact.createElement(AssetThumbnailPreview, {
					Size = UDim2.new(0, THUMBNAIL_WIDTH, 0, thunmbnailHeight),
					ShowTitle = false,

					LayoutOrder = orderIterator:getNextOrder()
				}),

				AssetInfo = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, TITLE_HEIGHT*2),
					BackgroundTransparency = 1,
					LayoutOrder = orderIterator:getNextOrder(),
				}, {
					AssetIdLabel = (nil ~= assetId) and Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),

						BackgroundTransparency = 1,

						TextColor3 = previewAreaTheme.selectedColor,
						Text = localization:getLocalizedAssetIDText(assetId),
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						TextWrapped = false,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
					}),

					AssetStatusLabel = (nil ~= assetStatus and AssetConfigConstants.ASSET_STATUS.Unknown ~= assetStatus) and Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
						Position = UDim2.new(0, 0, 0, TITLE_HEIGHT),

						BackgroundTransparency = 1,

						TextColor3 = previewAreaTheme.textColor,
						Text = localization:getLocalizedStatusText(localizedContent.Status[assetStatus]),
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						TextWrapped = false,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Top,
					}),
				}),

				SideTabs = (not FFlagEnablePreviewTabSelection) and showSideTabs and Roact.createElement(SideTabs, {
					Size = UDim2.new(0, THUMBNAIL_WIDTH, 1, -preTabHeight),
					ItemHeight = TAB_ITEM_HEIGHT,
					Items = tabItems,
					CurrentTab = currentTab,
					ItemClickCallBack = onTabSelect,
					SelectParentRef = self.baseFrameRef,
					LayoutOrder = orderIterator:getNextOrder()
				}),

				-- We need to the base frame here for selction bar so we can ignore the padding
				TabArea = FFlagEnablePreviewTabSelection and showSideTabs and Roact.createElement("Frame", {
					Size = UDim2.new(1, 10, 1, -thunmbnailHeight -TITLE_HEIGHT*2),

					BackgroundTransparency = 1,

					LayoutOrder = orderIterator:getNextOrder(),
				}, {
					SideTabs = showSideTabs and Roact.createElement(SideTabs, {
						Size = UDim2.new(1, 0, 1, 0),
						ItemHeight = TAB_ITEM_HEIGHT,
						Items = tabItems,
						CurrentTab = currentTab,
						ItemClickCallBack = onTabSelect,
						SelectParentRef = self.baseFrameRef,
					})
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		thumbnailStatus = state.thumbnailStatus,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getThumbnailStatus = function(networkInterface, assetId)
			dispatch(GetAssetConfigThumbnailStatusRequest(networkInterface, assetId))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(PreviewArea)