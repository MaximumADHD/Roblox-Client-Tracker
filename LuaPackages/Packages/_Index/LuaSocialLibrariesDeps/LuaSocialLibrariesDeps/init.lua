local LuaSocialLibrariesDeps = script.Parent

game:DefineFastFlag("SocialNetworkingShareLinksv131_v2", false)

local getFFlagSocialNetworkingShareLinksv131 = function()
	return game:GetFastFlag("SocialNetworkingShareLinksv131_v2")
end

return {
	GenericPagination = require(LuaSocialLibrariesDeps.GenericPagination),
	RoactFitComponents = require(LuaSocialLibrariesDeps.RoactFitComponents),
	Mock = require(LuaSocialLibrariesDeps.Mock),
	RoduxNetworking = require(LuaSocialLibrariesDeps.RoduxNetworking),
	llama = require(LuaSocialLibrariesDeps.llama),
	RoduxAliases = require(LuaSocialLibrariesDeps.RoduxAliases),
	RoduxUsers = require(LuaSocialLibrariesDeps.RoduxUsers),
	RoduxUsers_v13 = require(LuaSocialLibrariesDeps.RoduxUsers_v13),
	RoduxFriends = require(LuaSocialLibrariesDeps.RoduxFriends),
	RoduxPresence = require(LuaSocialLibrariesDeps.RoduxPresence),
	RoduxGames = require(LuaSocialLibrariesDeps.RoduxGames),
	RoduxContacts = require(LuaSocialLibrariesDeps.RoduxContacts),
	RoduxUserPermissions = require(LuaSocialLibrariesDeps.RoduxUserPermissions),
	NetworkingAccountInformation = require(LuaSocialLibrariesDeps.NetworkingAccountInformation),
	NetworkingAccountSettings = require(LuaSocialLibrariesDeps.NetworkingAccountSettings),
	NetworkingUserSettings = require(LuaSocialLibrariesDeps.NetworkingUserSettings),
	RoduxShareLinks = require(LuaSocialLibrariesDeps.RoduxShareLinks),
	httpRequest = require(LuaSocialLibrariesDeps.httpRequest),
	NetworkingPresence = require(LuaSocialLibrariesDeps.NetworkingPresence),
	NetworkingAliases = require(LuaSocialLibrariesDeps.NetworkingAliases),
	NetworkingChat = require(LuaSocialLibrariesDeps.NetworkingChat),
	NetworkingFriends = require(LuaSocialLibrariesDeps.NetworkingFriends),
	NetworkingGames = require(LuaSocialLibrariesDeps.NetworkingGames),
	NetworkingContacts = require(LuaSocialLibrariesDeps.NetworkingContacts),
	NetworkingShareLinks = if getFFlagSocialNetworkingShareLinksv131()
		then require(LuaSocialLibrariesDeps.NetworkingShareLinks_v131)
		else require(LuaSocialLibrariesDeps.NetworkingShareLinks),
	NetworkingPremiumFeatures = require(LuaSocialLibrariesDeps.NetworkingPremiumFeatures),
	NetworkingCurrentlyWearing = require(LuaSocialLibrariesDeps.NetworkingCurrentlyWearing),
	CollisionMatchers = require(LuaSocialLibrariesDeps.CollisionMatchers),
	SocialLibraries = require(LuaSocialLibrariesDeps.SocialLibraries),
	NetworkingUsers = require(LuaSocialLibrariesDeps.NetworkingUsers),
	NetworkingBlocking = require(LuaSocialLibrariesDeps.NetworkingBlocking),
	NetworkingSquads = require(LuaSocialLibrariesDeps.NetworkingSquads),
	RoduxSquads = require(LuaSocialLibrariesDeps.RoduxSquads),
	NetworkingCall = require(LuaSocialLibrariesDeps.NetworkingCall),
	RoduxCall = require(LuaSocialLibrariesDeps.RoduxCall),
}
