--!strict
local SocialLibraries = script.Parent.Parent.Parent
local dependencies = require(SocialLibraries.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	Contact = "contact",
	MutualFriends = "mutualFriends",
	Frequents = "frequents",
	None = "none",
})
