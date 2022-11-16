local UserLib = script:FindFirstAncestor("UserLib")
local Packages = UserLib.Parent

local Immutable = require(Packages.AppCommonLib).Immutable

local AddUser = require(UserLib.Actions).AddUser
local AddUsers = require(UserLib.Actions).AddUsers
local ReceivedUserPresence = require(UserLib.Actions).ReceivedUserPresence
local RemoveUser = require(UserLib.Actions).RemoveUser
local SetUserIsFriend = require(UserLib.Actions).SetUserIsFriend
local SetUserMembershipType = require(UserLib.Actions).SetUserMembershipType
local SetUserPresence = require(UserLib.Actions).SetUserPresence
local SetUserThumbnail = require(UserLib.Actions).SetUserThumbnail
local ReceivedDisplayName = require(UserLib.Actions).ReceivedDisplayName

-- FIXME: any type Rodux
return function(state: any?, action: any)
	state = state or {}
	assert(state, "")

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
