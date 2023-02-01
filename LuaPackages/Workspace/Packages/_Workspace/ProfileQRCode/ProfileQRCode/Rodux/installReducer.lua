local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Rodux = require(Packages.Rodux)
local configuredUsers = require(script.Parent.configuredUsers)
local configuredRoduxNetworking = require(ProfileQRCode.Networking.configuredRoduxNetworking)
local ShareUrlReducer = require(script.Parent.ShareUrlReducer)

export type Store = {
	Users: any,
	NetworkStatus: any,
	ShareUrlReducer: ShareUrlReducer.State,
}

return function()
	return Rodux.combineReducers({
		Users = configuredUsers(),
		NetworkStatus = configuredRoduxNetworking.installReducer(),
		ShareUrl = ShareUrlReducer,
	})
end
