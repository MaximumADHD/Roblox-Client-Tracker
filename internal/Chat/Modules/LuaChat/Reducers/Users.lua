local Chat = script.Parent.Parent
local ActionType = require(Chat.ActionType)
local Immutable = require(Chat.Immutable)
local UserModel = require(Chat.Models.User)

return function(state, action)
	state = state or {}

	if action.type == ActionType.AddUser then
		state = Immutable.Join(state, {
			[action.user.id] = action.user,
		})
	elseif action.type == ActionType.SetUserIsFriend then
		local user = state[action.userId]
		if user then
			state = Immutable.Join(state, {
				[action.userId] = Immutable.Join(user, {
					isFriend = action.isFriend,
				}),
			})
		end
	elseif action.type == ActionType.ReceivedUserPresence then
		local user = state[action.userId]
		if user then
			state = Immutable.Join(state, {
				[action.userId] = Immutable.Join(user, {
					presence = action.presence,
					lastLocation = action.lastLocation,
				}),
			})
		end
	elseif action.type == ActionType.ReceivedUsername then
		local userId = action.userId
		local user = state[userId]
		if user then
			state = Immutable.Join(state, {
				[userId] = Immutable.Join(user, {
					name = action.username,
				}),
			})
		else
			state = Immutable.Join(state, {
				[userId] = UserModel.fromData(userId, action.username, false),
			})
		end
	end

	return state
end