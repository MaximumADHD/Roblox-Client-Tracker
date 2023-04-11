--[[
	The LuaProfileDeps package API.
]]
local Packages = script.Parent

return {
	DebugUtils = require(Packages.DebugUtils),
	NetworkingCurrentlyWearing = require(Packages.NetworkingCurrentlyWearing),
	NetworkingUserInfo = require(Packages.NetworkingUserInfo),
	NetworkingBlocking = require(Packages.NetworkingBlocking),
	RoduxProfile = require(Packages.RoduxProfile),
	UnitTestHelpers = require(Packages.UnitTestHelpers),

	Dash = require(Packages.Dash),
	HttpRequest = require(Packages.HttpRequest),
	Promise = require(Packages.Promise),
	RoduxNetworking = require(Packages.RoduxNetworking),
	NetworkingUsers = require(Packages.NetworkingUsers),
	NetworkingFriends = require(Packages.NetworkingFriends),
	NetworkingPresence = require(Packages.NetworkingPresence),
	RoduxPresence = require(Packages.RoduxPresence),
	NetworkingGames = require(Packages.NetworkingGames),
	RoduxGames = require(Packages.RoduxGames),
	RoduxFriends = require(Packages.RoduxFriends),
	RoduxContacts = require(Packages.RoduxContacts),
}
