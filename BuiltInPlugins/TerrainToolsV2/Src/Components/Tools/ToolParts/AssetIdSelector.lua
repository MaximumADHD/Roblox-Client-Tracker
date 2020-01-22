--[[
	used to select images for file import in the terrain editor
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local UILibrary = Plugin.Packages.UILibrary
local Theming = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theming.withTheme
local Localizing = require(UILibrary.Localizing)
local getLocalization = Localizing.getLocalization
local withLocalization = Localizing.withLocalization

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)

local StudioService = game:GetService("StudioService")
local HttpService = game:GetService("HttpService")

local FFlagTerrainToolsRefactor = game:GetFastFlag("TerrainToolsRefactor")

-- Constants
local PADDING = 4
local PREVIEW_HEIGHT = 60
local PREVIEW_SIZE = UDim2.new(0, PREVIEW_HEIGHT, 0, PREVIEW_HEIGHT)

local DROPDOWN_ELEMENT_SIZE = UDim2.new(1, 0, 0, PREVIEW_HEIGHT)
local DROPDOWN_ELEMENT_LABEL_POS = UDim2.new(0, PREVIEW_HEIGHT+PADDING, 0, 0)
local DROPDOWN_ELEMENT_LABEL_SIZE = UDim2.new(1, -PREVIEW_HEIGHT-PADDING, 0, PREVIEW_HEIGHT)

local AUTOCLOSEDELAY = 0.3

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
local getAssetCreationDetailsEndpoint
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
		local _, prefixEnd = baseUrl:find("%.", schemeEnd + 1)

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
		local creationDetailsResult
		success, creationDetailsResult = pcall(function()
			return HttpService:JSONDecode(response)
		end)

		if success then
			local status = creationDetailsResult[1].status

			if status == MODERATED_STATUS then
				return false, localization:getText("Warning", "Moderated")
			end

			for _, approval in pairs(APPROVED_REVIEWED_STATUSES) do
				if status == approval then
					return true
				end
			end
		end
	end

	return false, localization:getText("Warning", "AwaitingModeration")
end

local ImageAsset
if FFlagTerrainToolsRefactor then
ImageAsset = Roact.PureComponent:extend("ImageAsset")

function ImageAsset:init()
	self.onSelected = function()
		self.props.OnSelected(self.props.AssetId)
	end
end

function ImageAsset:render()
	local id = self.props.AssetId
	local name = self.props.AssetName

	return Roact.createElement("TextButton", {
		Size = DROPDOWN_ELEMENT_SIZE,
		Text = "",
		ClipsDescendants = true,

		[Roact.Event.Activated] = self.onSelected,
	}, {
		PreviewImage = Roact.createElement("ImageLabel", {
			Size = PREVIEW_SIZE,
			Image = ASSET_URL_TEXT:format(tonumber(id)),
			BorderSizePixel = 0,
		}),

		PreviewText = Roact.createElement("TextLabel",{
			Position = DROPDOWN_ELEMENT_LABEL_POS,
			Size = DROPDOWN_ELEMENT_LABEL_SIZE,
			Text = name,
			TextXAlignment = Enum.TextXAlignment.Left,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}),
	})
end
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

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
		end
	end

	-- TODO: Remove when removing FFlagTerrainToolsRefactor
	self.getLocalizedOnFocused = function(localization)
		if FFlagTerrainToolsRefactor then
			warn("AssetIdSelector.getLocalizedOnFocused should not be used when FFlagTerrainToolsRefactor is on")
		end
		return function()
			-- must reset textvalidation on use input to prevent unmoderated images
			-- from being used
			if not self.state.showImageSelection then
				if tonumber(game.GameId) == 0 then
					warn(localization:getText("Warning", "RequirePublishedForImport"))
					return
				end

				local gameAssetList = StudioService:GetResourceByCategory("Image")

				for i,v in pairs(gameAssetList) do
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

	self.onFocused = function()
		-- must reset textvalidation on use input to prevent unmoderated images
		-- from being used
		if not self.state.showImageSelection then
			if tonumber(game.GameId) == 0 then
				warn(getLocalization(self):getText("Warning", "RequirePublishedForImport"))
				return
			end

			local gameAssetList = StudioService:GetResourceByCategory("Image")

			for i, v in pairs(gameAssetList) do
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

	-- TODO: Remove when removing FFlagTerrainToolsRefactor
	self.getAssetSelectedFunc = function(localization)
		if FFlagTerrainToolsRefactor then
			warn("AssetIdSelector.getAssetSelectedFunc should not be used when FFlagTerrainToolsRefactor is on")
		end
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

	self.onAssetSelected = function(assetId)
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
			local valid, msg = isAssetModerated(assetId, getLocalization(self))
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

	self.onMouseEnter = function()
		self._lastHoverTime = tick()
	end

	self.hoverEndCloseFunc = function()
		wait(AUTOCLOSEDELAY)
		local t = tick()
		if self._lastHoverTime and t - self._lastHoverTime > AUTOCLOSEDELAY then
			self:setState({
				showImageSelection = false,
			})
		end
	end

	self.onMouseLeave = function()
		self._lastHoverTime = tick()
		self._hoverEndClose = coroutine.create(self.hoverEndCloseFunc)
		coroutine.resume(self._hoverEndClose)
	end
end

function AssetIdSelector:render()
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local size = self.props.Size
			local label = self.props.Label
			local layoutOrder = self.props.LayoutOrder

			local showImageSelection = self.state.showImageSelection
			local showImagePreview = not showImageSelection and self.state.assetId

			local text = self.state.assetId and string.format(ASSET_URL_TEXT, self.state.assetId)
			local warningMessage = self.state.warningMessage

			local imageAssets = {}
			local assetCount = 0
			if showImageSelection then
				if FFlagTerrainToolsRefactor then
					imageAssets.UIListLayout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
					})

					for id, assetName in pairs(self.gameImages) do
						assetCount = assetCount + 1
						imageAssets[assetCount] = Roact.createElement(ImageAsset, {
							AssetId = id,
							AssetName = assetName,
							OnSelected = self.onAssetSelected,
						})
					end
				else
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
					Input = Roact.createElement(LabeledTextInput, {
						Width = UDim.new(0, 136),
						Text = text,
						PlaceholderText = localization:getText("AssetIdSelector","PlaceHolderText"),
						WarningOverride = warningMessage,
						EditingDisabled = FFlagTerrainToolsRefactor and true or false,

						OnFocused = FFlagTerrainToolsRefactor and self.onFocused
							or self.getLocalizedOnFocused(localization),
					})
				}),

				ImageSelection = showImageSelection and assetCount > 0 and Roact.createElement(LabeledElementPair, {
					Size = UDim2.new(1, 0, 0, 150),
					Text = "",
					LayoutOrder = 1,
				}, {
					ScrollingFrame = Roact.createElement("ScrollingFrame", {
						Size = UDim2.new(1, 0, 1, 0),
						CanvasSize = UDim2.new(1, 0, 0, assetCount * PREVIEW_HEIGHT),
						TopImage = theme.toolRenderTheme.scrollTopImage,
						MidImage = theme.toolRenderTheme.scrollMidImage,
						BottomImage = theme.toolRenderTheme.scrollBotImage,
						LayoutOrder = 2,

						[Roact.Event.MouseEnter] = FFlagTerrainToolsRefactor and self.onMouseEnter or function ()
							self._lastHoverTime = tick()
						end,
						[Roact.Event.MouseLeave] = FFlagTerrainToolsRefactor and self.onMouseLeave or function ()
							self._lastHoverTime = tick()

							self._hoverEndClose = coroutine.create(function()
								wait(AUTOCLOSEDELAY)
								local t = tick()
								if self._lastHoverTime and t - self._lastHoverTime > AUTOCLOSEDELAY then
									self:setState({
										showImageSelection = false,
									})
								end
							end)

							coroutine.resume(self._hoverEndClose)
						end,
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
