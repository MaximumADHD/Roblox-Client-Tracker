local LuaSocialLibrariesDeps = script.Parent
local lazyRequire = require(LuaSocialLibrariesDeps.LazyRequire).lazyRequire

local FFlagLuaAppLazyRequireSocialLibsDeps = game:DefineFastFlag("LuaAppLazyRequireSocialLibsDeps", false)
local FFlagRemoveFriendsRoduxAndNetworking = game:DefineFastFlag("RemoveFriendsRoduxAndNetworking", false)

return if FFlagLuaAppLazyRequireSocialLibsDeps
	then {
		CollisionMatchers = lazyRequire(LuaSocialLibrariesDeps.CollisionMatchers) :: typeof(require(LuaSocialLibrariesDeps.CollisionMatchers)),
		GenericPagination = lazyRequire(LuaSocialLibrariesDeps.GenericPagination) :: typeof(require(LuaSocialLibrariesDeps.GenericPagination)),
		httpRequest = lazyRequire(LuaSocialLibrariesDeps.httpRequest) :: typeof(require(LuaSocialLibrariesDeps.httpRequest)),
		llama = lazyRequire(LuaSocialLibrariesDeps.llama) :: typeof(require(LuaSocialLibrariesDeps.llama)),
		Mock = lazyRequire(LuaSocialLibrariesDeps.Mock) :: typeof(require(LuaSocialLibrariesDeps.Mock)),
		NetworkingAccountInformation = lazyRequire(LuaSocialLibrariesDeps.NetworkingAccountInformation) :: typeof(require(LuaSocialLibrariesDeps.NetworkingAccountInformation)),
		NetworkingAccountSettings = lazyRequire(LuaSocialLibrariesDeps.NetworkingAccountSettings) :: typeof(require(LuaSocialLibrariesDeps.NetworkingAccountSettings)),
		NetworkingAliases = lazyRequire(LuaSocialLibrariesDeps.NetworkingAliases) :: typeof(require(LuaSocialLibrariesDeps.NetworkingAliases)),
		NetworkingBlocking = lazyRequire(LuaSocialLibrariesDeps.NetworkingBlocking) :: typeof(require(LuaSocialLibrariesDeps.NetworkingBlocking)),
		NetworkingCall = lazyRequire(LuaSocialLibrariesDeps.NetworkingCall) :: typeof(require(LuaSocialLibrariesDeps.NetworkingCall)),
		NetworkingChat = lazyRequire(LuaSocialLibrariesDeps.NetworkingChat) :: typeof(require(LuaSocialLibrariesDeps.NetworkingChat)),
		NetworkingContacts = lazyRequire(LuaSocialLibrariesDeps.NetworkingContacts) :: typeof(require(LuaSocialLibrariesDeps.NetworkingContacts)),
		NetworkingCurrentlyWearing = lazyRequire(LuaSocialLibrariesDeps.NetworkingCurrentlyWearing) :: typeof(require(LuaSocialLibrariesDeps.NetworkingCurrentlyWearing)),
		NetworkingFriends = if FFlagRemoveFriendsRoduxAndNetworking
			then nil
			else lazyRequire(
					LuaSocialLibrariesDeps.NetworkingFriends
				) :: typeof(require(LuaSocialLibrariesDeps.NetworkingFriends)),
		NetworkingGames = lazyRequire(LuaSocialLibrariesDeps.NetworkingGames) :: typeof(require(LuaSocialLibrariesDeps.NetworkingGames)),
		NetworkingPremiumFeatures = lazyRequire(LuaSocialLibrariesDeps.NetworkingPremiumFeatures) :: typeof(require(LuaSocialLibrariesDeps.NetworkingPremiumFeatures)),
		NetworkingPresence = lazyRequire(LuaSocialLibrariesDeps.NetworkingPresence) :: typeof(require(LuaSocialLibrariesDeps.NetworkingPresence)),
		NetworkingUsers = lazyRequire(LuaSocialLibrariesDeps.NetworkingUsers) :: typeof(require(LuaSocialLibrariesDeps.NetworkingUsers)),
		NetworkingUserSettings = lazyRequire(LuaSocialLibrariesDeps.NetworkingUserSettings) :: typeof(require(LuaSocialLibrariesDeps.NetworkingUserSettings)),
		RoactFitComponents = lazyRequire(LuaSocialLibrariesDeps.RoactFitComponents) :: typeof(require(LuaSocialLibrariesDeps.RoactFitComponents)),
		RoduxAliases = lazyRequire(LuaSocialLibrariesDeps.RoduxAliases) :: typeof(require(LuaSocialLibrariesDeps.RoduxAliases)),
		RoduxCall = lazyRequire(LuaSocialLibrariesDeps.RoduxCall) :: typeof(require(LuaSocialLibrariesDeps.RoduxCall)),
		RoduxContacts = lazyRequire(LuaSocialLibrariesDeps.RoduxContacts) :: typeof(require(LuaSocialLibrariesDeps.RoduxContacts)),
		RoduxFriends = if FFlagRemoveFriendsRoduxAndNetworking
			then nil
			else lazyRequire(
					LuaSocialLibrariesDeps.RoduxFriends
				) :: typeof(require(LuaSocialLibrariesDeps.RoduxFriends)),
		RoduxGames = lazyRequire(LuaSocialLibrariesDeps.RoduxGames) :: typeof(require(LuaSocialLibrariesDeps.RoduxGames)),
		RoduxNetworking = lazyRequire(LuaSocialLibrariesDeps.RoduxNetworking) :: typeof(require(LuaSocialLibrariesDeps.RoduxNetworking)),
		RoduxPresence = lazyRequire(LuaSocialLibrariesDeps.RoduxPresence) :: typeof(require(LuaSocialLibrariesDeps.RoduxPresence)),
		RoduxUserPermissions = lazyRequire(LuaSocialLibrariesDeps.RoduxUserPermissions) :: typeof(require(LuaSocialLibrariesDeps.RoduxUserPermissions)),
		RoduxUsers = lazyRequire(LuaSocialLibrariesDeps.RoduxUsers) :: typeof(require(LuaSocialLibrariesDeps.RoduxUsers)),
		SocialLibraries = lazyRequire(LuaSocialLibrariesDeps.SocialLibraries) :: typeof(require(LuaSocialLibrariesDeps.SocialLibraries)),
	}
	else {
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
		NetworkingFriends = if FFlagRemoveFriendsRoduxAndNetworking
			then nil
			else require(LuaSocialLibrariesDeps.NetworkingFriends),
		NetworkingGames = require(LuaSocialLibrariesDeps.NetworkingGames),
		NetworkingPremiumFeatures = require(LuaSocialLibrariesDeps.NetworkingPremiumFeatures),
		NetworkingPresence = require(LuaSocialLibrariesDeps.NetworkingPresence),
		NetworkingUsers = require(LuaSocialLibrariesDeps.NetworkingUsers),
		NetworkingUserSettings = require(LuaSocialLibrariesDeps.NetworkingUserSettings),
		RoactFitComponents = require(LuaSocialLibrariesDeps.RoactFitComponents),
		RoduxAliases = require(LuaSocialLibrariesDeps.RoduxAliases),
		RoduxCall = require(LuaSocialLibrariesDeps.RoduxCall),
		RoduxContacts = require(LuaSocialLibrariesDeps.RoduxContacts),
		RoduxFriends = if FFlagRemoveFriendsRoduxAndNetworking
			then nil
			else require(LuaSocialLibrariesDeps.RoduxFriends),
		RoduxGames = require(LuaSocialLibrariesDeps.RoduxGames),
		RoduxNetworking = require(LuaSocialLibrariesDeps.RoduxNetworking),
		RoduxPresence = require(LuaSocialLibrariesDeps.RoduxPresence),
		RoduxUserPermissions = require(LuaSocialLibrariesDeps.RoduxUserPermissions),
		RoduxUsers = require(LuaSocialLibrariesDeps.RoduxUsers),
		SocialLibraries = require(LuaSocialLibrariesDeps.SocialLibraries),
	}
