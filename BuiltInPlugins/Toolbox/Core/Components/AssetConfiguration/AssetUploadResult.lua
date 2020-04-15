--[[
	AssetUploadResult - displays either a success or error message based on the state of the store's uploadSucceeded

	Necessary Props:
		Size UDim2, the size of the window
		onClose callback, called when the user presses the "cancel" button
]]

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")
local FFlagFixAssetConfigIcon = game:GetFastFlag("FixAssetConfigIcon")
local FFlagShowAssetConfigReasons = game:GetFastFlag("ShowAssetConfigReasons")
local FFlagFixAssetUploadSuccssMessage = game:DefineFastFlag("FixAssetUploadSuccssMessage", false)
local FFlagAddCopyIDToResultPage = game:DefineFastFlag("AddCopyIDToResultPage", false)

local ContentProvider = game:GetService("ContentProvider")
local GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local PreviewTypes = AssetConfigConstants.PreviewTypes
local ContextHelper = require(Util.ContextHelper)
local AssetConfigUtil = require(Util.AssetConfigUtil)

local withTheme = ContextHelper.withTheme

local Components = Plugin.Core.Components
local NavButton = require(Components.NavButton)
local AssetConfiguration = Components.AssetConfiguration
local AssetThumbnailPreview = require(AssetConfiguration.AssetThumbnailPreview)
local ImagePicker = require(AssetConfiguration.ImagePicker)
local ReasonFrame = require(AssetConfiguration.ReasonFrame)
local CopyID = require(AssetConfiguration.CopyID)

local TITLE_WIDTH = 400
local TITLE_HEIGHT = 36

local REASON_WIDTH = 400
local REASON_HEIGHT = 72
local REASON_PADDING = 13

local PREVIEW_PADDING = 48
local PREVIEW_SIZE = 150
local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24

local FOOTER_HEIGHT = 62

local BUTTON_WIDTH = 120
local BUTTON_HEIGHT = 32

local COPY_ID_Y_POS = 240

local RESULT_Y_POS = 279

local SUCCESS_PADDING = 12
local SUCCESS_HEIGHT = 24

local AssetUploadResult = Roact.PureComponent:extend("AssetUploadResult")

function AssetUploadResult:init(props)
	self.state = {
		isLoading = true,
	}
end

local function getResultUrl(flowType, assetId, assetName, assetTypeEnum)
	local url
	if flowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW then
		-- When we upload asset, depending on the assetType, it could go
		-- to catalog or marketplace.
		if AssetConfigUtil.isCatalogAsset(assetTypeEnum) then
			url = ContentProvider.BaseUrl .. "catalog/" .. assetId
		else
			local baseUrl = ContentProvider.BaseUrl
			-- TODO: Replace "NewAsset" once we moved assetName into the store.
			url = string.format("%slibrary/%s/%s", baseUrl, HttpService:urlEncode(assetId), "NewAsset")
		end
	else -- Defualt to edit flow
		if AssetConfigUtil.isCatalogAsset(assetTypeEnum) then
			url = ContentProvider.BaseUrl .. "catalog/" .. assetId
		else
			-- TODO: In edit flow, the assetName should be the same with current name.
			-- We can do that once we put all the current asset state in the reducer first.
			local baseUrl = ContentProvider.BaseUrl
			url = string.format("%slibrary/%s/%s", baseUrl, HttpService:urlEncode(assetId), assetName)
		end
	end
	return url
end

local function getReasonArray(networkTable)
	local reasons = {}
	for name, networkErrorAction in pairs(networkTable) do
		table.insert(reasons, networkErrorAction)
	end
	return reasons
end

function AssetUploadResult:render()
	return withTheme(function(theme)
		local props = self.props

		local isUploadFlow = props.screenFlowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW
		local showModeration
		if FFlagFixAssetUploadSuccssMessage then
			if FFlagEnablePurchasePluginFromLua2 then
				showModeration = isUploadFlow and (AssetConfigUtil.isCatalogAsset(props.assetTypeEnum))
			else
				showModeration = isUploadFlow and props.assetTypeEnum ~= Enum.AssetType.Model
			end
		else
			showModeration = isUploadFlow
		end

		local url
		if props.uploadSucceeded then
			url = getResultUrl(
				props.screenFlowType,
				props.assetId or 0,
				props.assetConfigData and props.assetConfigData.Name or "Asset",
				props.assetTypeEnum
			)
		end

		local previewType = AssetConfigConstants.PreviewTypes.Thumbnail
		if FFlagEnablePurchasePluginFromLua2 then
			previewType = AssetConfigUtil.getPreviewType(props.assetTypeEnum, props.instances)
		end

		local showViewport = previewType == PreviewTypes.ModelPreview
		local showThumbnail
		if FFlagFixAssetConfigIcon then
			showThumbnail = previewType == PreviewTypes.Thumbnail
				or previewType == PreviewTypes.ImagePicker
		else
			showThumbnail = previewType == PreviewTypes.Thumbnail
		end

		local reasons = getReasonArray(props.networkTable)
		local showSuccess = props.uploadSucceeded
		local showFail = not showSuccess
		local showReasons = false
		if FFlagShowAssetConfigReasons then
			showSuccess = true
			showFail = false
			showReasons = #reasons > 1
		end

		return Roact.createElement("Frame", {
			BackgroundColor3 = theme.uploadResult.background,
			BackgroundTransparency = 0,
			BorderSizePixel = 0,
			Size = props.Size,
		}, {
			ModelPreview = showViewport and Roact.createElement(AssetThumbnailPreview, {
				titleHeight = PREVIEW_TITLE_HEIGHT,
				titlePadding = PREVIEW_TITLE_PADDING,
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
				),
			}),

			ThumbnailPreview = showThumbnail and Roact.createElement("ImageLabel", {
				Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
				Size = UDim2.new(
					0, PREVIEW_SIZE,
					0, PREVIEW_SIZE
				),
				Image = AssetConfigUtil.getResultThumbnail(props.assetId, props.iconFile),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),

			CopyID = FFlagAddCopyIDToResultPage and showSuccess and Roact.createElement(CopyID, {
				YPos = COPY_ID_Y_POS,
				AssetId = props.assetId,
			}),

			LoadingResultSuccess = showSuccess and Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, RESULT_Y_POS),
				Size = UDim2.new(1, 0, 1, -RESULT_Y_POS),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5),
				}),

				Title = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, -TITLE_WIDTH/2, 0, 0),
					Size = UDim2.new(0, TITLE_WIDTH, 0, TITLE_HEIGHT),
					Text = props.uploadSucceeded and "Successfully submitted!" or "Submission failed",
					Font = Constants.FONT,
					TextColor3 = FFlagFixAssetUploadSuccssMessage and theme.uploadResult.greenText or theme.uploadResult.redText,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					LayoutOrder = 1,
				}),

				ReasonFrame = showReasons and Roact.createElement(ReasonFrame, {
					Position = UDim2.new(0.5, -REASON_WIDTH/2, 0, TITLE_HEIGHT + REASON_PADDING),
					Size = UDim2.new(0, REASON_WIDTH, 0, REASON_HEIGHT),
					Reasons = reasons,
					LayoutOrder = 2,
				}),

				Rows = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, REASON_WIDTH, 0, REASON_HEIGHT),
					Position = UDim2.new(0.5, -REASON_WIDTH/2, 0, TITLE_HEIGHT + REASON_PADDING),
					LayoutOrder = 3,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, SUCCESS_PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					ModerationMessage = showModeration and Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Font = Constants.FONT,
						Text = "Asset has been added to moderation queue. Learn more",
						TextColor3 = theme.uploadResult.text,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						Size = UDim2.new(1, 0, 0, SUCCESS_HEIGHT),
						TextYAlignment = Enum.TextYAlignment.Center,
						LayoutOrder = 0,
					}),
					ToolboxText = Roact.createElement("TextLabel", {
						BackgroundTransparency = 1,
						Font = Constants.FONT,
						Text = "You may find your asset in Toolbox or on web:",
						TextColor3 = theme.uploadResult.text,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						Size = UDim2.new(1, 0, 0, SUCCESS_HEIGHT),
						TextYAlignment = Enum.TextYAlignment.Center,
						LayoutOrder = 1,
					}),
					ToolboxLink = Roact.createElement("TextButton", {
						BackgroundTransparency = 1,
						Font = Constants.FONT,
						Text = url,
						TextColor3 = theme.uploadResult.link,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						Size = UDim2.new(1, 0, 0, SUCCESS_HEIGHT),
						TextYAlignment = Enum.TextYAlignment.Center,
						LayoutOrder = 2,
						[Roact.Event.Activated] = function()
							GuiService:OpenBrowserWindow(url)
						end,
					}),
				})
			}),

			-- Remove me along with FFlagShowAssetConfigReasons
			LoadingResultFailure = showFail and Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, RESULT_Y_POS),
				Size = UDim2.new(1, 0, 1, -RESULT_Y_POS),
				BackgroundTransparency = 1,
			}, {
				Title = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Position = UDim2.new(0.5, -TITLE_WIDTH/2, 0, 0),
					Size = UDim2.new(0, TITLE_WIDTH, 0, TITLE_HEIGHT),
					Text = "Submission failed",
					TextColor3 = theme.uploadResult.text,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),

				Reason = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Font = Constants.FONT,
					Position = UDim2.new(0.5, -REASON_WIDTH/2, 0, TITLE_HEIGHT + REASON_PADDING),
					Size = UDim2.new(0, REASON_WIDTH, 0, REASON_HEIGHT),
					Text = props.networkError.responseBody,
					TextWrapped = true,
					TextColor3 = theme.uploadResult.text,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Top,
				}),
			}),

			Footer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 0, 1, -FOOTER_HEIGHT),
				Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
			}, {
				CloseButton = Roact.createElement(NavButton, {
					onClick = props.onClose,
					titleText = "Close",
					LayoutOrder = 0,
					Position = UDim2.new(0.5, -BUTTON_WIDTH/2, 0.5, -BUTTON_HEIGHT/2),
					Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				}),
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local stateToProps = {
		assetId = state.assetId,
		uploadSucceeded = state.uploadSucceeded,
		instances = state.instances,
		networkError = state.networkError,
		screenFlowType = state.screenFlowType,
		assetConfigData = state.assetConfigData,
		assetTypeEnum = state.assetTypeEnum,
		thumbnailStatus = state.thumbnailStatus,
		-- Will be using this to generate reasons for generating a list of reasons to render.
		networkTable = state.networkTable or {},
	}

	if FFlagFixAssetConfigIcon then
		stateToProps.iconFile = state.iconFile
	end

	return stateToProps
end

local function mapDispatchToProps(dispatch)
	return {}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetUploadResult)