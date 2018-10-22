----------------------------------------
--
-- ImageButtonWithText.lua
--
-- An image button with text underneath.  Standardized hover, clicked, and 
-- selected states.
--
----------------------------------------
GuiUtilities = require(script.Parent.GuiUtilities)

ImageButtonWithTextClass = {}
ImageButtonWithTextClass.__index = ImageButtonWithTextClass

local kSelectedBaseTransparency = 0.2
local kAdditionalTransparency = 0.1

function ImageButtonWithTextClass.new(name, 
		layoutOrder, 
		icon, 
		text, 
		buttonSize,
		imageSize, 
		imagePos, 
		textSize, 
		textPos)
	local self = {}
	setmetatable(self, ImageButtonWithTextClass)

	local button = Instance.new("ImageButton")
	button.Name = name
	button.AutoButtonColor = false
	button.Size = buttonSize
	button.BorderSizePixel = 1
	-- Image-with-text button has translucent background and "selected" background color.
	-- When selected we set transluency to not-zero so we see selected color.
	button.BackgroundTransparency = 1 

	button.LayoutOrder = layoutOrder

	local buttonIcon = Instance.new("ImageLabel")
	buttonIcon.BackgroundTransparency = 1
	buttonIcon.Image = icon or ""
	buttonIcon.Size = imageSize
	buttonIcon.Position = imagePos
	buttonIcon.Parent = button

	local textLabel = Instance.new("TextLabel")
	textLabel.BackgroundTransparency = 1
	textLabel.Text = text
	textLabel.Size = textSize
	textLabel.Position = textPos
	textLabel.TextScaled = true
	textLabel.Font = Enum.Font.SourceSans
	textLabel.Parent = button

	GuiUtilities.syncGuiElementFontColor(textLabel)

	local uiTextSizeConstraint = Instance.new("UITextSizeConstraint")
	-- Spec asks for fontsize of 12 pixels, but in Roblox the text font sizes look smaller than the mock
	--Note: For this font the Roblox text size is 25.7% larger than the design spec. 
	uiTextSizeConstraint.MaxTextSize = 15		                                          
	uiTextSizeConstraint.Parent = textLabel

	self._button = button
	self._clicked = false
	self._hovered = false
	self._selected = false

	button.InputBegan:connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement) then               
			self._hovered = true
			self:_updateButtonVisual()
		end
	end)


	button.InputEnded:connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement) then               
			self._hovered = false
			self._clicked = false
			self:_updateButtonVisual()
		end
	end)    

	button.MouseButton1Down:connect(function()
		self._clicked = true
		self:_updateButtonVisual()
	end)

	button.MouseButton1Up:connect(function()
		self._clicked = false
		self:_updateButtonVisual()
	end)
	
	function updateButtonVisual()
		self:_updateButtonVisual()
	end
	settings().Studio.ThemeChanged:connect(updateButtonVisual)

	self:_updateButtonVisual()

	return self
end

function ImageButtonWithTextClass:_updateButtonVisual()
	-- Possibilties:
	if (self._clicked) then 
		-- This covers 'clicked and selected' or 'clicked'
		self._button.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, 
			Enum.StudioStyleGuideModifier.Selected)
		self._button.BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, 
			Enum.StudioStyleGuideModifier.Selected)
		if (self._selected) then 
			self._button.BackgroundTransparency = GuiUtilities.kButtonBackgroundIntenseTransparency
		else
			self._button.BackgroundTransparency = GuiUtilities.kButtonBackgroundTransparency
		end
	elseif (self._hovered) then 
		-- This covers 'hovered and selected' or 'hovered'
		self._button.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, 
			Enum.StudioStyleGuideModifier.Hover)
		self._button.BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, 
			Enum.StudioStyleGuideModifier.Hover)
		if (self._selected) then 
			self._button.BackgroundTransparency = GuiUtilities.kButtonBackgroundIntenseTransparency
		else
			self._button.BackgroundTransparency = GuiUtilities.kButtonBackgroundTransparency
		end
	elseif (self._selected) then 
		-- This covers 'selected'
		self._button.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button, 
			Enum.StudioStyleGuideModifier.Selected)
		self._button.BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border, 
			Enum.StudioStyleGuideModifier.Selected)
		self._button.BackgroundTransparency = GuiUtilities.kButtonBackgroundTransparency
	else
		-- This covers 'no special state'
		self._button.BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Button)
		self._button.BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Border)
		self._button.BackgroundTransparency = 1
	end
end

function ImageButtonWithTextClass:getButton()
	return self._button
end

function ImageButtonWithTextClass:setSelected(selected)
	self._selected = selected
	self:_updateButtonVisual()
end
 
function ImageButtonWithTextClass:getSelected()
	return self._selected
end


return ImageButtonWithTextClass