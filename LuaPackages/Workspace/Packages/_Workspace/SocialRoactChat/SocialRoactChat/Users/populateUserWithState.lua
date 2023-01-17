local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
local dependencies = require(SocialRoactChat.dependencies)
local Cryo = dependencies.Cryo

local User = dependencies.SocialLibraries.User
local getUserDisplayName = User.getUserDisplayName

local getThumbnailsForUserIds = require(script.Parent.getThumbnailsForUserIds)
local RoduxAliases = dependencies.RoduxAliases
local RoduxPresence = dependencies.RoduxPresence

local formatAlias = dependencies.SocialLibraries.Utils.formatAlias
local userPresenceUtils = require(script.Parent.userPresenceUtils)

return function(state, user)
	local presenceData = RoduxPresence.Selectors.getUserPresenceByUserId(state, user.id)
	local presence = userPresenceUtils.getUserDisplayPresence(presenceData, user.id == state.LocalUserId)

	local userDisplayAlias
	local aliasesReducer = state.RoactChatReducer.Aliases
	-- check to see if reducer has been initialized
	if aliasesReducer then
		local unformattedAlias = RoduxAliases.Selectors.getAliasByUserId(state, user.id)
		userDisplayAlias = unformattedAlias and formatAlias(unformattedAlias) or nil
	end

	return Cryo.Dictionary.join(user, {
		isLocalUser = state.LocalUserId == user.id,
		displayName = getUserDisplayName(state, user),
		alias = userDisplayAlias,
		presenceText = presence.text,
		presenceImage = presence.image,
		thumbnail = getThumbnailsForUserIds({ user.id })[1],
	})
end
