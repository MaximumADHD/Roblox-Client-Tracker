local FastFlags = require(script.Parent.Parent.FastFlags)

local EditLength = {}

function EditLength:execute(Paths, newLength)
	if not Paths.DataModelClip:isLengthOk(newLength)	then
		return
	end

	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionEditClip:new(Paths, {action = Paths.ActionEditClip.ActionType.lengthChange}))
	Paths.DataModelClip:setLength(newLength)
end

return EditLength
