--!nonstrict
local CircularBuffer = {}
CircularBuffer.__index = CircularBuffer

function CircularBuffer.new(size)
	assert(size, "Cannot initialize CircularBuffer with nil")
	assert(size > 0, "Cannot initialize CircularBuffer to size < 1")

	local self = {}
	setmetatable(self, CircularBuffer)

	self._data = {}
	self._backIndex = 0
	self._maxSize = size

	return self
end

function CircularBuffer:reset()
	self._data = {}
	self._backIndex = 0
end

function CircularBuffer:getSize()
	return #self._data
end

function CircularBuffer:getMaxSize()
	return self._maxSize
end

function CircularBuffer:setSize(newSize)
	assert(newSize, "Cannot set CircularBuffer with nil")
	assert(newSize > 0, "Cannot set CircularBuffer to size < 1")
	if newSize == self._maxSize then
		return
	end

	local it = self:iterator()
	local msg = it:next()
	local sorted = {}
	local ind = 0
	while msg and ind < newSize do
		local nextInd = ind + 1

		sorted[nextInd] = {
			entry = msg
		}

		if sorted[ind] then
			sorted[ind]._next = sorted[nextInd]
		end

		ind = nextInd
		msg = it:next()
	end

	self._data = sorted
	self._backIndex = ind
	self._maxSize = newSize
end

function CircularBuffer:getFrontIndex()
	local front = self._backIndex + 1
	if not self._data[front] then
		return 1
	end
	return front
end

function CircularBuffer:front()
	local front = self:getFrontIndex()
	if self._data[front] then
		return self._data[front].entry
	end
	return nil
end

function CircularBuffer:back()
	if self._data[self._backIndex] then
		return self._data[self._backIndex].entry
	end
	return nil
end

function CircularBuffer:iterator()
	local front =  self._data[self:getFrontIndex()]

	local iterator = {
		data = front,
		next = function (self)
			local retVal = self.data
			if retVal then
				self.data = self.data._next
			end
			return retVal and retVal.entry
		end
	}

	return iterator
end

function CircularBuffer:getData()
	return self._data
end

function CircularBuffer:at(ind)
	assert(ind, "Cannot index CircularBuffer with nil")

	local index = self:getFrontIndex()
	index = (index + ind - 2) % self._maxSize + 1
	if self._data[index] then
		return self._data[index].entry
	end
	return nil
end

function CircularBuffer:reverseAt(ind)
	local index = self._backIndex
	index = (index - ind) % self._maxSize + 1
	if self._data[index] then
		return self._data[index].entry
	end
	return nil
end

-- returns the ejected element if newData overwrites
-- the previous front element
function CircularBuffer:push_back(newData)
	local currBackIndex = self._backIndex
	local newBackIndex = self._backIndex + 1
	if newBackIndex > self._maxSize then
		newBackIndex = 1
	end

	local overwrittenData = self._data[newBackIndex]
	self._data[newBackIndex] = {
		entry = newData
	}

	if currBackIndex > 0 then
		self._data[currBackIndex]._next = self._data[newBackIndex]
		if overwrittenData then
			overwrittenData._next = nil
		end
	end

	self._backIndex = newBackIndex
	return overwrittenData and overwrittenData.entry
end

return CircularBuffer