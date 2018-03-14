local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Chat = script.Parent.Parent
local ActionType = require(Chat.ActionType)
local Immutable = require(Modules.Common.Immutable)

return function(state, action)
	state = state or {}

	if action.type == ActionType.RequestAllFriends then
		return Immutable.JoinDictionaries(state, {
			allFriendsIsFetching = true,
		})
	elseif action.type == ActionType.ReceivedAllFriends then
		return Immutable.JoinDictionaries(state, {
			allFriendsIsFetching = false,
		})
	elseif action.type == ActionType.RequestUserPresence then
		local userAsync = state[action.userId] or {}
		return Immutable.JoinDictionaries(state, {
			[action.userId] = Immutable.JoinDictionaries(userAsync, {
				presenceIsFetching = true,
			}),
		})
	elseif action.type == ActionType.ReceivedUserPresence then
		local userAsync = state[action.userId]
		if userAsync then
			return Immutable.JoinDictionaries(state, {
				[action.userId] = Immutable.JoinDictionaries(userAsync, {
					presenceIsFetching = false,
				}),
			})
		end
	elseif action.type == ActionType.RequestUsername then
		local userAsync = state[action.userId] or {}
		return Immutable.JoinDictionaries(state, {
			[action.userId] = Immutable.JoinDictionaries(userAsync, {
				nameIsFetching = true,
			}),
		})
	end

	return state
end