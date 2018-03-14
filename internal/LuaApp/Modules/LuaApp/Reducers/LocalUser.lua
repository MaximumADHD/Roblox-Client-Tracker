local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local SetLocalUser = require(Modules.LuaApp.Actions.SetLocalUser)

return function(state, action)
	state = state or {}

	if action.type == SetLocalUser.name then
		state = Immutable.JoinDictionaries(state, {
			name = action.name,
			membership = action.membership,
		})
	end

	return state
end