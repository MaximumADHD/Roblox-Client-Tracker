local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local NetworkingUsers = require(Packages.NetworkingUsers)
local configuredRoduxNetworking = require(script.Parent.configuredRoduxNetworking)

return NetworkingUsers.config({
	roduxNetworking = configuredRoduxNetworking,
})
