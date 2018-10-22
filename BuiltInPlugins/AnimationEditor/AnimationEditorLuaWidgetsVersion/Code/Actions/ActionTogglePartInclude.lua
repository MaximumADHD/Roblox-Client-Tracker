local TogglePartInclude = {}
TogglePartInclude.__index = TogglePartInclude

-- static function
function TogglePartInclude:execute(Paths, partName)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionTogglePartInclude:new(Paths, partName))
end

function TogglePartInclude:new(Paths, partName)
	local self = setmetatable({}, TogglePartInclude)
	self.Paths = Paths
	self.PartName = partName
	self.newVal = not self.Paths.DataModelRig:getPartInclude(self.PartName)
	self:redo()
	return self
end

function TogglePartInclude:undo()	
	self.Paths.DataModelRig:setPartInclude(self.PartName, not self.newVal)
end

function TogglePartInclude:redo()
	self.Paths.DataModelRig:setPartInclude(self.PartName, self.newVal)
end

function TogglePartInclude:getDescription()
	return "Toggle Lock"
end

return TogglePartInclude
