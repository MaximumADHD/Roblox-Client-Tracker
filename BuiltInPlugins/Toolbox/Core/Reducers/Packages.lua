local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Rodux = require(Packages.Rodux)

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
