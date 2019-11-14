local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Rodux = require(Libs.Rodux)

local Actions = Plugin.Core.Actions
local SetPackagePermission = require(Actions.SetPackagePermission)

return Rodux.createReducer({
	permissionsTable = {},
}, {
	[SetPackagePermission.name] = function(state, action)
		if not state.permissionsTable then
			state.permissionsTable = {}
		end

		state.permissionsTable = Cryo.Dictionary.join(state.permissionsTable, action.packagePermissions)

		return state
	end,
})