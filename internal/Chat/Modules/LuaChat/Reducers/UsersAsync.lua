local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ReceivedAllFriends = require(Modules.LuaChat.Actions.ReceivedAllFriends)
local ReceivedUserPresence = require(Modules.LuaChat.Actions.ReceivedUserPresence)
local RequestAllFriends = require(Modules.LuaChat.Actions.RequestAllFriends)
local RequestUserPresence = require(Modules.LuaChat.Actions.RequestUserPresence)

local Immutable = require(Modules.Common.Immutable)

return function(state, action)
	state = state or {}

	if action.type == RequestAllFriends.name then
		return Immutable.JoinDictionaries(state, {
			allFriendsIsFetching = true,
		})
	elseif action.type == ReceivedAllFriends.name then
		return Immutable.JoinDictionaries(state, {
			allFriendsIsFetching = false,
		})
	elseif action.type == RequestUserPresence.name then
		local userAsync = state[action.userId] or {}
		return Immutable.JoinDictionaries(state, {
			[action.userId] = Immutable.JoinDictionaries(userAsync, {
				presenceIsFetching = true,
			}),
		})
	elseif action.type == ReceivedUserPresence.name then
		local userAsync = state[action.userId]
		if userAsync then
			return Immutable.JoinDictionaries(state, {
				[action.userId] = Immutable.JoinDictionaries(userAsync, {
					presenceIsFetching = false,
				}),
			})
		end
	end

	return state
end