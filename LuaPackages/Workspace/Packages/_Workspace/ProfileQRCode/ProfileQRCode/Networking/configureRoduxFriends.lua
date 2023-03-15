local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local NetworkingFriends = require(Packages.NetworkingFriends)
local configuredRoduxNetworking = require(script.Parent.configuredRoduxNetworking)

return NetworkingFriends.config({
	roduxNetworking = configuredRoduxNetworking,
})
