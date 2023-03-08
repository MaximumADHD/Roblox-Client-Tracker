local DiscoverabilityModal = script.Parent.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	HomePage = Contexts.HomePage.rawValue() .. "FriendsSort",
	AddFriends = Contexts.AddFriends.rawValue(),
	HomePageProfile = Contexts.HomePage.rawValue() .. "Profile",
	SocialTabProfile = Contexts.SocialTab.rawValue() .. "Profile",
})
