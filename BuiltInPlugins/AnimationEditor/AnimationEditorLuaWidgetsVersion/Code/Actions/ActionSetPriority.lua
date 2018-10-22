local SetPriority = {}
SetPriority.__index = SetPriority

function SetPriority:execute(Paths, newPriority)
	Paths.UtilityScriptUndoRedo:registerUndo(SetPriority:new(Paths, newPriority))
end

function SetPriority:new(Paths, newPriority)
	local self = setmetatable({}, SetPriority)
	self.Paths = Paths
	self.oldPriority = self.Paths.DataModelClip:getPriority()
	self.newPriority = newPriority
	self:redo()
	return self
end

function SetPriority:undo()
	self.Paths.DataModelClip:setPriority(self.oldPriority)
end

function SetPriority:redo()
	self.Paths.DataModelClip:setPriority(self.newPriority)
end

function SetPriority:getDescription()
	return "Set Priority"
end

return SetPriority
