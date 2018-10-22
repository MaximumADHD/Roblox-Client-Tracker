local FastFlags = require(script.Parent.Parent.FastFlags)

local Cut = {}
Cut.__index = Cut

-- static function
function Cut:execute(Paths, keyframes, registerUndo)
	registerUndo = registerUndo == nil and true or registerUndo
	if keyframes then
		Paths.UtilityScriptCopyPaste:copy(keyframes)
		if registerUndo then
			Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionCut:new(Paths))
		end
		Paths.DataModelKeyframes:deleteSelectedPosesAndEmptyKeyframes(false)
	end
end

function Cut:executeCutKeyframe(Paths, keyframe)
	if keyframe then
		Paths.UtilityScriptCopyPaste:copyAllKeyframePoses(keyframe)
		Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionCut:new(Paths))
		Paths.DataModelKeyframes:deleteKeyframeAndPoses(keyframe.Time, true)
	end
end

function Cut:new(Paths)
	local self = setmetatable({}, Cut)	 
	self.SubAction = Paths.ActionEditClip:new(Paths, {action = Paths.ActionEditClip.ActionType.cut})
	return self
end

function Cut:undo()
	self.SubAction:undo()	
end

function Cut:redo()
	self.SubAction:redo()
end

function Cut:getDescription()
	return "Cut"
end

return Cut