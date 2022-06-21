local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Core.Actions
local MarkTryInStudioDone = require(Actions.MarkTryInStudioDone)

return Rodux.createReducer({
	triedInStudio = {},
}, {
	[MarkTryInStudioDone.name] = function(state, action)
		return {
			triedInStudio = Cryo.Dictionary.join(state.triedInStudio, {
				[action.assetId] = true,
			}),
		}
	end,
})
