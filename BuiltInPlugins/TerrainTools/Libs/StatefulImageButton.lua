----------------------------------------
--
-- StatefulImageButton.lua
--
-- Image button.
-- Has custom image for when "selected"
-- Uses shading to indicate hover and click states.
--
----------------------------------------
GuiUtilities = require(script.Parent.GuiUtilities)

StatefulImageButtonClass = {}
StatefulImageButtonClass.__index = StatefulImageButtonClass

function StatefulImageButtonClass.new(buttonName, imageAsset, buttonSize)
	local self = {}
	setmetatable(self, StatefulImageButtonClass)

	local button = Instance.new("ImageButton")
	button.Parent = parent
	button.Image = imageAsset
	button.BackgroundTransparency = 1
	button.BorderSizePixel = 0
	button.Size = buttonSize
	button.Name = buttonName

	self._button = button

	self._hovered = false
	self._clicked = false
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
	
	self:_updateButtonVisual()

	return self
end

function StatefulImageButtonClass:_updateButtonVisual()
	if (self._selected) then 
		self._button.ImageTransparency = 0
		self._button.ImageColor3 = Color3.new(1,1,1) 
	else 
		self._button.ImageTransparency = 0.5
		self._button.ImageColor3 = Color3.new(.5,.5,.5)
	end

	if (self._clicked) then 
		self._button.BackgroundTransparency = 0.8
	elseif (self._hovered) then 
		self._button.BackgroundTransparency = 0.9
	else
		self._button.BackgroundTransparency = 1
	end
end

function StatefulImageButtonClass:setSelected(selected)
	self._selected = selected
	self:_updateButtonVisual()
end

function StatefulImageButtonClass:getButton()
	return self._button
end

return StatefulImageButtonClass