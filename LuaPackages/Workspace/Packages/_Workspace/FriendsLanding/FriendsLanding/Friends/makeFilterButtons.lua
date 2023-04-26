local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local filterStates = require(FriendsLanding.Friends.filterStates)

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

if getFFlagFriendsLandingInactiveFriendsEnabled() then
	return function(localizedStrings, showInactiveFilterOption)
		if showInactiveFilterOption then
			return {
				{ text = localizedStrings.all, id = filterStates.All },
				{ text = localizedStrings.online, id = filterStates.Online },
				{ text = localizedStrings.inExperience, id = filterStates.InExperience },
				{ text = localizedStrings.offline, id = filterStates.Offline },
				{ text = localizedStrings.inactive, id = filterStates.Inactive },
			}
		else
			return {
				{ text = localizedStrings.all, id = filterStates.All },
				{ text = localizedStrings.online, id = filterStates.Online },
				{ text = localizedStrings.inExperience, id = filterStates.InExperience },
				{ text = localizedStrings.offline, id = filterStates.Offline },
			}
		end
	end
else
	return function(localizedStrings, _)
		return {
			{ text = localizedStrings.all, id = filterStates.All },
			{ text = localizedStrings.online, id = filterStates.Online },
			{ text = localizedStrings.inExperience, id = filterStates.InExperience },
			{ text = localizedStrings.offline, id = filterStates.Offline },
		}
	end
end
