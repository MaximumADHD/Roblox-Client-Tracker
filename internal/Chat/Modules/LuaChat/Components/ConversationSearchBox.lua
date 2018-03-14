local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaApp = Modules.LuaApp
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)
local StringsLocale = require(LuaApp.StringsLocale)
local Text = require(LuaChat.Text)

local FFlagTextBoxOverrideManualFocusRelease = settings():GetFFlag("TextBoxOverrideManualFocusRelease")

local CANCEL_BUTTON_PADDING = 16

local ConversationSearchBox = {}

function ConversationSearchBox.new(appState)
	local self = {}
	setmetatable(self, {__index = ConversationSearchBox})

	self.rbx = Create.new"Frame"
	{
		Name = "ConversationSearchBox",
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Create.new "UIListLayout"
		{
			SortOrder = "LayoutOrder",
			FillDirection = "Horizontal",
			HorizontalAlignment = "Right",
		},
	}

	local cancelButton = Create.new"TextButton"
	{
		Name = "Cancel",
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
		TextSize = Constants.Font.FONT_SIZE_18,
		TextColor3 = Constants.Color.WHITE,
		Font = Enum.Font.SourceSans,
		Text = appState.localization:Format(StringsLocale.Keys.CANCEL),
		TextXAlignment = Enum.TextXAlignment.Center,
		LayoutOrder = 1,
	}
	cancelButton.Size = UDim2.new(0,
		Text.GetTextWidth(cancelButton.Text, cancelButton.Font, cancelButton.TextSize) + CANCEL_BUTTON_PADDING * 2, 1, 0)
	cancelButton.Parent = self.rbx

	local searchBoxContainer = Create.new"Frame"
	{
		Name = "SearchBoxContainer",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -cancelButton.Size.X.Offset, 1, 0),
		Position = UDim2.new(0, 8, 0, 0),
		LayoutOrder = 0,
	}
	searchBoxContainer.Parent = self.rbx

	local searchBoxBackground = Create.new"ImageLabel"
	{
		Name = "SearchBoxBackground",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, -12),
		Position = UDim2.new(0, 8, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		Image = "rbxasset://textures/ui/LuaChat/9-slice/search.png",
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(3,3,4,4),
		Create.new"ImageLabel"
		{
			Name = "SearchIcon",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 16, 0, 16),
			Position = UDim2.new(0, 8, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Image = "rbxasset://textures/ui/LuaChat/icons/ic-search-gray.png",
		},
	}
	searchBoxBackground.Parent = searchBoxContainer

	local clearSearchButton = Create.new"ImageButton"
	{
		Name = "ClearButton",
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 16, 0, 16),
		Position = UDim2.new(1, -8, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		Image = "rbxasset://textures/ui/LuaChat/icons/ic-clear-solid.png",
		Visible = false,
	}
	clearSearchButton.Parent = searchBoxBackground

	local search = Create.new"TextBox"
	{
		Name = "Search",
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Size = UDim2.new(1, -36 - 8 - 32, 1, 0),
		Position = UDim2.new(0, 36, 0, 0),
		TextSize = Constants.Font.FONT_SIZE_14,
		TextColor3 = Constants.Color.GRAY1,
		Font = Enum.Font.SourceSans,
		Text = "",
		PlaceholderText = appState.localization:Format(StringsLocale.Keys.SEARCH),
		PlaceholderColor3 = Constants.Color.GRAY3,
		TextXAlignment = Enum.TextXAlignment.Left,
		OverlayNativeInput = true,
		ClearTextOnFocus = false,
	}
	search.Parent = searchBoxBackground
	if FFlagTextBoxOverrideManualFocusRelease then
		search.ManualFocusRelease = true
	end
	self.search = search

	self.SearchChanged = Signal.new()
	self.Closed = Signal.new()

	local searchText = ""

	search:GetPropertyChangedSignal("Text"):Connect(function()
		searchText = string.lower(search.Text)
		clearSearchButton.Visible = searchText ~= ""
		self.SearchChanged:Fire(search.Text)
	end)

	cancelButton.MouseButton1Click:connect(function()
		self:Cancel()
	end)

	clearSearchButton.MouseButton1Click:connect(function()
		search.Text = ""
	end)

	self.SearchFilterPredicate = function(other)
		if searchText == "" then
			return true
		end
		return string.find(string.lower(other), searchText, 1, true) ~= nil
	end

	return self
end

function ConversationSearchBox:Cancel()
	self.search:ReleaseFocus()
	self.search.Text = ""
	self.Closed:Fire()
end

function ConversationSearchBox:Update(participants)

end

return ConversationSearchBox
