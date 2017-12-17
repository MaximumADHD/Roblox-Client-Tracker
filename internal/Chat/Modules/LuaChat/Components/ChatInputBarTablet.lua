
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local Modules = script.Parent.Parent
local Create = require(Modules.Create)
local Text = require(Modules.Text)
local Constants = require(Modules.Constants)
local Signal = require(Modules.Signal)

local function isMessageValid(text)
	if #text >= 160 then
		return false
	end

	-- Only whitespace
	if text:match("^%s*$") then
		return false
	end

	return true
end

local ChatInputBar = {}
local MIN_TEXT_HEIGHT = 36
local TEXT_FRAME_HEIGHT_DIFF = 28

function ChatInputBar.new(appState)
	local self = {}
	self.sendButtonEnabled = false
	self.SendButtonPressed = Signal.new()
	self.UserChangedText = Signal.new()
	self.blockUserChangedText = true


	self.rbx = Create.new "TextButton" {
		Name = "ChatInputBar",
		Text = "",
		AutoButtonColor = false,
		BackgroundColor3 = Constants.Color.WHITE,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 64),

		Create.new "Frame" {
			Name = "TopBorder",
			Size = UDim2.new(1, 0, 0, 1),
			BackgroundColor3 = Constants.Color.GRAY3,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 0, 0),
		},

		Create.new "Frame" {
			Name = "InputBarFrame",
			Size = UDim2.new(1, -68, 1, -24),
			Position = UDim2.new(0, 12, 0, 12),
			BackgroundTransparency = 1,

			Create.new "TextBox" {
				Name = "InputText",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				Text = "",
				Font = Enum.Font.SourceSans,
				TextSize = Constants.Font.FONT_SIZE_18,
				TextColor3 = Constants.Text.INPUT,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextWrapped = true,
				OverlayNativeInput = true,
				ClearTextOnFocus = false,
				ManualFocusRelease = true,
				MultiLine = true,
				PlaceholderText = appState.localization:Format(StringsLocale.Keys.CHAT_INPUT_PLACEHOLDER),
				PlaceholderColor3 = Constants.Text.INPUT_PLACEHOLDER,
			}
		},

		Create.new "ImageButton" {
			Name = "SendButton",
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 32, 0, 32),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(1, -12 - 32, 0.5, 0),
			Image = "rbxasset://textures/ui/LuaChat/graphic/send-white.png",
			ImageColor3 = Constants.Color.GRAY3,

			Create.new "ImageLabel" {
				Name = "Icon",
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 16, 0, 16),
				Position = UDim2.new(0.5, 1, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-send.png",
			}
		},
	}

	self.rbx.TouchTap:Connect(function()
		--Sink this tap so the keyboard doesn't close
	end)

	self.textBox = self.rbx.InputBarFrame.InputText

	self.textBox.Focused:Connect(function()
		self.blockUserChangedText = false
	end)

	self.textBox.FocusLost:Connect(function()
		if #self.textBox.Text <= 0 then
			self:Reset()
		end
	end)

	self.textBox:GetPropertyChangedSignal("Text"):Connect(function()
		local text = self.textBox.Text
		local sizeY = Text.GetTextHeight(text, self.textBox.Font, self.textBox.TextSize, self.textBox.AbsoluteSize.X)
		local maxTextHeight = Text.GetTextHeight("A\nB\nC\nD\nE", self.textBox.Font, self.textBox.TextSize,
			self.textBox.AbsoluteSize.X) * 0.95

		if sizeY < MIN_TEXT_HEIGHT then
			sizeY = MIN_TEXT_HEIGHT
		elseif sizeY > maxTextHeight then
			sizeY = maxTextHeight
		end

		self.rbx.Size = UDim2.new(1, 0, 0, sizeY + TEXT_FRAME_HEIGHT_DIFF)

		if isMessageValid(text) then
			self:SetSendButtonEnabled(true)
		else
			self:SetSendButtonEnabled(false)
		end

		if not self.blockUserChangedText then
			self.UserChangedText:Fire()
		end
	end)

	self.rbx.SendButton.MouseButton1Click:Connect(function()
		self:SendMessage()
	end)

	setmetatable(self, ChatInputBar)
	return self
end

function ChatInputBar:Reset()
	self.blockUserChangedText = true
	self.textBox.Text = ""
	self.blockUserChangedText = false
end

function ChatInputBar:SendMessage()
	local text = self.textBox.Text
	if not isMessageValid(text) then
		return
	end

	self:Reset()
	self.SendButtonPressed:Fire(text)
end

function ChatInputBar:SetSendButtonEnabled(value)
	if self.sendButtonEnabled == value then
		return
	end
	self.sendButtonEnabled = value

	local color = value and Constants.Color.BLUE_PRIMARY or Constants.Color.GRAY3
	self.rbx.SendButton.ImageColor3 = color
end

function ChatInputBar:GetHeight()
	return self.rbx.Size.Y.Offset
end

ChatInputBar.__index = ChatInputBar
return ChatInputBar
