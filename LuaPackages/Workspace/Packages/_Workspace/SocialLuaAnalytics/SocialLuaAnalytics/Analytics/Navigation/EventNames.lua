local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate

--* Naming convention [StartScreen]_[OptionalIdentifier]_[EndScreen]
return enumerate(script.Name, {
	HomePage_AddFriends = "HomePage_AddFriends",
	HomePage_Carousel_LuaProfile = "HomePage_Carousel_LuaProfile",
	HomePage_Carousel_FriendsLanding = "HomePage_Carousel_FriendsLanding",
	MorePage_FriendsLanding = "MorePage_FriendsLanding",
})
