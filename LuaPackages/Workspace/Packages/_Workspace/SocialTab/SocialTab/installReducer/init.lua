local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking

return function()
	return Rodux.combineReducers({
		Users = require(script.Users),
		Friends = require(script.Friends),
		Presence = require(script.Presence),
		PremiumByUserId = require(script.PremiumByUserId),
		NetworkStatus = RoduxNetworking.installReducer(),
		UnreadConversationCount = require(script.UnreadConversationCount),
	})
end
