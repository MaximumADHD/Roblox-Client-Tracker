local Plugin = script.Parent.Parent.Parent

local EditingMode = require(Plugin.Src.Utility.EditingMode)

local Framework = Plugin.Packages.Framework
local Action = require(Framework).Util.Action

-- Types of editing mode that we can begin selecting pivot with
local VALID_TYPES = {
	[EditingMode.SelectGeometry] = true,
	[EditingMode.SelectSurface] = true,
	[EditingMode.SelectPart] = true,
}

return Action(script.Name, function(editingMode, statusMessage)
	assert(EditingMode.isEnumValue(editingMode))
	assert(VALID_TYPES[editingMode])
	assert(type(statusMessage) == "string")
	return {
		editingMode = editingMode,
		statusMessage = statusMessage,
	}
end)