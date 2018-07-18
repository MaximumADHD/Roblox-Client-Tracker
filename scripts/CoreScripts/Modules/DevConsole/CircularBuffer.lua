local CircularBuffer = {}
CircularBuffer.__index = CircularBuffer

function CircularBuffer.new(size)
	-- just dont do this
	if size == 0 then
		return nil
	end

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

function CircularBuffer:setSize(newSize)
	if newSize == self._maxSize or newSize == 0 then
		return
	end

	local sorted = self:getOrdered()
	if newSize > self._maxSize then
		self._data = sorted
		self._backIndex = self._maxSize
	else
		local newDataSet = {}
		for i = 1, newSize do
			newDataSet[i] = sorted[i]
		end
		self._data = newDataSet
		self._backIndex = newSize
	end

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
	return self._data[front].entry
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

function CircularBuffer:back()
	return self._data[self._backIndex].entry
end

function CircularBuffer:getData()
	return self._data
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