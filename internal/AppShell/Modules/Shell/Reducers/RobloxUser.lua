local Modules = game:GetService("CoreGui").RobloxGui.Modules
local SetRobloxUser = require(Modules.Shell.Actions.SetRobloxUser)

return function(state, action)
	state = state or {}

	if action.type == SetRobloxUser.name then
		return {
			robloxName = action.robloxName,
			rbxuid = action.rbxuid,
			under13 = action.under13
		}
	end

	return state
end