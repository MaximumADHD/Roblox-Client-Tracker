--[[
	A box with rounded corners that displays a value. It's used by the SizeBox and the RotationBox.
--]]
local ValueBox = {}

-- Module scripts
local CoreGuiManager = require(script.Parent.CoreGuiManager)

-- Services
local TextService = game:GetService("TextService")

-- Constants
local IMAGE_LABEL_PADDING = Vector2.new(12, 4) -- Padding inside the m_imageLabel
local TEXT_SIZE_MAX = 15 -- Maximum text size px
local TEXT_SIZE_MIN = 12 -- Minimum text size px
local TEXT_SIZE_TARGET_RATIO = 20 / 800 -- Text aims to be 20 px at 800 px wide and scales accordingly
local X_MARGIN_RATIO = 12 / 1400 -- Value box horizontal margins aims to be 12 px at 1400 px wide

-- Functions

-- Returns the current size of the ValueBox.
--
-- UDim2 ValueBox:getSize()
function ValueBox:getSize()
	return self.m_imageLabel.Size
end

-- void ValueBox:setPosition(UDim2 position)
function ValueBox:setPosition(position)
	self.m_imageLabel.Position = position
end

-- void ValueBox::setAnchorPoint(Vector2 anchorPoint)
function ValueBox:setAnchorPoint(anchorPoint)
	self.m_imageLabel.AnchorPoint = anchorPoint
end

-- Returns the painted size of the text label's text in pixels.
--
-- Vector2 calcTextSize(TextLabel textLabel)
local function calcTextSize(textLabel)
	return TextService:GetTextSize(textLabel.Text, textLabel.TextSize, textLabel.Font, Vector2.new(0, 0))
end

-- Sets the text and updates the size of the ValueBox.
function ValueBox:setText(text)
	local screenGui = CoreGuiManager:findOrCreateScreenGui("ValueBoxes")

	self.m_textLabel.Text = text

	-- Update text size according to resolution.
	local targetTextSize = TEXT_SIZE_TARGET_RATIO * screenGui.AbsoluteSize.Y
	targetTextSize = math.clamp(targetTextSize, TEXT_SIZE_MIN, TEXT_SIZE_MAX)
	self.m_textLabel.TextSize = targetTextSize

	-- Update the size of the text label and image label to fit the text in the text label.
	local textSize = calcTextSize(self.m_textLabel)

	local xMargin = X_MARGIN_RATIO * screenGui.AbsoluteSize.X
	xMargin = math.clamp(xMargin, 0, IMAGE_LABEL_PADDING.X)
	local yMargin = xMargin / IMAGE_LABEL_PADDING.X * IMAGE_LABEL_PADDING.Y

	self.m_textLabel.Size = UDim2.new(0, textSize.X, 0, textSize.Y)
	local newWidth = textSize.X + 2 * xMargin
	local newHeight = textSize.Y + 2 * yMargin
	self.m_imageLabel.Size = UDim2.new(0, newWidth, 0, newHeight)
end

-- Shows or hides the ValueBox.
--
-- void ValueBox:setVisible(bool visible)
function ValueBox:setVisible(visible)
	self.m_imageLabel.Visible = visible
	self.m_textLabel.Visible = visible
end

-- ImageLabel createImageLabel()
local function createImageLabel()
	local imageLabel = Instance.new("ImageLabel")
	imageLabel.Name = "UIEditorValueBoxImageLabel"
	-- Change display order so it shows on top of Resize adornments
	local screenGui = CoreGuiManager:findOrCreateScreenGui("ValueBoxes")
	screenGui.DisplayOrder = 1
	imageLabel.Parent = screenGui
	imageLabel.BackgroundTransparency = 1.0
	imageLabel.Image = "rbxasset://textures/StudioUIEditor/valueBoxRoundedRectangle.png"
	imageLabel.ImageColor3 = Color3.fromRGB(255, 205, 0)
	-- The m_imageLabel uses a 9-patch image to make the corners round. The Enum.ScaleType.Slice
	-- makes it slice the image into 9 parts.
	imageLabel.ScaleType = Enum.ScaleType.Slice
	-- Image is 16x16 with border-radius 3, so the end corner is at 16-3 = 13
	imageLabel.SliceCenter = Rect.new(3, 3, 13, 13)

	return imageLabel
end

-- TextLabel createTextLabel()
local function createTextLabel()
	local textLabel = Instance.new("TextLabel")
	textLabel.Name = "UIEditorValueBoxTexLabel"
	textLabel.TextColor3 = Color3.new(0, 0, 0)
	textLabel.BackgroundColor3 = Color3.fromRGB(118, 118, 118)
	textLabel.BackgroundTransparency = 1.0
	textLabel.BorderSizePixel = 0
	textLabel.Font = Enum.Font.SourceSans
	textLabel.TextXAlignment = Enum.TextXAlignment.Center
	textLabel.TextYAlignment = Enum.TextYAlignment.Center
	textLabel.TextSize = 15
	-- The m_textLabel TextLabel is centered inside the ImageLabel using a Scale
	-- and an AnchorPoint. The text inside the TextLabel is not completely
	-- centered though, so we have to subtract a couple of pixels to center the text.
	local offCenterYPaddingFix = -2
	textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	textLabel.Position = UDim2.new(0.5, 0, 0.5, offCenterYPaddingFix)

	return textLabel
end

function ValueBox.new(parent)
	local newValueBox = {}

	-- The ValueBox consists of an ImageLabel and a TextLabel. The ImageLabel draws the rounded corners
	-- and the TextLabel draws the text.
	newValueBox.m_imageLabel = createImageLabel()
	if parent ~= nil then
		newValueBox.m_imageLabel.Parent = parent
	end
	newValueBox.m_textLabel = createTextLabel()
	newValueBox.m_textLabel.Parent = newValueBox.m_imageLabel

	return setmetatable(newValueBox, ValueBox)
end
ValueBox.__index = ValueBox

function ValueBox:Destroy()
	-- The m_textLabel is parented to the m_imageLabel and will be destroyed with it.
	self.m_imageLabel:Destroy()
end

return ValueBox
