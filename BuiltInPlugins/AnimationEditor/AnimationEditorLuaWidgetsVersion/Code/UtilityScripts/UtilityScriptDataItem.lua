local DataItem = {}
DataItem.__index = DataItem

function DataItem:new(Paths, part, motor, originFrame, parentDataItem)
	local self = setmetatable({}, DataItem)
	
	self.Item = part
	self.Name = part.Name
	self.Motor6D = motor
	self.OriginC1 = originFrame
	self.Children = {}
	self.Parent = parentDataItem
							
	return self
end

function DataItem:getName()
	return self.Name
end

function DataItem:getPart()
	return self.Item
end

return DataItem
