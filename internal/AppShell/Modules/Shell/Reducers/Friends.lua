local Modules = game:GetService("CoreGui").RobloxGui.Modules
local SetFriendsData = require(Modules.Shell.Actions.SetFriendsData)
local Immutable = require(Modules.Common.Immutable)

--[[
	// action is table
	// Table keys:
		// [index number] - table
			// xuid - number
			// RobloxName - string
			// PlaceId - number
			// RobloxStatus - string
			// robloxuid - number
			// LastLocation - string
			// display (a.k.a. xbox gamertag) - string
			// status - string
			// FriendsSource - string
]]

return function(state, action)
	
	state = state or {
		initialized = false, 
		friendsData = {}
	}

	if action.type == SetFriendsData.name then

		-- Use nil in setFriendsData to reset
		if not action.friendsData then
			return {
				initialized = false,
				friendsData = {}
			}
		end

		-- Make a copy of new friends
		local newFriendsData = Immutable.JoinDictionaries(action.friendsData)

		return {
			initialized = true,
			friendsData = newFriendsData
		}
	end

	return state
end