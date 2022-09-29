local Packages = script:FindFirstAncestor("RoduxGames").Parent
local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	User = "User",
	Group = "Group",
})
