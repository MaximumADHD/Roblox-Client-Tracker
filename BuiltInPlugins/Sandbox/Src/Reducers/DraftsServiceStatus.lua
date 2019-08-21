--[[
	Holds onto information about the status of DraftsService (e.g. is it enabled or not)
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)


local DraftsServiceStatusReducer = Rodux.createReducer({
	Enabled = nil,
},
{
	DraftsServiceLoaded = function(state, action)
		local isEnabled = action.isEnabled

		return Cryo.Dictionary.join(state, {
			Enabled = isEnabled
		})
	end,
})

return DraftsServiceStatusReducer