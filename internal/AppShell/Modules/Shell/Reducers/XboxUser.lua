local Modules = game:GetService("CoreGui").RobloxGui.Modules
local SetXboxUser = require(Modules.Shell.Actions.SetXboxUser)

return function(state, action)
	state = state or {}

	if action.type == SetXboxUser.name then
		return {
			gamertag = action.gamertag,
			xuid = action.xuid
		}
	end

	return state
end