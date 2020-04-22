local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Packages.Framework.Util).Action

return Action(script.Name, function(isBusy)
	assert(type(isBusy) == "boolean", "Expected isBusy to be a boolean")
	return {
		isBusy = isBusy,
	}
end)