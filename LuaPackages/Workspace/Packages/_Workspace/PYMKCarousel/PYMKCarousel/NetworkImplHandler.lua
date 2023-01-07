local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)
local devDependencies = require(PYMKCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll

beforeAll(function()
	dependencies.RoduxNetworking.setNetworkImpl(function(url)
		error(string.format("🔥 Should have replaced network implementation for url: %s", tostring(url)))
	end)
end)
