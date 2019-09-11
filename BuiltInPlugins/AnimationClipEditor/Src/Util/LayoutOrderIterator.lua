-- Used to iterate layout order for UI layouts.

local LayoutOrderIterator = {}
LayoutOrderIterator.__index = LayoutOrderIterator

function LayoutOrderIterator.new()
	local self = {
		order = 0,
	}

	setmetatable(self, LayoutOrderIterator)
	return self
end

function LayoutOrderIterator:getNextOrder()
	self.order = self.order + 1
	return self.order
end

return LayoutOrderIterator