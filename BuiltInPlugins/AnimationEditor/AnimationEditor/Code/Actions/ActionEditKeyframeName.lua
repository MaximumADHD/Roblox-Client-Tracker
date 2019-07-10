-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local EditKeyframeName = {}

function EditKeyframeName:execute(Paths, keyframe)
	Paths.GUIScriptPopUpInput:show("Edit Keyframe Name", keyframe.Name, function(newKeyframeName)
		if newKeyframeName ~= keyframe.Name then
			Paths.ActionEditClip:execute(Paths, Paths.ActionEditClip.ActionType.editKeyframeName)
			keyframe.Name = newKeyframeName
			if FastFlags:isOptimizationsEnabledOn() then
				Paths.DataModelKeyframes:buildKeyframeListDiff(keyframe.Time, keyframe)
				Paths.DataModelKeyframes:fireChangedEvent()
			else
				Paths.DataModelKeyframes.ChangedEvent:fire(Paths.DataModelKeyframes.keyframeList)
			end
		end
	end)
end

return EditKeyframeName