--! Do not use this enum, use ContextualInfoTypes instead

local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	Contact = "contact",
	MutualFriends = "mutualFriends",
	Frequents = "frequents",
	None = "none",
})
