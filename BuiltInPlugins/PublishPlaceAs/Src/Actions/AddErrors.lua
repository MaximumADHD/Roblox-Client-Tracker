-- Adds a value to the Settings Error table.

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(errors)
	assert(errors ~= nil, "AddErrors argument cannot be nil")

	local errmsg = "AddErrors: Can't clear ALL errors by passing Cryo.None. Pass Cryo.None as a specific value"
	assert(errors ~= Cryo.None, errmsg)

	errmsg = "AddErrors argument must be a table, not %s"
	assert(type(errors) == "table", string.format(errmsg, type(errors)))

	return {
		errors = errors,
	}
end)
