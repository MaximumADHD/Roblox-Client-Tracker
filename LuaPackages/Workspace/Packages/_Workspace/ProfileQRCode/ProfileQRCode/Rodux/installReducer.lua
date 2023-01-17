local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Rodux = require(Packages.Rodux)
local configuredUsers = require(script.Parent.configuredUsers)
local configuredRoduxNetworking = require(ProfileQRCode.Networking.configuredRoduxNetworking)

export type Store = {
	Users: any,
	NetworkStatus: any,
}

return function()
	return Rodux.combineReducers({
		Users = configuredUsers(),
		NetworkStatus = configuredRoduxNetworking.installReducer(),
	})
end
