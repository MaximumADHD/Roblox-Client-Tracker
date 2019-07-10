local FastFlags = require(script.Parent.Parent.FastFlags)
-- singleton

local Mouse = {}

Mouse.CurrentX = nil
Mouse.CurrentY = nil
Mouse.ViewportPosition2d = Vector2.new()

function Mouse:init(Paths)
	self.Paths = Paths
	self.Connections = Paths.UtilityScriptConnections:new(Paths)

	if FastFlags:useQWidgetsForPopupsOn() then
		self:connectWidgetToMouse(Paths.GUIDragArea)
	else
		self.Connections:add(Paths.GUIDragArea.MouseMoved:connect(function(mouseX, mouseY)
			self.CurrentX = mouseX
			self.CurrentY = mouseY
		end))
				
		-- this is only here in-case the user clicks before they have moved the mouse
		self.Connections:add(Paths.GUIDragArea.InputBegan:connect(function(input)
			if Enum.UserInputType.MouseButton1 == input.UserInputType or Enum.UserInputType.MouseButton2 == input.UserInputType then															
				self.CurrentX = input.Position.X
				self.CurrentY = input.Position.Y
			end
		end))
	end

	self.Connections:add(game:GetService("UserInputService").InputChanged:connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self.ViewportPosition2d = Vector2.new(input.Position.X, input.Position.Y)
		end
	end))
end

function Mouse:connectWidgetToMouse(widget)
	self.Connections:add(widget.MouseMoved:connect(function(mouseX, mouseY)
		self.CurrentX = mouseX
		self.CurrentY = mouseY
	end))

	self.Connections:add(widget.InputBegan:connect(function(input)
		if Enum.UserInputType.MouseButton1 == input.UserInputType or Enum.UserInputType.MouseButton2 == input.UserInputType then															
			self.CurrentX = input.Position.X
			self.CurrentY = input.Position.Y
		end
	end))
end

function Mouse:terminate(Paths)
	self.Connections:terminate()
	self.Connections = nil
	
	Mouse.ViewportPosition2d = Vector2.new()
	Mouse.Paths = nil
end

function Mouse:getX()
	return self.CurrentX
end

function Mouse:getY()
	return self.CurrentY
end

function Mouse:getXY()
	return self.CurrentX, self.CurrentY
end

function Mouse:isOver(widget)
	if nil ~= self.CurrentX and nil ~= self.CurrentY then
		return self.CurrentX >= widget.AbsolutePosition.X and self.CurrentX <= widget.AbsolutePosition.X+widget.AbsoluteSize.X and
			self.CurrentY >= widget.AbsolutePosition.Y and self.CurrentY <= widget.AbsolutePosition.Y+widget.AbsoluteSize.Y
	end
	return false
end

function Mouse:getViewportXY()
	return self.ViewportPosition2d
end

return Mouse