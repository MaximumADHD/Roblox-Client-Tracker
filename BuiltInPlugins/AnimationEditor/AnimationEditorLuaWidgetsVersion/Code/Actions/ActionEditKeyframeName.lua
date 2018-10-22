-- singleton

local EditKeyframeName = {}

function EditKeyframeName:execute(Paths, keyframe)
	Paths.GUIScriptPopUpInput:show("Edit Keyframe Name", keyframe.Name, function(newKeyframeName)
		if newKeyframeName ~= keyframe.Name then
			Paths.ActionEditClip:execute(Paths, Paths.ActionEditClip.ActionType.editKeyframeName)
			keyframe.Name = newKeyframeName
			Paths.DataModelKeyframes.ChangedEvent:fire(Paths.DataModelKeyframes.keyframeList)
		end
	end)
end

return EditKeyframeName