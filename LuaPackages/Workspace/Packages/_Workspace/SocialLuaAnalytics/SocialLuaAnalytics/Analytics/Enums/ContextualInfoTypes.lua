local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate

--* This file is intended for all uses of contextual info

return enumerate(script.Name, {
	IsMyself = "isMyself",
	PreviousUsername = "previousUsername",
	Friend = "friend",
	Following = "following",
	MutualFriends = "mutualFriends",
	Frequents = "frequents",
})
