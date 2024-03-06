local LuaSocialLibrariesDeps = script.Parent

local FFlagUseSocialLibraries310 = game:DefineFastFlag("UseSocialLibraries310", false)

return {
	CollisionMatchers = require(LuaSocialLibrariesDeps.CollisionMatchers),
	GenericPagination = require(LuaSocialLibrariesDeps.GenericPagination),
	httpRequest = require(LuaSocialLibrariesDeps.httpRequest),
	llama = require(LuaSocialLibrariesDeps.llama),
	Mock = require(LuaSocialLibrariesDeps.Mock),
	NetworkingAccountInformation = require(LuaSocialLibrariesDeps.NetworkingAccountInformation),
	NetworkingAccountSettings = require(LuaSocialLibrariesDeps.NetworkingAccountSettings),
	NetworkingAliases = require(LuaSocialLibrariesDeps.NetworkingAliases),
	NetworkingBlocking = require(LuaSocialLibrariesDeps.NetworkingBlocking),
	NetworkingCall = require(LuaSocialLibrariesDeps.NetworkingCall),
	NetworkingChat = require(LuaSocialLibrariesDeps.NetworkingChat),
	NetworkingContacts = require(LuaSocialLibrariesDeps.NetworkingContacts),
	NetworkingCurrentlyWearing = require(LuaSocialLibrariesDeps.NetworkingCurrentlyWearing),
	NetworkingFriends = require(LuaSocialLibrariesDeps.NetworkingFriends),
	NetworkingGames = require(LuaSocialLibrariesDeps.NetworkingGames),
	NetworkingPremiumFeatures = require(LuaSocialLibrariesDeps.NetworkingPremiumFeatures),
	NetworkingPresence = require(LuaSocialLibrariesDeps.NetworkingPresence),
	NetworkingShareLinks = require(LuaSocialLibrariesDeps.NetworkingShareLinks),
	NetworkingSquads = require(LuaSocialLibrariesDeps.NetworkingSquads),
	NetworkingUsers = require(LuaSocialLibrariesDeps.NetworkingUsers),
	NetworkingUserSettings = require(LuaSocialLibrariesDeps.NetworkingUserSettings),
	RoactFitComponents = require(LuaSocialLibrariesDeps.RoactFitComponents),
	RoduxAliases = require(LuaSocialLibrariesDeps.RoduxAliases),
	RoduxCall = require(LuaSocialLibrariesDeps.RoduxCall_v18),
	RoduxContacts = require(LuaSocialLibrariesDeps.RoduxContacts),
	RoduxFriends = require(LuaSocialLibrariesDeps.RoduxFriends),
	RoduxGames = require(LuaSocialLibrariesDeps.RoduxGames),
	RoduxNetworking = require(LuaSocialLibrariesDeps.RoduxNetworking),
	RoduxPresence = require(LuaSocialLibrariesDeps.RoduxPresence),
	RoduxShareLinks = require(LuaSocialLibrariesDeps.RoduxShareLinks),
	RoduxSquads = require(LuaSocialLibrariesDeps.RoduxSquads),
	RoduxUserPermissions = require(LuaSocialLibrariesDeps.RoduxUserPermissions),
	RoduxUsers = require(LuaSocialLibrariesDeps.RoduxUsers),
	SocialLibraries = if FFlagUseSocialLibraries310
		then require(LuaSocialLibrariesDeps.SocialLibraries_v310)
		else require(LuaSocialLibrariesDeps.SocialLibraries_v258),
}
