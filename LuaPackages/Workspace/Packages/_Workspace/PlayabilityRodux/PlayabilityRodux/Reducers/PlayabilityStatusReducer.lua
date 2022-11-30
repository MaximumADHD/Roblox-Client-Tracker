local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local Packages = PlayabilityRodux.Parent

local Immutable = require(Packages.AppCommonLib).Immutable
local SetPlayabilityStatus = require(PlayabilityRodux.Actions).SetPlayabilityStatus

return function(state: any, action: any)
	state = state or {}

	if action.type == SetPlayabilityStatus.name then
		state = Immutable.JoinDictionaries(state, action.playabilityStatus)
	end

	return state
end
