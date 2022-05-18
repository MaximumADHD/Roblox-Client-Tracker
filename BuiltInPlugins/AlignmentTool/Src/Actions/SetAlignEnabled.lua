local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(enabled, reason)
	assert(type(enabled) == "boolean", "Expected enabled to be a boolean")
	assert(type(reason) == "table" or reason == nil, "Expected reason to be a table or nil")

	reason = reason or {}

	return {
		alignEnabled = enabled,
		disabledReason = reason,
	}
end)
