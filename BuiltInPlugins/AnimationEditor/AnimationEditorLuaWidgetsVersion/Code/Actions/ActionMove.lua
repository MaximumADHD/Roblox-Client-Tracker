local FastFlags = require(script.Parent.Parent.FastFlags)

local Move = {}
Move.__index = Move

-- static function
function Move:execute(Paths, time)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionMove:new(Paths))
	Paths.UtilityScriptCopyPaste:cut(Paths.DataModelSession:getSelectedKeyframes(), false)
	Paths.UtilityScriptCopyPaste:paste(time, false)
	Paths.UtilityScriptCopyPaste:resetCopyPoses()
end

function Move:new(Paths)
	local self = setmetatable({}, Move)	 
	self.SubAction = Paths.ActionEditClip:new(Paths, {action = Paths.ActionEditClip.ActionType.keyframeMove})
	return self
end

function Move:undo()
	self.SubAction:undo()	
end

function Move:redo()
	self.SubAction:redo()
end

function Move:getDescription()
	return "Move"
end

return Move