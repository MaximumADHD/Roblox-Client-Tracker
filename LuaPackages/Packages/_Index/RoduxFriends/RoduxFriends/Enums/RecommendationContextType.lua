local Packages = script.Parent.Parent.Parent
local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	None = "None",
	MutualFriends = "MutualFriends",
	Frequents = "Frequents",
})
