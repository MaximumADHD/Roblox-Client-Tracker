local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)

return function(localizedStrings)
	return {
		{ text = localizedStrings.all, id = filterStates.All },
		{ text = localizedStrings.online, id = filterStates.Online },
		{ text = localizedStrings.inExperience, id = filterStates.InExperience },
		{ text = localizedStrings.offline, id = filterStates.Offline },
	}
end
