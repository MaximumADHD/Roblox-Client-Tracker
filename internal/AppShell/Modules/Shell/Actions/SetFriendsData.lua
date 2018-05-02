local CoreGui = game:GetService("CoreGui")
local Action = require(CoreGui.RobloxGui.Modules.Common.Action)
local Immutable = require(CoreGui.RobloxGui.Modules.Common.Immutable)

--[[
	// friendsData is table
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

return Action("SetFriendsData", function(friendsData)
	return {
		friendsData = friendsData
	}
end)