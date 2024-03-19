--!strict
local SocialLibraries = script.Parent.Parent.Parent
local dependencies = require(SocialLibraries.dependencies)
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	NotFriends = "nonfriend",
	Friends = "friend",
	RequestSent = "requestSent",
	RequestReceived = "requestReceived",
	Ineligible = "ineligible",
	Recommendation = "recommendation",
})
