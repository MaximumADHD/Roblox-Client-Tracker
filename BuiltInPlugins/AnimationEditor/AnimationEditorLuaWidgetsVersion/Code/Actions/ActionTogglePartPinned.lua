local TogglePartPinned = {}
TogglePartPinned.__index = TogglePartPinned

-- static function
function TogglePartPinned:execute(Paths, partName)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionTogglePartPinned:new(Paths, partName))
end

function TogglePartPinned:new(Paths, partName)
	local self = setmetatable({}, TogglePartPinned)
	self.Paths = Paths
	self.PartName = partName
	self.newVal = not self.Paths.DataModelRig:getPartPinned(self.PartName)
	self:redo()
	local dataItem = self.Paths.DataModelSession:getSelectedDataItem()
	if dataItem then
		self.Paths.DataModelIKManipulator:determineIKChain(dataItem)
	end
	return self
end

function TogglePartPinned:undo()	
	self.Paths.DataModelRig:setPartPinned(self.PartName, not self.newVal)
end

function TogglePartPinned:redo()
	self.Paths.DataModelRig:setPartPinned(self.PartName, self.newVal)
end

function TogglePartPinned:getDescription()
	return "Toggle Pin"
end

return TogglePartPinned
