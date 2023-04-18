local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

return function(localizedStrings)
	return if getFFlagFriendsLandingInactiveFriendsEnabled()
		then {
			{ text = localizedStrings.all, id = filterStates.All },
			{ text = localizedStrings.online, id = filterStates.Online },
			{ text = localizedStrings.inExperience, id = filterStates.InExperience },
			{ text = localizedStrings.offline, id = filterStates.Offline },
			{ text = localizedStrings.inactive, id = filterStates.Inactive },
		}
		else {
			{ text = localizedStrings.all, id = filterStates.All },
			{ text = localizedStrings.online, id = filterStates.Online },
			{ text = localizedStrings.inExperience, id = filterStates.InExperience },
			{ text = localizedStrings.offline, id = filterStates.Offline },
		}
end
