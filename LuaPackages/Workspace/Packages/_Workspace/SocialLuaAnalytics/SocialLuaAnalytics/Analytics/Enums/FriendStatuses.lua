local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	NotFriends = "nonfriend",
	Friends = "friend",
	RequestSent = "requestSent",
	RequestReceived = "requestReceived",
	Ineligible = "ineligible",
	Recommendation = "recommendation",
})
