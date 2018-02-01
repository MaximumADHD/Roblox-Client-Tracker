local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local SetUnder13 = require(Modules.Shell.Actions.SetUnder13)

return function(state, action)
	state = state or {}

	if action.type == SetUnder13.name then
		state = Immutable.Set(state, "Under13", action.status)
	end

	return state
end