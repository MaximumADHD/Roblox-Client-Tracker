local FastFlags = require(script.Parent.Parent.FastFlags)

local Move = {}
Move.__index = Move

-- static function
function Move:execute(Paths, time, scaleFactor)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionMove:new(Paths))

	if FastFlags:isAnimationEventsOn() then
		Paths.UtilityScriptCopyPaste:cut(false)
	else
		Paths.UtilityScriptCopyPaste:cut(Paths.DataModelSession:getSelectedKeyframes(), false)
	end

	if FastFlags:isFixRenameKeyOptionOn() then
		Paths.UtilityScriptCopyPaste:paste(time, scaleFactor, false)
	else
		Paths.UtilityScriptCopyPaste:paste(time, false)
	end

	if FastFlags:isAnimationEventsOn() then
		Paths.UtilityScriptCopyPaste:resetCopyItems()
	else
		Paths.UtilityScriptCopyPaste:resetCopyPoses()
	end
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