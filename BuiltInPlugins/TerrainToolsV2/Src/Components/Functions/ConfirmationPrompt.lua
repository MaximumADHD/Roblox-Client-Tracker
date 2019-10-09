----------------------------------------
--
-- ConfirmationPrompt.lua
--
-- Creates a frame that has a progress bar.
--
----------------------------------------

local GuiUtilities = require(script.Parent.GuiUtilities)

local kWidth = 362
local kHeight = 148

local kStandardHMargin = 47
local kStandardVMargin = 20
local kBarHeight = 25
local kButtonHeight = 32
local kButtonWidth = 120

local TEXT_SIZE = 18

local kTitleBarHeight = 25

ConfirmationPrompt = {}
ConfirmationPrompt.__index = ConfirmationPrompt

function ConfirmationPrompt.new(theme, localization)
	local self = {}
	setmetatable(self, ConfirmationPrompt)

	self._frame = Instance.new("Frame")
	self._frame.Name = "Confirmation"
	self._frame.AnchorPoint = Vector2.new(0.5, 0.5)
	self._frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	self._frame.Size = UDim2.new(0, kWidth, 0, kHeight)
	self._frame.BackgroundColor3 = theme.backgroundColor

	self._frame.Visible = false

	self._confirmMessage = Instance.new("TextLabel")
	self._confirmMessage.Name = "ConfirmMessage"
	self._confirmMessage.Text = ""
	self._confirmMessage.Size = UDim2.new(1, 0, 1, 0)
	self._confirmMessage.AnchorPoint = Vector2.new(0.5, 0.5)
	self._confirmMessage.Position = UDim2.new(0.5, 0, 0.4, 0)
	self._confirmMessage.BackgroundTransparency = 1
	self._confirmMessage.TextSize = TEXT_SIZE
	self._confirmMessage.Font = theme.font
	self._confirmMessage.TextColor3 = theme.textColor
	self._confirmMessage.Parent = self._frame

	self._yesButton = Instance.new("TextButton")
	self._yesButton.Name = "YesButton"
	self._yesButton.Text = "Yes"
	self._yesButton.TextSize = TEXT_SIZE
	self._yesButton.Font = theme.font
	self._yesButton.TextColor3 = theme.roundTextButtonTheme.styleSheet.TextColor
	self._yesButton.Size = UDim2.new(0, kButtonWidth, 0, kButtonHeight)
	self._yesButton.AnchorPoint = Vector2.new(1, 0)
	self._yesButton.Position = UDim2.new(1, -kStandardHMargin, 1, -kStandardVMargin - kButtonHeight)
	self._yesButton.BackgroundColor3 = theme.roundTextButtonTheme.styleSheet.ButtonColor
	self._yesButton.BorderColor3 = theme.roundTextButtonTheme.styleSheet.ButtonColor
	self._yesButton.Parent = self._frame

	self._noButton = Instance.new("TextButton")
	self._noButton.Name = "NoButton"
	self._noButton.Text = "No"
	self._noButton.TextSize = TEXT_SIZE
	self._noButton.Font = theme.font
	self._noButton.TextColor3 = theme.textColor
	self._noButton.Size = UDim2.new(0, kButtonWidth, 0, kButtonHeight)
	self._noButton.Position = UDim2.new(0, kStandardHMargin, 1, -kStandardVMargin - kButtonHeight)
	self._noButton.BackgroundColor3 = theme.shadowColor
	self._noButton.BorderColor3 = theme.borderColor
	self._noButton.Parent = self._frame

	self._titleLabel = Instance.new("TextLabel")
	self._titleLabel.Name = "TitleLabel"
	self._titleLabel.Text = ""
	self._titleLabel.BackgroundColor3 = theme.shadowColor
	self._titleLabel.Size = UDim2.new(1, 0, 0, kTitleBarHeight)
	self._titleLabel.Parent = self._frame

	return self
end

function ConfirmationPrompt:GetFrame()
	return self._frame
end

function ConfirmationPrompt:GetConfirmMessage()
	return self._confirmMessage
end

function ConfirmationPrompt:GetConfirmButton()
	return self._yesButton
end

function ConfirmationPrompt:GetCancelButton()
	return self._noButton
end

function ConfirmationPrompt:UpdateTheme(theme)
	local initialized = self._frame
	if initialized then
		self._frame.BackgroundColor3 = theme.backgroundColor

		self._confirmMessage.Font = theme.font
		self._confirmMessage.TextColor3 = theme.textColor

		self._yesButton.Font = theme.font
		self._yesButton.TextColor3 = theme.roundTextButtonTheme.styleSheet.TextColor
		self._yesButton.BackgroundColor3 = theme.roundTextButtonTheme.styleSheet.ButtonColor
		self._yesButton.BorderColor3 = theme.roundTextButtonTheme.styleSheet.ButtonColor

		self._noButton.Font = theme.font
		self._noButton.TextColor3 = theme.textColor
		self._noButton.BackgroundColor3 = theme.shadowColor
		self._noButton.BorderColor3 = theme.borderColor

		self._titleLabel.BackgroundColor3 = theme.shadowColor
	end
end

return ConfirmationPrompt