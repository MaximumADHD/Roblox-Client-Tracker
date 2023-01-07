local ContactImporter = script.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local enumerate = dependencies.enumerate

return enumerate(script.Name, {
	HomePage = Contexts.HomePage.rawValue() .. "FriendsSort",
	AddFriends = Contexts.AddFriends.rawValue(),
})
