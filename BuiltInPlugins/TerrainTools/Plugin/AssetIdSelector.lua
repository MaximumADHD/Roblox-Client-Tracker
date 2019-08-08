--[[
	Author - 24RightAngles

	used to select images for file import in the terrain editor
]]

local GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)

local StudioService = game:GetService("StudioService")
local HttpService = game:GetService("HttpService")
local TextService = game:GetService("TextService")

local LIGHT_IMAGE = "rbxasset://textures/TerrainTools/import_select_image.png"
local DARK_IMAGE = "rbxasset://textures/TerrainTools/import_selectImg_dark.png"
local EDIT_IMAGE = "rbxasset://textures/TerrainTools/import_edit.png"
local DELETE_IMAGE = "rbxasset://textures/TerrainTools/import_delete.png"


local FIRST_COLUMN_WIDTH = 90
local FIRST_COLUMN_OFFSET = GuiUtilities.StandardLineLabelLeftMargin
local SECOND_COLUMN_OFFSET = FIRST_COLUMN_WIDTH + FIRST_COLUMN_OFFSET
local PADDING = 4


local TEXTBOX_WIDTH = 120 - PADDING
local TEXTBOX_HEIGHT = 22 -- does not include padding
local PREVIEW_HEIGHT = 60
local TEXT_BUTTON_SIZE = UDim2.new(1, 0, 0,  22)
local FRAME_SIZE = UDim2.new(0, TEXTBOX_WIDTH + PADDING, 0, TEXTBOX_HEIGHT)
local PREVIEW_SIZE = UDim2.new(0, PREVIEW_HEIGHT, 0, PREVIEW_HEIGHT)
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

local PLACEHOLDER_TEXT = "Asset ID"

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

local AWAITING_MODERATION = "Awaiting asset moderation."
local MODERATED_ERROR_MESSAGE = "Asset has been moderated."

local getAssetCreationDetailsEndpoint = nil

-- there is only one selector that is open at any given time
-- so if we have this script running well keep a copy here and
-- set it's parent to whichever assetidselector is current focused
local gameImages = {}
local activeCallback = nil
local globalAssetListSelector = Instance.new("ScrollingFrame")
globalAssetListSelector.Position = UDim2.new(.2, 0, 0, TEXTBOX_HEIGHT)
globalAssetListSelector.Size = UDim2.new(.7, 0, 0, 150)
globalAssetListSelector.ZIndex = 5

local assetSelectorUILayout = Instance.new("UIListLayout")
assetSelectorUILayout.Parent = globalAssetListSelector

assetSelectorUILayout:GetPropertyChangedSignal("AbsoluteContentSize"):connect(function()
	globalAssetListSelector.CanvasSize = UDim2.new(0,assetSelectorUILayout.AbsoluteContentSize.X, 0, assetSelectorUILayout.AbsoluteContentSize.Y)
end)

local function updateAssetList(newParent, callback)
	local gameAssetList = StudioService:GetResourceByCategory("Image")
	for i,v in pairs(gameAssetList) do
		if not gameImages[i] then
			local newButton = Instance.new("TextButton")
			newButton.Size = DROPDOWN_ELEMENT_SIZE
			newButton.Name = i
			newButton.Text = ""
			newButton.ClipsDescendants = true
			newButton.ZIndex = 5

			newButton.Activated:Connect(function()
				if activeCallback then
					activeCallback(tonumber(newButton.Name))
				end
			end)

			local buttonImage = Instance.new("ImageLabel")
			buttonImage.Size = PREVIEW_SIZE
			buttonImage.Image = string.format(ASSET_URL_TEXT, tonumber(i))
			buttonImage.ZIndex = 5
			buttonImage.BorderSizePixel = 0
			buttonImage.Parent = newButton

			local buttonLabel = Instance.new("TextLabel")
			buttonLabel.Text = v
			buttonLabel.TextXAlignment = Enum.TextXAlignment.Left
			buttonLabel.Position = DROPDOWN_ELEMENT_LABEL_POS
			buttonLabel.Size = DROPDOWN_ELEMENT_LABEL_SIZE
			buttonLabel.ZIndex = 5
			buttonLabel.BorderSizePixel = 0
			buttonLabel.Parent = newButton

			gameImages[i] = newButton
			newButton.Parent = globalAssetListSelector
		end
	end

	if #gameImages > 0 then
		globalAssetListSelector.Parent = newParent
		activeCallback = callback
	end
end

local function isAssetModerated(assetId)
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
				return false, MODERATED_ERROR_MESSAGE
			end

			for _, approval in pairs(APPROVED_REVIEWED_STATUSES) do
				if status == approval then
					return true
				end
			end
		end
	end

	return false, AWAITING_MODERATION
end

AssetIdSelector = {}
AssetIdSelector.__index = AssetIdSelector

function AssetIdSelector.new(categoryLabel)
	local self = {}
	setmetatable(self, AssetIdSelector)

	local initTheme = settings().Studio["UI Theme"]

	self._selectedCallback = nil
	self._validated = true
	self._imagePreview = nil
	self._warning = nil

	self._frame = Instance.new("Frame")
	self._frame.Size = UDim2.new(1, 0, 0, TEXTBOX_HEIGHT)
	self._frame.BackgroundTransparency = 1


	local label = Instance.new("TextLabel")
	label.Text = categoryLabel or ""
	label.Font = FONT
	label.TextSize = FONT_SIZE
	label.TextXAlignment = Enum.TextXAlignment.Left
	label.Size = UDim2.new(0, FIRST_COLUMN_WIDTH, 0, TEXTBOX_HEIGHT)
	label.Position = UDim2.new(0, FIRST_COLUMN_OFFSET, 0, 0)
	label.BorderSizePixel = 0
	label.BackgroundTransparency = 1
	label.Parent = self._frame
	self._label  = label

	self._rightFrame = Instance.new("Frame")
	self._rightFrame.Size = UDim2.new(1, -SECOND_COLUMN_OFFSET, 0, 0)
	self._rightFrame.Position = UDim2.new(0, SECOND_COLUMN_OFFSET, 0, 0)
	self._rightFrame.BackgroundTransparency = 1

	self._rightFrame.Parent = self._frame

	self._textFrame = Instance.new("Frame")
	self._textFrame.Size = UDim2.new(0, TEXTBOX_WIDTH, 0, TEXTBOX_HEIGHT)
	self._textFrame.BorderColor3 = initTheme == Enum.UITheme.Dark and BORDER_COLOR_DARK or BORDER_COLOR
	self._textFrame.LayoutOrder = 1
	self._textFrame.ClipsDescendants = true
	self._textFrame.Parent = self._rightFrame

	-- when moving to roact, it may be useful to look at
	-- the ScrollingTextBox component in developer console
	self._textBox = Instance.new("TextBox")
	self._textBox.Name = "SelectedImage"
	self._textBox.Text = ""
	self._textBox.PlaceholderText = PLACEHOLDER_TEXT
	self._textBox.TextXAlignment = Enum.TextXAlignment.Left
	self._textBox.Size = UDim2.new(0, TEXTBOX_WIDTH, 0, TEXTBOX_HEIGHT)
	self._textBox.Position = UDim2.new(0, PADDING, 0, 0)
	self._textBox.BorderSizePixel = 0
	self._textBox.BackgroundTransparency = 1
	self._textBox.Parent = self._textFrame

	local function updateTextBoxPos()
		local textbehindCursor = string.sub(self._textBox.Text, 1, self._textBox.CursorPosition)
		local cursorPos = TextService:GetTextSize(textbehindCursor, self._textBox.TextSize, self._textBox.Font, Vector2.new(0, 0)).x
		local endTextPos = TextService:GetTextSize(self._textBox.Text, self._textBox.TextSize, self._textBox.Font, Vector2.new(0, 0)).x

		-- position of the textbox is
		local offset = self._textBox.Position.X.Offset
		if cursorPos + self._textBox.Position.X.Offset < 0 then
			offset = -(cursorPos) + PADDING
		elseif cursorPos > TEXTBOX_WIDTH - self._textBox.Position.X.Offset - PADDING then
			offset = -(cursorPos - TEXTBOX_WIDTH) - PADDING
		end

		self._textBox.Position = UDim2.new(0, math.min(offset, PADDING) , 0, 0)
		self._textBox.Size = UDim2.new(0,math.max(endTextPos, TEXTBOX_WIDTH), 0,  TEXTBOX_HEIGHT)
	end

	local function validateAssetID()
		local assetId = tonumber(string.match(self._textBox.Text, ASSET_ID_PATTERN))
		local assetURL = string.match(self._textBox.Text, ASSET_URL_PATTERN)

		local warningMessage = ""

		if not assetId then
			warningMessage = "AssetURL is not valid."
		else
			if not self._validated then
				local valid, msg = isAssetModerated(assetId)
				self._validated = valid
				if msg then
					warningMessage = msg
				end
			end
		end

		if not self._warning then
			self._textFrame.BorderColor3 = BORDER_COLOR
		end

		if (self._validated and assetURL) or self._textBox.Text == "" then
			if self._warning then
				self._warning.Parent = nil
				self._warning = nil

				local currTheme = settings().Studio["UI Theme"]
				self._textFrame.BorderColor3 = currTheme == Enum.UITheme.Dark and BORDER_COLOR_DARK or BORDER_COLOR
			end

			if assetURL then
				if not self._imagePreview then
					local imagePreview = Instance.new("ImageLabel")
					imagePreview.Size = PREVIEW_SIZE
					imagePreview.Image = assetURL
					imagePreview.LayoutOrder = 2
					imagePreview.Parent = self._rightFrame
					self._imagePreview = imagePreview
				else
					self._imagePreview.Image = assetURL
				end
				if type(self._imageSelectedFunc) == "function" then
					self._imageSelectedFunc()
				end
			end
			-- insert image label if we are validated and
		else
			if self._imagePreview then
				self._imagePreview.Parent = nil
				self._imagePreview = nil
			end

			if not self._warning then
				local warning = Instance.new("TextLabel")
				warning.BackgroundTransparency = 1
				warning.Text = warningMessage
				warning.Font = FONT
				warning.TextSize = FONT_SIZE
				warning.TextColor3 = WARNING_RED
				warning.TextXAlignment = Enum.TextXAlignment.Left
				warning.Size = UDim2.new(1, 0, 0, TEXTBOX_HEIGHT)
				warning.LayoutOrder = 3
				warning.Parent = self._rightFrame
				self._warning = warning

				self._textFrame.BorderColor3  = WARNING_RED
			else
				self._warning.Text = warningMessage
			end
		end
	end
	-- reset validation is text is every changed
	self._textBox:GetPropertyChangedSignal("CursorPosition"):connect(updateTextBoxPos)

	self._textBox:GetPropertyChangedSignal("Text"):connect(function ()
		self._validated = false
		updateTextBoxPos()
	end)

	self._textBox.Focused:connect(function ()
		if not self._warning then
			self._textFrame.BorderColor3 = SELECTED_BORDER_COLOR
		end

		updateAssetList(self._frame, function(id)
			self._textBox.Text = string.format(ASSET_URL_TEXT, tonumber(id))
			validateAssetID()
			-- removes the dropdown
			updateAssetList(nil, nil)
		end)
	end)

	-- when we lose focus, we can then see if we need to validate the
	-- the asset url that has been passed to us.
	self._textBox.FocusLost:connect(function ()
		validateAssetID()
	end)

	GuiUtilities.syncGuiElementFontColor(self._textBox)
	GuiUtilities.syncGuiElementInputFieldColor(self._textBox)

	GuiUtilities.syncGuiElementBackgroundColor(self._textFrame)
	GuiUtilities.syncGuiElementBorderColor(self._textFrame)

	self._formating = Instance.new("UIListLayout")
	self._formating.SortOrder = Enum.SortOrder.LayoutOrder
	self._formating.VerticalAlignment = Enum.VerticalAlignment.Bottom
	self._formating.Padding = UDim.new(0, PADDING)
	self._formating.Parent = self._rightFrame

	function updateFrameSize()
		self._frame.Size = UDim2.new(1, 0, 0, self._formating.AbsoluteContentSize.Y)
		self._rightFrame.Size = UDim2.new(1, 0, 0, self._formating.AbsoluteContentSize.Y)
	end
	self._formating:GetPropertyChangedSignal("AbsoluteContentSize"):connect(updateFrameSize)

	updateFrameSize()

	return self
end

function AssetIdSelector:getFrame()
	return self._frame
end

function AssetIdSelector:getAssetId()
	if self._textBox then
		return tonumber(string.match(self._textBox.Text, ASSET_ID_PATTERN))
	end
end

function AssetIdSelector:getAssetUrl()
	if self._textBox then
		return string.match(self._textBox.Text, ASSET_URL_PATTERN)
	end
end

function AssetIdSelector:isValidated()
	return self._validated
end

function AssetIdSelector:setImageSelectedCallback(selectedFunc)
	assert(type(selectedFunc) == "function", "setImageSelectedCallback() expects a function.")
	self._imageSelectedFunc = selectedFunc
end

return AssetIdSelector
