-- main AppShell reducer
local Reducers = script.Parent

-- TODO: remove ActiveUser when FFlagXboxUserStateRodux is removed, user state is being moved into
-- RobloxUser and XboxUser
local ActiveUser = require(Reducers.ActiveUser)
local RobloxUser = require(Reducers.RobloxUser)
local XboxUser = require(Reducers.XboxUser)

return function(state, action)
	state = state or {}

	return {
		-- Use reducer composition to add reducers here
		ActiveUser = ActiveUser(state.ActiveUser, action),
		RobloxUser = RobloxUser(state.RobloxUser, action),
		XboxUser = XboxUser(state.XboxUser, action),
	}
end
