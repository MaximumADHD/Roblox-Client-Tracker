----------------------------------------
--
-- ProgressFrame.lua
--
-- Creates a frame that has a progress bar.
--
----------------------------------------

local GuiUtilities = require(script.Parent.Parent.Libs.GuiUtilities)

local kWidth = 400
local kHeight = 160

local kStandardHMargin = 10
local kStandardVMargin = 5
local kBarHeight = 25
local kButtonHeight = 30

local kTitleBarHeight = 25

ProgressFrameClass = {}
ProgressFrameClass.__index = ProgressFrameClass

function ProgressFrameClass.new(nameSuffix, labelText, initValue, initDisabled)
	local self = {}
	setmetatable(self, ProgressFrameClass)

	self._frame = Instance.new("Frame")
	self._frame.Name = "ProgressFrame"
	self._frame.Position = UDim2.new(0.5, -kWidth/2, 0, 0)
	self._frame.Size = UDim2.new(0, kWidth, 0, kHeight)
	self._frame.Style = Enum.FrameStyle.DropShadow

	self._frame.Visible = false

	self._bar = Instance.new("Frame")
	self._bar.Name = "Bar"
	self._bar.Parent = self._frame
	self._bar.Position = UDim2.new(0, kStandardHMargin, 0.39, 0)
	self._bar.Size = UDim2.new(1, -2 * kStandardHMargin, 0, kBarHeight)

	self._fill = Instance.new("ImageLabel")
	self._fill.Name = "ImageLabel"
	self._fill.Parent = self._bar
	self._fill.Image = "rbxasset://textures/TerrainTools/progress_bar.png"
	self._fill.ImageColor3 = Color3.new(0, 0.9, 0.4)
	self._fill.ImageRectOffset = Vector2.new(0, 256)
	self._fill.ImageRectSize = Vector2.new(0, -100)
	self._fill.ScaleType = Enum.ScaleType.Stretch

	self._pauseButton = Instance.new("TextButton")
	self._pauseButton.Name = "PauseButton"
	self._pauseButton.Text = "Pause"
	self._pauseButton.Parent = self._frame
	self._pauseButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
	self._pauseButton.Size = UDim2.new(0.5, -2 * kStandardHMargin, 0, kButtonHeight)
	self._pauseButton.Position = UDim2.new(0, kStandardHMargin, 1, -kStandardVMargin - kButtonHeight)

	self._cancelButton = Instance.new("TextButton")
	self._cancelButton.Name = "CancelButton"
	self._cancelButton.Text = "Cancel"
	self._cancelButton.Parent = self._frame
	self._cancelButton.AnchorPoint = Vector2.new(1, 0)
	self._cancelButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
	self._cancelButton.Size = UDim2.new(0.5, -2 * kStandardHMargin, 0, kButtonHeight)
	self._cancelButton.Position = UDim2.new(1, -kStandardHMargin, 1, -kStandardVMargin - kButtonHeight)

	self._titleLabel = Instance.new("TextLabel")
	self._titleLabel.Name = "TitleLabel"
	self._titleLabel.Text = "Progress"
	self._titleLabel.Parent = self._frame
	self._titleLabel.BackgroundTransparency = 0.75
	self._titleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	self._titleLabel.Size = UDim2.new(1, 0, 0, kTitleBarHeight)

	self:_FixFont(self._pauseButton)
	self:_FixFont(self._cancelButton)
	self:_FixFont(self._titleLabel)

	return self
end

function ProgressFrameClass:_FixFont(frame)
	frame.Font = Enum.Font.SourceSansBold
	frame.TextColor3 = Color3.new(1, 1, 1)
	frame.TextSize = 18
end

function ProgressFrameClass:GetFrame() 
	return self._frame
end

function ProgressFrameClass:GetPauseButton() 
	return self._pauseButton
end

function ProgressFrameClass:GetCancelButton() 
	return self._cancelButton
end

function ProgressFrameClass:GetFill() 
	return self._fill
end

return ProgressFrameClass