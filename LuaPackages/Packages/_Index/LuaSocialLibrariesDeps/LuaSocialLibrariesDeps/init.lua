local LuaSocialLibrariesDeps = script.Parent

local FFlagUseSocialLibraries310 = game:DefineFastFlag("UseSocialLibraries310", false)

return {
	GenericPagination = require(LuaSocialLibrariesDeps.GenericPagination),
	RoactFitComponents = require(LuaSocialLibrariesDeps.RoactFitComponents),
	Mock = require(LuaSocialLibrariesDeps.Mock),
	RoduxNetworking = require(LuaSocialLibrariesDeps.RoduxNetworking),
	llama = require(LuaSocialLibrariesDeps.llama),
	RoduxAliases = require(LuaSocialLibrariesDeps.RoduxAliases),
	RoduxUsers = require(LuaSocialLibrariesDeps.RoduxUsers),
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
	NetworkingShareLinks = require(LuaSocialLibrariesDeps.NetworkingShareLinks),
	NetworkingPremiumFeatures = require(LuaSocialLibrariesDeps.NetworkingPremiumFeatures),
	NetworkingCurrentlyWearing = require(LuaSocialLibrariesDeps.NetworkingCurrentlyWearing),
	CollisionMatchers = require(LuaSocialLibrariesDeps.CollisionMatchers),
	SocialLibraries = if FFlagUseSocialLibraries310
		then require(LuaSocialLibrariesDeps.SocialLibraries_v310)
		else require(LuaSocialLibrariesDeps.SocialLibraries_v258),
	NetworkingUsers = require(LuaSocialLibrariesDeps.NetworkingUsers),
	NetworkingBlocking = require(LuaSocialLibrariesDeps.NetworkingBlocking),
	NetworkingSquads = require(LuaSocialLibrariesDeps.NetworkingSquads),
	RoduxSquads = require(LuaSocialLibrariesDeps.RoduxSquads),
	NetworkingCall = require(LuaSocialLibrariesDeps.NetworkingCall),
	RoduxCall = require(LuaSocialLibrariesDeps.RoduxCall_v18),
}
