local BoundingBoxUtils = require(script.Parent.BoundingBoxUtils)
local Plugin = script.Parent.Parent.Parent.Parent
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Constants = require(Plugin.Src.Util.Constants)

local SelectionInfo = {}
SelectionInfo.__index = SelectionInfo

function SelectionInfo.new(draggerContext, selection)
	local self = setmetatable(BoundingBoxUtils.computeInfo(draggerContext, selection), SelectionInfo)
	self.joints = self.draggerContext.RootInstance and RigUtils.getJoints(self.parts, self.draggerContext.RootInstance) or nil
	return self
end

function SelectionInfo:isEmpty()
	return #self.parts == 0 and #self.attachments == 0 and #self.bones == 0
end


function SelectionInfo:getBoundingBox()
	local useLocalSpace = self.draggerContext:shouldUseLocalSpace()
	local selectParts = #self.parts > 0 and true or false
	local currSelection = selectParts and self.joints or self.bones

	if #currSelection > 0 then 
		local lastSelection = currSelection[#currSelection]
		if not selectParts then
			if useLocalSpace then
				return (lastSelection.TransformedWorldCFrame), Vector3.new(), Vector3.new()
			else
				return CFrame.new((lastSelection.TransformedWorldCFrame).Position), Vector3.new(), Vector3.new()
			end
		else 
			if useLocalSpace then
				return (lastSelection.Part1.CFrame * lastSelection.C1), Vector3.new(), Vector3.new()
			else
				return CFrame.new((lastSelection.Part1.CFrame * lastSelection.C1).Position), Vector3.new(), Vector3.new()
			end
		end
	end
	return self.basisCFrame, self.boundingBoxOffset, self.boundingBoxSize
end

function SelectionInfo:doesContainItem(item)
	return self.partSet[item] ~= nil
end

function SelectionInfo:isDynamic()
	return false
end

function SelectionInfo:getObjectsToTransform()
	local objectsToTransform = self.parts
	for _, bone in ipairs(self.bones) do
		table.insert(objectsToTransform, bone)
	end
	return objectsToTransform, self.attachments
end

function SelectionInfo:getAllAttachments()
	return self.allAttachments
end

return SelectionInfo