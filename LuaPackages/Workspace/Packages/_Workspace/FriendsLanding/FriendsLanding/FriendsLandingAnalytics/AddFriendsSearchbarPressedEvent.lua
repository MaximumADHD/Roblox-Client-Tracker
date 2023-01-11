local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local ButtonClickEvents = require(script.Parent.ButtonClickEvents)
local EnumScreens = require(FriendsLanding.EnumScreens)
local dependencies = require(AddFriends.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts
local FormFactor = dependencies.FormFactor

return function(analytics, additionalArgs: any?)
	local formFactor = additionalArgs and additionalArgs.formFactor
	analytics:navigate(EnumScreens.SearchFriends)
	analytics:buttonClick(ButtonClickEvents.PeopleSearchBar, {
		contextOverride = Contexts.PeopleSearchFromAddFriends.rawValue(),
		formFactor = formFactor or FormFactor.UNKNOWN,
	})
end
