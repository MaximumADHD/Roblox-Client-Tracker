--[[
	used to select images for file import in the terrain editor
]]

game:DefineFastFlag("TerrainToolsOnlyImportInEditMode", false)

local FFlagTerrainToolsRefactorAssetIdSelector2 = game:GetFastFlag("TerrainToolsRefactorAssetIdSelector2")
local FFlagTerrainToolsImportImproveColorMapToggle = game:GetFastFlag("TerrainToolsImportImproveColorMapToggle")
local FFlagTerrainToolsOnlyImportInEditMode = game:GetFastFlag("TerrainToolsOnlyImportInEditMode")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = require(Plugin.Packages.UILibrary)

local Localizing = UILibrary.Localizing
local getLocalization = Localizing.getLocalization
local withLocalization = Localizing.withLocalization

local Theming = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theming.withTheme

local ToolParts = script.Parent
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)

local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local StudioService = game:GetService("StudioService")

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
local AWAITING_MODERATION_STATUS = "ReviewPending"
local MODERATED_STATUS = "Moderated"

local AssetStatus = {
	Fetching = "Fetching",
	AwaitingModeration = "AwaitingModeration",
	Moderated = "Moderated",
	UnknownAssetStatusError = "UnknownAssetStatusError",
	Valid = "Valid",
}

local getAssetCreationDetailsEndpoint
if FFlagTerrainToolsRefactorAssetIdSelector2 then
	getAssetCreationDetailsEndpoint = (function()
		local ContentProvider = game:GetService("ContentProvider")
		local baseUrl = ContentProvider.BaseUrl
		if baseUrl:sub(#baseUrl) ~= "/" then
			baseUrl = baseUrl .. "/"
		end

		-- parse out scheme (http, https)
		local _, schemeEnd = baseUrl:find("://")

		-- parse out the prefix (www)
		local _, prefixEnd = baseUrl:find("%.", schemeEnd + 1)

		-- parse out the domain
		local baseDomain = baseUrl:sub(prefixEnd + 1)

		local baseConfigUrl = string.format(BASE_CONFIG_URL, baseDomain)

		return baseConfigUrl .. GET_ASSETS_CREATION_DETAILS
	end)()
end

local function getIsAssetValid(assetId, resolve)
	spawn(function()
		local success, response = pcall(function()
			local payload = HttpService:JSONEncode({
				assetIds = {assetId},
			})
			return game:HttpPostAsync(getAssetCreationDetailsEndpoint, payload, "application/json")
		end)

		if not success then
			return resolve(assetId, false, AssetStatus.UnknownAssetStatusError)
		end

		-- creationDetailsResult should be { [number] : { [string] : Variant } }
		-- Array of structs for each asset in the request
		-- We only requested one asset so just use creationDetailsResult[1]
		local creationDetailsResult
		success, creationDetailsResult = pcall(function()
			return HttpService:JSONDecode(response)
		end)

		if not success or type(creationDetailsResult) ~= "table" or type(creationDetailsResult[1]) ~= "table" then
			return resolve(assetId, false, AssetStatus.UnknownAssetStatusError)
		end

		local status = creationDetailsResult[1].status

		if status == AWAITING_MODERATION_STATUS then
			return resolve(assetId, false, AssetStatus.AwaitingModeration)
		end

		if status == MODERATED_STATUS then
			return resolve(assetId, false, AssetStatus.Moderated)
		end

		for _, approval in ipairs(APPROVED_REVIEWED_STATUSES) do
			if status == approval then
				return resolve(assetId, true, AssetStatus.Valid)
			end
		end

		return resolve(assetId, false, AssetStatus.UnknownAssetStatusError)
	end)
end

local function isAssetModerated(assetId, localization)
	assert(not FFlagTerrainToolsRefactorAssetIdSelector2,
		"AssetIdSelector isAssetModerated() should not be used when FFlagTerrainToolsRefactorAssetIdSelector2 is on")
	if not getAssetCreationDetailsEndpoint then
		local ContentProvider = game:GetService("ContentProvider")
		local baseUrl = ContentProvider.BaseUrl
		if baseUrl:sub(#baseUrl) ~= "/" then
			baseUrl = baseUrl .. "/"
		end

		-- parse out scheme (http, https)
		local _, schemeEnd = baseUrl:find("://")

		-- parse out the prefix (www)
		local _, prefixEnd = baseUrl:find("%.", schemeEnd + 1)

		-- parse out the domain
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

local function isPlacePublished()
	return tonumber(game.GameId) > 0
end

local ImageAsset = Roact.PureComponent:extend("ImageAsset")

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

local AssetIdSelector = Roact.PureComponent:extend(script.Name)

function AssetIdSelector:init()
	self.mainFrameRef = Roact.createRef()
	self.layoutRef = Roact.createRef()

	self.gameImages = {}

	if FFlagTerrainToolsRefactorAssetIdSelector2 then
		self.assetStatusCache = {}

		self.state = {
			showImageSelection = false,

			assetId = nil,
			assetStatus = nil,
		}

		self.updateGameImages = function()
			self.gameImages = StudioService:GetResourceByCategory("Image")
		end

		self.handleGetIsAssetValidResponse = function(assetId, valid, status)
			self.assetStatusCache[assetId] = status

			if self.props.OnAssetIdValidated and valid then
				local assetUrl = ASSET_URL_TEXT:format(assetId)
				self.props.OnAssetIdValidated(assetUrl)
			end

			-- If the response we're handling is for the current asset we're displaying
			-- Then we want to rerender with the newly fetched status
			if self.state.assetId == assetId then
				self:setState({
					assetStatus = status,
				})
			end
		end

		self.maybeGetAssetStatus = function(assetId)
			local currentStatus = self.assetStatusCache[assetId]
			-- Already getting the asset, or we've already validated the asset so no need to do it again
			if currentStatus == AssetStatus.Fetching or currentStatus == AssetStatus.Valid then
				return
			end

			self.assetStatusCache[assetId] = AssetStatus.Fetching
			getIsAssetValid(assetId, self.handleGetIsAssetValidResponse)
		end

		self.onFocused = function()
			if self.state.showImageSelection then
				return
			end

			if not isPlacePublished() then
				warn(getLocalization(self):getText("Warning", "RequirePublishedForImport"))
				return
			end

			if FFlagTerrainToolsOnlyImportInEditMode then
				if not RunService:IsEdit() then
					warn(getLocalization(self):getText("Warning", "RequireEditModeForImport"))
					return
				end
			end

			self.updateGameImages()

			self:setState({
				showImageSelection = true,
			})
		end

		self.onAssetSelected = function(assetId)
			self.maybeGetAssetStatus(assetId)
			self:setState({
				showImageSelection = false,
				assetId = assetId,
				-- assetStatusCache[assetId] could be nil if we currently have no info for the asset
				-- It's unlikely as maybeGetAssetStatus() should set the state to Fetching
				-- But as a fallback, set assetStatus to nil as well
				assetStatus = self.assetStatusCache[assetId] or Roact.None,
			})
		end
	else
		self.state = {
			showImageSelection = false,
			assetId = nil,
			assetValidated = false,
		}

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
	end

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
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

if FFlagTerrainToolsRefactorAssetIdSelector2 then
	function AssetIdSelector:didMount()
		if FFlagTerrainToolsOnlyImportInEditMode then
			if isPlacePublished() and RunService:IsEdit() then
				self.updateGameImages()
			end
		else
			if isPlacePublished() then
				self.updateGameImages()
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

			local isVisible
			if FFlagTerrainToolsImportImproveColorMapToggle then
				isVisible = not self.props.Disabled
			else
				isVisible = true
			end

			local showImageSelection = self.state.showImageSelection
			local showImagePreview = not showImageSelection and self.state.assetId

			local text = self.state.assetId and string.format(ASSET_URL_TEXT, self.state.assetId)

			local warningMessageToDisplay
			if FFlagTerrainToolsRefactorAssetIdSelector2 then
				local assetStatus = self.state.assetStatus
				if assetStatus and assetStatus ~= AssetStatus.Fetching and assetStatus ~= AssetStatus.Valid then
					warningMessageToDisplay = localization:getText("Warning", assetStatus)
				end
			else
				warningMessageToDisplay = self.state.warningMessage
			end

			local imageAssets = {}
			local assetCount = 0
			if showImageSelection then
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
			end

			return Roact.createElement("Frame",{
				Size = size,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
				[Roact.Ref] = self.mainFrameRef,
				Visible = isVisible,
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
						PlaceholderText = localization:getText("AssetIdSelector", "PlaceHolderText"),
						WarningOverride = warningMessageToDisplay,
						EditingDisabled = true,
						OnFocused = self.onFocused,
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

						[Roact.Event.MouseEnter] = self.onMouseEnter,
						[Roact.Event.MouseLeave] = self.onMouseLeave,
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
