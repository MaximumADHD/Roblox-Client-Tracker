local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules
local Common = Modules.Common
local LuaChat = Modules.LuaChat

local Constants = require(LuaChat.Constants)
local Create = require(LuaChat.Create)
local Signal = require(Common.Signal)
local Text = require(LuaChat.Text)
local getInputEvent = require(LuaChat.Utils.getInputEvent)

local FONT = Enum.Font.SourceSans
local TEXT_SIZE = Constants.Font.FONT_SIZE_18
local X_PADDING = 8

local TextButton = {}

TextButton.__index = TextButton

function TextButton.new(appState, name, textKey)
	local self = {}

	self.enabled = true


	local text = appState.localization:Format(textKey)

	local textWidth = Text.GetTextWidth(text, FONT, TEXT_SIZE)

	self.rbx = Create.new "TextButton" {
		Name = name,
		BackgroundTransparency = 1,
		Text = "",
		Size = UDim2.new(0, textWidth + X_PADDING, 1, 0),

		Create.new "TextLabel" {
			Name = "Label",
			Size = UDim2.new(0, textWidth, 0, TEXT_SIZE),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			Text = text,
			Font = FONT,
			TextSize = TEXT_SIZE,
			TextColor3 = Constants.Color.BLUE_PRIMARY,
		},
	}

	self.Pressed = Signal.new()

	getInputEvent(self.rbx):Connect(function()
		if not self.enabled then
			return
		end

		self.Pressed:Fire()
	end)

	setmetatable(self, TextButton)

	return self
end

function TextButton:SetEnabled(value)
	if value then
		self.rbx.Label.TextColor3 = Constants.Color.BLUE_PRIMARY
		self.rbx.Label.TextTransparency = 0
	else
		self.rbx.Label.TextColor3 = Constants.Color.GRAY3
	end

	self.enabled = value
end

return TextButton
