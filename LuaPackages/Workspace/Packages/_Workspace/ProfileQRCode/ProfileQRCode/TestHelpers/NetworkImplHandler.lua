local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local beforeAll = JestGlobals.beforeAll

local configuredRoduxNetworking = require(ProfileQRCode.Networking.configuredRoduxNetworking)

beforeAll(function()
	configuredRoduxNetworking.setNetworkImpl(function(url)
		error(string.format("🔥 Should have replaced network implementation for url: %s", tostring(url)))
	end)
end)
