local ToggleLooping = {}
ToggleLooping.__index = ToggleLooping

-- static function
function ToggleLooping:execute(Paths)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionToggleLooping:new(Paths))
end

function ToggleLooping:new(Paths)
	local self = setmetatable({}, ToggleLooping)
	self.Paths = Paths
	self.newVal = not self.Paths.DataModelClip:getLooping()
	self:redo()
	return self
end

function ToggleLooping:undo()	
	self.Paths.DataModelClip:setLooping(not self.newVal)
end

function ToggleLooping:redo()
	self.Paths.DataModelClip:setLooping(self.newVal)
end

function ToggleLooping:getDescription()
	return "Toggle Looping"
end

return ToggleLooping
