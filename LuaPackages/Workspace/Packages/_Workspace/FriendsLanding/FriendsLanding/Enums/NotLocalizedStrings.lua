local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	StudioPresenceTextGlobal = "Roblox Studio",
	StudioPresenceTextLuobu = "LuoBu Studio",
})
