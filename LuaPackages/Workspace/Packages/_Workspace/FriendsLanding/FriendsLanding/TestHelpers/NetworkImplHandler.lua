local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local RoduxNetworking = dependencies.RoduxNetworking

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll

beforeAll(function()
	RoduxNetworking.setNetworkImpl(function(url)
		error(string.format("\n🔥 Should have replaced network implementation for url: %s\n", tostring(url)))
	end)
end)
