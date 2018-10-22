local FastFlags = require(script.Parent.Parent.FastFlags)

local Drag = {}
Drag.__index = Drag

function Drag:canCreate(Paths)
	return nil ~= Paths.GUIDragArea
end

function Drag:new(Paths, dragable, setOffset)
	local self = setmetatable({}, Drag)
	self.dragable = dragable
	
	self.DragStartEvent = Paths.UtilityScriptEvent:new()
	self.DragEvent = Paths.UtilityScriptEvent:new()
	self.DragEndEvent = Paths.UtilityScriptEvent:new() 
	
	self.onMouseMoved = Paths.GUIDragArea.MouseMoved:connect(function(mouseX, mouseY)
		self.MouseX = mouseX
		self.MouseY = mouseY
		
		if self.currentlyDragging then
			local newXPos = self.MouseX-self.ClickOffsetX
			local newYPos = self.MouseY-self.ClickOffsetY
			
			local newLocalXOffset = newXPos-dragable.Parent.AbsolutePosition.X
			local newLocalYOffset = newYPos-dragable.Parent.AbsolutePosition.Y
			
			if setOffset then
				dragable.Position = UDim2.new(0, newLocalXOffset, 0, newLocalYOffset)	
			else			
				local newLocalXScale = newLocalXOffset/dragable.Parent.AbsoluteSize.X
				local newLocalYScale = newLocalYOffset/dragable.Parent.AbsoluteSize.Y
				
				dragable.Position = UDim2.new(newLocalXScale, 0, newLocalYScale, 0)
			end
			
			self.DragEvent:fire()
		end
	end)

	self.onDragBegin = dragable.InputBegan:connect(function(input) self:beginDrag(input) end)
	self.onDragEnd = dragable.InputEnded:connect(function(input) self:endDrag(input) end)

	return self
end

function Drag:beginDrag(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.currentlyDragging = true	
		self.MouseX, self.MouseY = input.Position.X, input.Position.Y	
		self.ClickOffsetX = self.MouseX-(self.dragable.AbsolutePosition.X+(self.dragable.AbsoluteSize.X*self.dragable.AnchorPoint.X))
		self.ClickOffsetY = self.MouseY-(self.dragable.AbsolutePosition.Y+(self.dragable.AbsoluteSize.Y*self.dragable.AnchorPoint.Y))
		self.DragStartEvent:fire()
	end
end

function Drag:endDrag(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 and self.currentlyDragging then
		self.currentlyDragging = false
		self.DragEndEvent:fire()
	end
end

function Drag:isDragging()
	return self.currentlyDragging
end

function Drag:terminate()
	self.onDragEnd:disconnect()
	self.onDragBegin:disconnect()
	self.onMouseMoved:disconnect()
	
	self.DragEndEvent = nil
	self.DragEvent = nil
	self.DragStartEvent = nil
	
	self.dragable = nil
end

return Drag
