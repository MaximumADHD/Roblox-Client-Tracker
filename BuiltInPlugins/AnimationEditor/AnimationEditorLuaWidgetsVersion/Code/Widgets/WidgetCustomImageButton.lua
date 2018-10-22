local FastFlags = require(script.Parent.Parent.FastFlags)

local CustomImageButton = {}
CustomImageButton.__index = CustomImageButton

local function show(self)
	local ShowOff = false
	local ShowOffHover = false
	local ShowPressed = false
	local ShowOn = false
	local ShowOnHover = false
	local ShowTextColor = self.Paths.UtilityScriptTheme:GetTextColor()
	
	if not self.isEnabled then
		ShowOff = true
		ShowTextColor = self.Paths.UtilityScriptTheme:GetDisabledTextColor()
	elseif self.MouseDown and (self.MouseOver or self.keepMouseDownOnLeave) or (FastFlags:isIKModeFlagOn() and self.isPressed) then
		ShowPressed = true
		ShowTextColor = self.Paths.UtilityScriptTheme:GetHighlightedTextColor()
	elseif self.MouseOver then
		ShowOnHover = self.on
		ShowOffHover = not self.on
	else
		ShowOn = self.on
		ShowOff = not self.on
		ShowTextColor = self.on and self.Paths.UtilityScriptTheme:GetHighlightedTextColor() or self.Paths.UtilityScriptTheme:GetTextColor()
	end
	
	self.button.Off.Visible = ShowOff
	self.button.OffHover.Visible = ShowOffHover
	self.button.Pressed.Visible = ShowPressed
	
	local OnImage = self.button:FindFirstChild('On') -- user might be using a button which can be pressed, but does not turn on/off	
	if nil ~= OnImage then OnImage.Visible = ShowOn end
	local OnHoverImage = self.button:FindFirstChild('OnHover')
	if nil ~= OnHoverImage then OnHoverImage.Visible = ShowOnHover end
	
	local text = self.button:FindFirstChild('TextLabel', true)
	if nil ~= text then
		text.TextColor3 = ShowTextColor	
	end
end

function CustomImageButton:new(Paths, button, keepMouseDownOnLeave)
	local self = setmetatable({}, CustomImageButton)
	self.Paths = Paths
	self.button = button
	self.isEnabled = true
	if FastFlags:isIKModeFlagOn() then
		self.isPressed = false
	end
	self.keepMouseDownOnLeave = keepMouseDownOnLeave
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	
	-- this section allows for 'button' to be the image button, or button can be a container frame with the image button inside it
	local imageButton = self.button:FindFirstChild('ImageButton')
	imageButton = imageButton and imageButton or self.button
	
	if FastFlags:isUseNewThemeAPIOn() then
		self.Connections:add(imageButton.InputBegan:connect(function(input) 	
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				self.MouseDown = true
				self.MouseOver = true
				show(self)
			elseif input.UserInputType == Enum.UserInputType.MouseMovement then
				self.MouseOver = true
				show(self)
			end
		end))
			
		self.Connections:add(imageButton.InputEnded:connect(function(input) 
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				self.MouseDown = false
				self.MouseOver = false
				show(self)
			elseif input.UserInputType == Enum.UserInputType.MouseMovement then
				self.MouseOver = false
				show(self)
			end
		end))
	elseif FastFlags:isIKModeFlagOn() then
		self.Connections:add(imageButton.InputBegan:connect(function(input) 	
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseMovement then
				self.MouseDown = true
				show(self)
			end
		end))
			
		self.Connections:add(imageButton.InputEnded:connect(function(input) 
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseMovement then
				self.MouseDown = false
				show(self)
			end
		end))
	else
		self.Connections:add(imageButton.MouseEnter:connect(function()
			self.MouseOver = true
			show(self)
		end))
		
		self.Connections:add(imageButton.MouseLeave:connect(function()
			self.MouseOver = false	
			show(self)
		end))
		
		self.Connections:add(imageButton.InputBegan:connect(function(input) 	
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				self.MouseDown = true
				show(self)				
			end 				
		end))
			
		self.Connections:add(imageButton.InputEnded:connect(function(input) 
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				self.MouseDown = false
				show(self)
			end
		end))
	end
	
	self:turnOn(false)
	return self
end

function CustomImageButton:terminate()
	self.Connections:terminate()
	self.Connections = nil
end

function CustomImageButton:turnOn(on)
	self.on = on
	show(self)
end

if FastFlags:isIKModeFlagOn() then
	function CustomImageButton:setPressed(pressed)
		self.isPressed = pressed
		show(self)
	end
end

function CustomImageButton:getEnabled()
	return self.isEnabled
end

function CustomImageButton:setEnabled(set)
	self.isEnabled = set
	show(self)
end

return CustomImageButton