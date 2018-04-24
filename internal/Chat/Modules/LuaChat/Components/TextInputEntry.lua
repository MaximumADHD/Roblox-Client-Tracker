local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)
local getInputEvent = require(LuaChat.Utils.getInputEvent)

local ListEntry = require(LuaChat.Components.ListEntry)

local FFlagTextBoxOverrideManualFocusRelease = settings():GetFFlag("TextBoxOverrideManualFocusRelease")

local ICON_CELL_WIDTH = 60
local CLEAR_TEXT_WIDTH = 48
local HEIGHT = 48

local TextInputEntry = {}

function TextInputEntry.new(appState, icon, placeholder)
	local self = {}
	self.connections = {}
	setmetatable(self, {__index = TextInputEntry})

	local size = 24
	local iconWidth = 0

	local listEntry = ListEntry.new(appState, HEIGHT)
	self.listEntry = listEntry
	self.rbx = listEntry.rbx
	self.placeholder = placeholder

	if icon then
		iconWidth = ICON_CELL_WIDTH
		local iconImageLabel = Create.new"Frame" {
			Name = "Icon",
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0, iconWidth, 1, 0),
			Position = UDim2.new(0, 0, 0, 0),
			Create.new"ImageLabel" {
				Name = "IconImage",
				BackgroundTransparency = 1,
				Size = UDim2.new(0, size, 0, size),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = icon,
				BorderSizePixel = 0,
			},
		}
		iconImageLabel.Parent = self.rbx
	end

	local textBox = Create.new"TextBox" {
		Name = "TextBox",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -iconWidth - CLEAR_TEXT_WIDTH, 1, 0),
		Position = UDim2.new(0, iconWidth, 0, 0),
		TextSize = Constants.Font.FONT_SIZE_18,
		TextColor3 = Constants.Color.GRAY1,
		Font = Enum.Font.SourceSans,
		Text = "",
		PlaceholderText = placeholder or "",
		PlaceholderColor3 = Constants.Color.GRAY3,
		TextXAlignment = Enum.TextXAlignment.Left,
		OverlayNativeInput = true,
		ClearTextOnFocus = false,
		ClipsDescendants = true,
	}
	if FFlagTextBoxOverrideManualFocusRelease then
		textBox.ManualFocusRelease = true
	end
	textBox.Parent = self.rbx

	local clearButton = Create.new"ImageButton" {
		Name = "Clear",
		BackgroundTransparency = 1,
		ImageTransparency = 1,
		Size = UDim2.new(0, CLEAR_TEXT_WIDTH, 0, CLEAR_TEXT_WIDTH),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(1, -CLEAR_TEXT_WIDTH/2, 0.5, 0),
		AutoButtonColor = false,

		Create.new"ImageLabel" {
			Name = "ClearImage",
			BackgroundTransparency = 1,
			ImageTransparency = 0,
			Size = UDim2.new(0, 16, 0, 16),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Image = "rbxasset://textures/ui/LuaChat/icons/ic-clear-solid.png",
		},

	}

	clearButton.Parent = self.rbx

	local clearButtonConnection = getInputEvent(clearButton):Connect(function()
		self.textBoxComponent.Text = ""
	end)
	table.insert(self.connections, clearButtonConnection)

	local divider = Create.new"Frame"{
		Name = "Divider",
		BackgroundColor3 = Constants.Color.GRAY4,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, -1),
	}
	divider.Parent = self.rbx

	self.textBoxComponent = textBox
	self.value = textBox.Text
	self.textBoxChanged = Signal.new()
	self.textBoxFocusLost = Signal.new()

	local function updateClearButtonVisibility()
		local visible = (self.textBoxComponent.Text ~= "")
		clearButton.Visible = visible
	end

	updateClearButtonVisibility()

	local textChangedConnection = textBox:GetPropertyChangedSignal("Text"):Connect(function()
		self.value = self.textBoxComponent.Text
		self.textBoxChanged:Fire(self.value)
		updateClearButtonVisibility()
	end)
	table.insert(self.connections, textChangedConnection)

	local focusedConnection = textBox.Focused:Connect(updateClearButtonVisibility)
	table.insert(self.connections, focusedConnection)
	local focusLostConnection = textBox.FocusLost:Connect(function()
		self.textBoxFocusLost:Fire()
		updateClearButtonVisibility()
	end)
	table.insert(self.connections, focusLostConnection)

	return self
end

function TextInputEntry:SanitizeInput(sanitizeFunc)
	self.value = sanitizeFunc(self.value)
	self.textBoxComponent.Text = self.value
	return self.value
end

function TextInputEntry:ReleaseFocus()
	self.textBoxComponent:ReleaseFocus()
end

function TextInputEntry:ShowDivider(show)
	self.rbx.Divider.Visible = show
end

function TextInputEntry:Update(value)
	if value ~= self.value then
		self.rbx.TextBox.Text = value
		if self.placeholder == nil and value ~= "" then
			self.placeholder = value
			self.rbx.TextBox.PlaceholderText = value
		end
	end
end

function TextInputEntry:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	self.listEntry:Destruct()
	self.rbx:Destroy()
end

return TextInputEntry
