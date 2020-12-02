local CorePackages = game:GetService("CorePackages")

local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)

local AddUser = require(CorePackages.AppTempCommon.LuaApp.Actions.AddUser)
local AddUsers = require(CorePackages.AppTempCommon.LuaApp.Actions.AddUsers)
local ReceivedUserPresence = require(CorePackages.AppTempCommon.LuaChat.Actions.ReceivedUserPresence)
local RemoveUser = require(CorePackages.AppTempCommon.LuaApp.Actions.RemoveUser)
local SetUserIsFriend = require(CorePackages.AppTempCommon.LuaApp.Actions.SetUserIsFriend)
local SetUserMembershipType = require(CorePackages.AppTempCommon.LuaApp.Actions.SetUserMembershipType)
local SetUserPresence = require(CorePackages.AppTempCommon.LuaApp.Actions.SetUserPresence)
local SetUserThumbnail = require(CorePackages.AppTempCommon.LuaApp.Actions.SetUserThumbnail)
local ReceivedDisplayName = require(CorePackages.AppTempCommon.LuaApp.Actions.ReceivedDisplayName)

return function(state, action)
	state = state or {}

	if action.type == AddUser.name then
		local user = action.user
		state = Immutable.Set(state, user.id, user)
	elseif action.type == AddUsers.name then
		local addedUsers = action.users
		local usersUpdate = {}
		for userId, addedUser in pairs(addedUsers) do
			local existingUser = state[userId]
			if existingUser then
				usersUpdate[userId] = Immutable.JoinDictionaries(existingUser, addedUser)
			else
				usersUpdate[userId] = addedUser
			end
		end

		state = Immutable.JoinDictionaries(state, usersUpdate)

	elseif action.type == SetUserIsFriend.name then
		local user = state[action.userId]
		if user then
			local newUser = Immutable.Set(user, "isFriend", action.isFriend)
			state = Immutable.Set(state, user.id, newUser)
		else
			warn("Setting isFriend on user", action.userId, "who doesn't exist yet")
		end
	elseif action.type == SetUserPresence.name then
		local user = state[action.userId]
		if user then
			local newUser = Immutable.JoinDictionaries(user, {
				presence = action.presence,
				lastLocation = action.lastLocation,
			})
			state = Immutable.Set(state, user.id, newUser)
		else
			warn("Setting presence on user", action.userId, "who doesn't exist yet")
		end
	elseif action.type == ReceivedUserPresence.name then
		local user = state[action.userId]
		if user then
			state = Immutable.JoinDictionaries(state, {
				[action.userId] = Immutable.JoinDictionaries(user, {
					presence = action.presence,
					lastLocation = action.lastLocation,
					placeId = action.placeId,
					rootPlaceId = action.rootPlaceId,
					gameInstanceId = action.gameInstanceId,
					lastOnline = action.lastOnline,
					universeId = action.universeId,
				}),
			})
		end
	elseif action.type == SetUserThumbnail.name then
		local user = state[action.userId]
		if user then
			local thumbnails = user.thumbnails or {}
			state = Immutable.JoinDictionaries(state, {
				[action.userId] = Immutable.JoinDictionaries(user, {
					thumbnails = Immutable.JoinDictionaries(thumbnails, {
						[action.thumbnailType] = Immutable.JoinDictionaries(thumbnails[action.thumbnailType] or {}, {
							[action.thumbnailSize] = action.image,
						}),
					}),
				}),
			})
		end
	elseif action.type == SetUserMembershipType.name then
		local user = state[action.userId]
		if user then
			state = Immutable.JoinDictionaries(state, {
				[action.userId] = Immutable.JoinDictionaries(user, {
					membership = action.membershipType,
				}),
			})
		end
	elseif action.type == RemoveUser.name then
		if state[action.userId] then
			state = Immutable.RemoveFromDictionary(state, action.userId)
		end
	elseif action.type == ReceivedDisplayName.name then
		local user = state[action.userId]
		if user then
			state = Immutable.JoinDictionaries(state, {
				[action.userId] = Immutable.JoinDictionaries(user, {
					displayName = action.displayName,
				}),
			})
		end
	end
	return state
end
