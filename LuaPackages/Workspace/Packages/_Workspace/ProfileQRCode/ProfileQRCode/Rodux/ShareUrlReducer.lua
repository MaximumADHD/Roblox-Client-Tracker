local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local Rodux = require(Packages.Rodux)
local createOrGetProfileShareUrl = require(ProfileQRCode.Networking.createOrGetProfileShareUrl)

export type State = {
	shorUrl: string,
	linkId: string,
} | {}

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
	[createOrGetProfileShareUrl.Succeeded.name] = function(_: State, action: { responseBody: State }): State
		return action.responseBody
	end :: (state: State, action: { responseBody: State }) -> State,
})
