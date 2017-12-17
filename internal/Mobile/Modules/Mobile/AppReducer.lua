local Modules = script.Parent.Parent
local Immutable = require(Modules.Common.Immutable)

return function(state, action)
	state = state or {OpenApp = "", Paramters = {}}

	if action.type == "OpenApp" then
		state = Immutable.Set(state, "OpenApp", action.appName)
		state = Immutable.Set(state, "Parameters", action.parameters)
	end

	return state
end

