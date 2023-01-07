local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Rodux = require(Packages.Rodux)
local RoduxUsers = require(script.Parent.RoduxUsers)
local configuredRoduxNetworking = require(script.Parent.configuredRoduxNetworking)

export type Store = {
	Users: any,
	NetworkStatus: any,
}

return function()
	return Rodux.combineReducers({
		Users = RoduxUsers,
		NetworkStatus = configuredRoduxNetworking.installReducer(),
	})
end
