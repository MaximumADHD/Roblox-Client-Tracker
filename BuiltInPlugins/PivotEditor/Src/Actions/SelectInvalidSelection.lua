local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

local EditingMode = require(Plugin.Src.Utility.EditingMode)

return Action(script.Name, function(statusMessage)
	assert(type(statusMessage) == "string")
	return {
		statusMessage = statusMessage,
		editingMode = EditingMode.None,
	}
end)