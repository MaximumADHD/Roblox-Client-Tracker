local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local EnumScreens = require(FriendsLanding.EnumScreens)
local dependencies = require(AddFriends.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local Contexts = Enums.Contexts

return function(analytics, act: string, additionalArgs: any?)
	local source
	if additionalArgs and additionalArgs.source then
		source = additionalArgs.source
	else
		local currentRoute = additionalArgs and additionalArgs.currentRoute
		if currentRoute == EnumScreens.AddFriends then
			source = Contexts.AddFriends.rawValue()
		elseif currentRoute == EnumScreens.FriendsLanding then
			source = Contexts.FriendsLanding.rawValue()
		elseif currentRoute == EnumScreens.SearchFriends then
			source = Contexts.PlayerSearch.rawValue()
		else
			source = "Unknown"
		end
	end

	local kwd = additionalArgs and additionalArgs.kwd or nil

	analytics:playerSearch(act, kwd, source)
end
