local LinkedList = {}
LinkedList.__index = LinkedList

LinkedList.createNode = function(value)
	local node =  {
		previous = nil,
		next = nil,
		value = value,
	}

	setmetatable(node, LinkedList)

	return node
end

-- Inserts a new node between the 'self' node and its 'next' node. Can also be used to append a node to the end
function LinkedList:CreateNext(value)
	local nextNode = {
		previous = self,
		next = self.next,
		value = value or {},
	}

	if self.next then
		self.next.previous = nextNode
	end

	setmetatable(nextNode, LinkedList)
	self.next = nextNode
	return nextNode
end


-- Inserts a new node between the 'self' node and its 'previous' node. Can also prepend a node to the beginning
function LinkedList:CreatePrevious(value)
	local previousNode = {
		previous = self.previous,
		next = self,
		value = value or {},
	}

	if self.previous then
		self.previous.next = previousNode
	end

	setmetatable(previousNode, LinkedList)
	self.previous = previousNode
	return previousNode
end

return LinkedList
