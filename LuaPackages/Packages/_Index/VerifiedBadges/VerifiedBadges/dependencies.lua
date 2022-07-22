local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")
local Packages = VerifiedBadges.Parent

local UsersNetworking = require(Packages.UsersNetworking)
local FriendsNetworking = require(Packages.FriendsNetworking)

local RoduxNetworking = require(Packages.RoduxNetworking)
local HttpRequest = require(Packages.HttpRequest)

local myRoduxNetworking = RoduxNetworking.config({
	keyPath = "VerifiedBadges.NetworkStatus",
	networkImpl = HttpRequest.config({
		requestFunction = HttpRequest.requestFunctions.RequestInternal,
		maxRetryCount = 0,
	}),
})

return {
	RoduxNetworking = myRoduxNetworking,
	FriendsNetworking = FriendsNetworking.config({
		roduxNetworking = myRoduxNetworking,
	}),
	UsersNetworking = UsersNetworking.config({
		roduxNetworking = myRoduxNetworking,
	}),
}
