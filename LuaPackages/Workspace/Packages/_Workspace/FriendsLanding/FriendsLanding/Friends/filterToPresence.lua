local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType
local filterStates = require(FriendsLanding.Friends.filterStates)

return function(filter)
	if filter == filterStates.InExperience then
		return { PresenceType.InGame, PresenceType.InStudio }
	elseif filter == filterStates.Offline then
		return { PresenceType.Offline }
	elseif filter == filterStates.Online then
		return { PresenceType.Online, PresenceType.InStudio, PresenceType.InGame }
	else
		return { PresenceType.Online, PresenceType.InStudio, PresenceType.InGame, PresenceType.Offline }
	end
end
