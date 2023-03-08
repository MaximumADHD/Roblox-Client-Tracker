local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Rodux = dependencies.Rodux
local RoduxNetworking = dependencies.RoduxNetworking
local ShowContactImporterParams = dependencies.ShowContactImporterParams
local SelfViewProfileDiscoverabilityUpsellIXP = dependencies.SelfViewProfileDiscoverabilityUpsellIXP

return function()
	return Rodux.combineReducers({
		Users = require(script.Users),
		Friends = require(script.Friends),
		Presence = require(script.Presence),
		PremiumByUserId = require(script.PremiumByUserId),
		ShowContactImporterParams = if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
			then ShowContactImporterParams
			else nil,
		NetworkStatus = RoduxNetworking.installReducer(),
		UnreadConversationCount = require(script.UnreadConversationCount),
	})
end
