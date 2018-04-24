local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Immutable = require(Modules.Common.Immutable)

local RetrievalStatus = require(Modules.LuaApp.Enum.RetrievalStatus)
local FetchingUser = require(Modules.LuaChat.Actions.FetchingUser)
local AddUser = require(Modules.LuaApp.Actions.AddUser)

return function(state, action)
	state = state or {}

	if action.type == FetchingUser.name then
		state = Immutable.Set(state, action.userId, action.status)
	elseif action.type == AddUser.name then
		state = Immutable.Set(state, action.user.id, RetrievalStatus.Done)
	end

	return state
end