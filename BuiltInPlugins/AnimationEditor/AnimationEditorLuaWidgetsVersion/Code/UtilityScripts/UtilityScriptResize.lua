local FastFlags = require(script.Parent.Parent.FastFlags)

local Resize = {}
Resize.__index = Resize

function Resize:new(frame, minHeight, boundingFrame)
	local self = setmetatable({}, Resize)

	self.frame = frame
	self.minHeight = minHeight
	self.boundingFrame = boundingFrame

	self.originalWidth = self.frame.AbsoluteSize.X
	self.originalHeight = self.frame.AbsoluteSize.Y

	self.onSizeChanged = self.boundingFrame.Changed:connect(function (property)
		if property == "AbsoluteSize" then
			self:size()
		end
	end)

	self:size()

	return self
end

function Resize:size()
	if self.boundingFrame.AbsoluteSize.Y < self.originalHeight then
		self.frame.Size = UDim2.new(0, self.originalWidth, 0, math.max(self.boundingFrame.AbsoluteSize.Y, self.minHeight))
	else
		self.frame.Size = UDim2.new(0, self.originalWidth, 0, self.originalHeight)
	end
end

function Resize:terminate()
	self.frame = nil
	self.minHeight = nil
	self.boundingFrame = nil

	self.originalWidth = nil
	self.originalHeight = nil
	
	self.onSizeChanged:disconnect()
	self.onSizeChanged = nil
end

return Resize
