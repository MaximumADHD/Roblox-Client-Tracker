local BoundingBoxUtils = require(script.Parent.BoundingBoxUtils)

local SelectionInfo = {}
SelectionInfo.__index = SelectionInfo

function SelectionInfo.new(draggerContext, selection)
	return setmetatable(BoundingBoxUtils.computeInfo(draggerContext, selection), SelectionInfo)
end

function SelectionInfo:isEmpty()
	return #self.parts == 0 and #self.attachments == 0
end

function SelectionInfo:getBoundingBox()
	return self.basisCFrame, self.boundingBoxOffset, self.boundingBoxSize
end

function SelectionInfo:doesContainItem(item)
	return self.partSet[item] ~= nil
end

function SelectionInfo:isDynamic()
	return false
end

function SelectionInfo:getLocalBoundingBox()
	return self.localBasisCFrame, self.localBoundingBoxOffset, self.localBoundingBoxSize
end

function SelectionInfo:getObjectsToTransform()
	return self.parts, self.attachments
end

function SelectionInfo:getAllAttachments()
	return self.allAttachments
end

return SelectionInfo