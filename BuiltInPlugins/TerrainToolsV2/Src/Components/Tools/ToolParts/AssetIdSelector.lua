--[[
	used to select images for file import in the terrain editor
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = Plugin.Packages.UILibrary
local Theming = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theming.withTheme
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)

local StudioService = game:GetService("StudioService")
local HttpService = game:GetService("HttpService")
local TextService = game:GetService("TextService")

-- Constants
local PADDING = 4
local TEXTBOX_WIDTH = 120 - PADDING
local TEXTBOX_HEIGHT = 22 -- does not include padding
local PREVIEW_HEIGHT = 60
local PREVIEW_SIZE = UDim2.new(0, PREVIEW_HEIGHT, 0, PREVIEW_HEIGHT)
local TEXT_BUTTON_SIZE = UDim2.new(1, 0, 0,  22)

local DROPDOWN_OPEN_SIZE = UDim2.new(1, 0, 0, 200)
local DROPDOWN_ELEMENT_SIZE = UDim2.new(1, 0, 0, PREVIEW_HEIGHT)
local DROPDOWN_ELEMENT_LABEL_POS = UDim2.new(0, PREVIEW_HEIGHT+PADDING, 0, 0)
local DROPDOWN_ELEMENT_LABEL_SIZE = UDim2.new(1, -PREVIEW_HEIGHT-PADDING, 0, PREVIEW_HEIGHT)
local PADDING = 4
local TEXT_LEFT_PADDING = 4

local FONT = Enum.Font.SourceSans
local FONT_SIZE = 14
local BORDER_COLOR = Color3.fromRGB(182, 182, 182)
local BORDER_COLOR_DARK = Color3.fromRGB(26, 26, 26)
local SELECTED_BORDER_COLOR = Color3.fromRGB(0, 162, 255)
local WARNING_RED = Color3.fromRGB(216, 104, 104)

local ASSET_ID_PATTERN = "rbxassetid://(%d+)"
local ASSET_URL_PATTERN = "rbxassetid://%d+"
local ASSET_URL_TEXT = "rbxassetid://%d"
local BASE_CONFIG_URL = "https://itemconfiguration.%s"
local GET_ASSETS_CREATION_DETAILS = "v1/creations/get-asset-details"
local APPROVED_REVIEWED_STATUSES = {
	"ReviewApproved",
	"OnSale",
	"OffSale",
	"DelayedRelease",
}
local MODERATED_STATUS = "Moderated"

-- move to thunk for cleaner code
local function isAssetModerated(assetId, localization)
	if not getAssetCreationDetailsEndpoint then
		local ContentProvider = game:GetService("ContentProvider")
		local baseUrl = ContentProvider.BaseUrl
		if baseUrl:sub(#baseUrl) ~= "/" then
			baseUrl = baseUrl .. "/"
		end

		-- parse out scheme (http, https)
		local _, schemeEnd = baseUrl:find("://")

		-- parse out the prefix (www, kyle, ying, etc.)
		local prefixIndex, prefixEnd = baseUrl:find("%.", schemeEnd + 1)

		-- parse out the domain (roblox.com/, sitetest1.robloxlabs.com/, etc.)
		local baseDomain = baseUrl:sub(prefixEnd + 1)

		local baseConfigUrl = string.format(BASE_CONFIG_URL, baseDomain)

		getAssetCreationDetailsEndpoint	= baseConfigUrl .. GET_ASSETS_CREATION_DETAILS
	end

	local success, response = pcall(function()
		local payload = HttpService:JSONEncode({ assetIds = {assetId} })
		return game:HttpPostAsync(getAssetCreationDetailsEndpoint, payload, "application/json")
	end)

	if success then
		success, creationDetailsResult = pcall(function()
			return HttpService:JSONDecode(response)
		end)

		if success then
			local status = creationDetailsResult[1].status

			if status == MODERATED_STATUS then
				return false, localization:getText("AssetIdSelector", "Moderated")
			end

			for _, approval in pairs(APPROVED_REVIEWED_STATUSES) do
				if status == approval then
					return true
				end
			end
		end
	end

	return false, localization:getText("AssetIdSelector", "AwaitingModeration")
end

local AssetIdSelector = Roact.PureComponent:extend(script.Name)

function AssetIdSelector:init()
	self.mainFrameRef = Roact.createRef()
	self.layoutRef	= Roact.createRef()

	self.gameImages = {}

	self.state = {
		showImageSelection = false,
		assetId = nil,
		assetValidated = false,
	}

	-- this is generally not adviced, but until we can access the localization tables
	-- without creating a component this is the only way.

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
		end
	end


	self.getLocalizedOnFocused = function(localization)
		return function()
			-- must reset textvalidation on use input to prevent unmoderated images
			-- from being used
			if not self.state.showImageSelection then
				if tonumber(game.GameId) == 0 then
					warn(localization:getText("AssetIdSelector", "RequirePublishedForImport"))
					return
				end

				local gameAssetList = StudioService:GetResourceByCategory("Image")

				for i,v in pairs(gameAssetList) do
					assetFound = true
					if not self.gameImages[i] then
						self.gameImages[i] = v
					end
				end

				self:setState({
					showImageSelection = true,
					warningMessage = "",
				})
			end
		end
	end

	self.getAssetSelectedFunc = function(localization)
		return function(assetId)
			if self.state.assetId == assetId then
				self:setState({
					showImageSelection = false,
				})
				return
			end
			self.textValidated = false
			self:setState({
				showImageSelection = false,
				assetId = assetId,
			})

			if not self.textValidated then
				local valid, msg = isAssetModerated(assetId, localization)
				self.textValidated = valid
				if self.props.OnAssetIdValidated and valid then
					local assetUrl = string.format(ASSET_URL_TEXT, assetId)
					self.props.OnAssetIdValidated(assetUrl)
				end

				if msg then
					self:setState({
						warningMessage = msg
					})
				end
			end
		end
	end
end

function AssetIdSelector:render()
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local size = self.props.Size
			local label = self.props.Label
			local layoutOrder = self.props.LayoutOrder

			local onAssetIdValidated = self.props.OnAssetIdValidated

			local showImageSelection = self.state.showImageSelection
			local showImagePreview = not showImageSelection and self.state.assetId

			local text = self.state.assetId and string.format(ASSET_URL_TEXT, self.state.assetId)
			local warningMessage = self.state.warningMessage

			local imageAssets = {}
			local assetCount = 0
			if showImageSelection then
				imageAssets["UIListLayout"] = Roact.createElement("UIListLayout")
				local assetSelected = self.getAssetSelectedFunc(localization)
				for id, assetName in pairs(self.gameImages) do
					assetCount = assetCount + 1
					local assetId = tostring(id)
					imageAssets[assetId] = Roact.createElement("TextButton", {
						Size = DROPDOWN_ELEMENT_SIZE,
						Name = assetId,
						Text = "",
						ClipsDescendants = true,

						[Roact.Event.Activated] = function()
							assetSelected(assetId)
						end,
					}, {
						PreviewImage = Roact.createElement("ImageLabel", {
							Size = PREVIEW_SIZE,
							Image = string.format(ASSET_URL_TEXT, tonumber(id)),
							BorderSizePixel = 0,
						}),
						PreviewText = Roact.createElement("TextLabel",{
							Position = DROPDOWN_ELEMENT_LABEL_POS,
							Size = DROPDOWN_ELEMENT_LABEL_SIZE,
							Text = assetName,
							TextXAlignment = Enum.TextXAlignment.Left,
							BorderSizePixel = 0,
							BackgroundTransparency = 1,
						}),
					})
				end
			end

			return Roact.createElement("Frame",{
				Size = size,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
				[Roact.Ref] = self.mainFrameRef,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4),
					[Roact.Ref] = self.layoutRef,
					[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
				}),

				TextInput = Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 22),
					Text = label,
					LayoutOrder = 1,
					SizeToContent = true,
				}, {
					Roact.createElement(LabeledTextInput, {
						Width = UDim.new(0, 136),
						Text = text,
						PlaceholderText = localization:getText("AssetIdSelector","PlaceHolderText"),
						WarningOverride = warningMessage,

						OnFocused = self.getLocalizedOnFocused(localization),
					})
				}),

				ImageSelection = showImageSelection and assetCount > 0 and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 150),
					Text = "",
					LayoutOrder = 1,
				},{
					Roact.createElement("ScrollingFrame", {
						Size = UDim2.new(1, 0, 1, 0),
						CanvasSize = UDim2.new(1, 0, 0, assetCount * PREVIEW_HEIGHT),
						TopImage = theme.toolRenderTheme.scrollTopImage,
						MidImage = theme.toolRenderTheme.scrollTMidImage,
						BottomImage = theme.toolRenderTheme.scrollBotImage,
						LayoutOrder = 2,
					}, imageAssets),
				}),

				ImagePreview = showImagePreview and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, PREVIEW_HEIGHT),
					Text = "",
					LayoutOrder = 3,
				},{
					Image = Roact.createElement("ImageLabel", {
						Size = PREVIEW_SIZE,
						Image = text,
					})
				}),
			})
		end)
	end)
end

return AssetIdSelector
