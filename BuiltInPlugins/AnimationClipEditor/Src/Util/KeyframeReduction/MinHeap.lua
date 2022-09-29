--!strict
--[[
	Implementation of a MinHeap specialized for the Visvalingam-Whyatt
	algorithm. It partly relies on each element (Triangle) having an _order
	member to facilitate lookups during removal.
]]

local KeyframeReduction = script.Parent
local Types = require(KeyframeReduction.Types)

local MinHeap = {}
MinHeap.__index = MinHeap

function MinHeap.new(): any
	local heap = { array = {} }
	setmetatable(heap, MinHeap)
	return heap
end

function compare(t0: Types.Triangle, t1: Types.Triangle): number
	return t0.area - t1.area
end

function MinHeap:push(element: Types.Triangle): ()
	table.insert(self.array, element)
	element._order = #self.array
	self:up(#self.array)
	return #self.array
end

function MinHeap:pop(): any
	local removed = self.array[1]
	local element = table.remove(self.array)
	if element and #self.array > 0 then
		element._order = 1
		self.array[1] = element
		self:down(1)
	end
	return removed
end

function MinHeap:remove(removed: Types.Triangle): ()
	local index = removed._order
	local element = table.remove(self.array)
	if element and index ~= #self.array+1 then
		self.array[index] = element
		element._order = index
		if compare(element, removed) < 0 then
			self:up(index)
		else
			self:down(index)
		end
	end
end

function MinHeap:up(index: number): ()
	while index > 1 do
		local parent = math.floor(index / 2)
		if compare(self.array[index], self.array[parent]) >= 0 then
			break
		end
		self.array[parent], self.array[index] = self.array[index], self.array[parent]
		self.array[parent]._order, self.array[index]._order = parent, index
		index = parent
	end
end

function MinHeap:down(index: number): ()
	while true do
		local left = index * 2
		local right = left + 1
		local down = index
		if left <= #self.array and compare(self.array[left], self.array[down]) < 0 then
			down = left
		end
		if right <= #self.array and compare(self.array[right], self.array[down]) < 0 then
			down = right
		end
		if down == index then
			break
		end
		self.array[index], self.array[down] = self.array[down], self.array[index]
		self.array[index]._order, self.array[down]._order = index, down
		index = down
	end
end

return MinHeap
