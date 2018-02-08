local Chat = script.Parent.Parent
local ActionType = require(Chat.ActionType)
local Immutable = require(Chat.Immutable)

return function(state, action)
	state = state or {}

	if action.type == ActionType.RequestAllFriends then
		return Immutable.Join(state, {
			allFriendsIsFetching = true,
		})
	elseif action.type == ActionType.ReceivedAllFriends then
		return Immutable.Join(state, {
			allFriendsIsFetching = false,
		})
	elseif action.type == ActionType.RequestUserPresence then
		local userAsync = state[action.userId] or {}
		return Immutable.Join(state, {
			[action.userId] = Immutable.Join(userAsync, {
				presenceIsFetching = true,
			}),
		})
	elseif action.type == ActionType.ReceivedUserPresence then
		local userAsync = state[action.userId]
		if userAsync then
			return Immutable.Join(state, {
				[action.userId] = Immutable.Join(userAsync, {
					presenceIsFetching = false,
				}),
			})
		end
	elseif action.type == ActionType.RequestUsername then
		local userAsync = state[action.userId] or {}
		return Immutable.Join(state, {
			[action.userId] = Immutable.Join(userAsync, {
				nameIsFetching = true,
			}),
		})
	elseif action.type == ActionType.ReceivedUsername then
		local userAsync = state[action.userId]
		if userAsync then
			return Immutable.Join(state, {
				[action.userId] = Immutable.Join(userAsync, {
					nameIsFetching = false,
				}),
			})
		end
	end

	return state
end