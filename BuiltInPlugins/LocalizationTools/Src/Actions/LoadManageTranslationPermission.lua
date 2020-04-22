local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework.Util).Action

return Action(script.Name, function(canManage)
	assert(type(canManage) == "boolean", "Expected canManage to be a boolean")
	return {
		canManageTranslation = canManage,
	}
end)