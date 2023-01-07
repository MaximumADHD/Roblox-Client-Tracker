local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local devDependencies = require(Squads.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll

beforeAll(function(c)
	dependencies.RoduxNetworking.setNetworkImpl(function(url)
		error(string.format("Should have replaced network implementation for url: %s", tostring(url)))
	end)
end)
