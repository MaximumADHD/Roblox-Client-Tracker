local Chat = script.Parent.Parent
local ActionType = require(Chat.ActionType)
local Immutable = require(Chat.Immutable)
local UserModel = require(Chat.Models.User)

return function(state, action)
	state = state or {}

	if action.type == ActionType.AddUser then
		local user = action.user
		state = Immutable.Set(state, user.id, user)
	elseif action.type == ActionType.SetUserIsFriend then
		local user = state[action.userId]
		if user then
			local newUser = Immutable.Set(user, "isFriend", action.isFriend)
			state = Immutable.Set(state, user.id, newUser)
		end
	elseif action.type == ActionType.GotUserPresence then
		local user = state[action.userId]
		if user then
			local newUser = Immutable.Set(user, "presence", action.presence)
			newUser = Immutable.Set(newUser, "lastLocation", action.lastLocation)
			state = Immutable.Set(state, user.id, newUser)
		end
	elseif action.type == ActionType.ReceivedUsername then
		local userId = action.userId
		local user = state[userId]
		if user then
			local newUser = Immutable.Set(user, "name", action.username)
			state = Immutable.Set(state, userId, newUser)
		else
			local newUser = UserModel.fromData(action.userId, action.username, false)
			state = Immutable.Set(state, userId, newUser)
		end
	end

	return state
end