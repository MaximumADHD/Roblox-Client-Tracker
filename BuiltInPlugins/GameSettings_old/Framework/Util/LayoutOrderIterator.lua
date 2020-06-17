--[[
	A simple counting utility that dynamically generates an index.
	So when adding or removing elements from components organized by LayoutOrder,  
	you no longer need to update the indices.
	
	Example:
		function Foo:render()
			local orderItr = LayoutOrderIterator.new()
			return Roact.createElement("Frame", {}, {
				Layout = Roact.createElement("UIListLayout"),
				Part1 = Roact.createElement(..., {
					...
					LayoutOrder = orderItr:getNextOrder(),
					...
				}),
				Part2 = Roact.createElement(..., {
					...
					LayoutOrder = orderItr:getNextOrder(),
					...
				}),
			})
		end
]]

local LayoutOrderIterator = {}
LayoutOrderIterator.__index = LayoutOrderIterator

function LayoutOrderIterator.new()
	local self = setmetatable({}, LayoutOrderIterator)

	self.order = 0

	return self
end

function LayoutOrderIterator:getNextOrder()
	self.order = self.order + 1
	return self.order
end

return LayoutOrderIterator