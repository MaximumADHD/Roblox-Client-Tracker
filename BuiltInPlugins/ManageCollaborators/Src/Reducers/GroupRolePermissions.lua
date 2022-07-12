local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetGroupRolePermissions = require(Actions.SetGroupRolePermissions)

local function getDefaultState()
	return {
		PermissionsByRole = {},
	}
end

return Rodux.createReducer(getDefaultState(), {
	ResetStore = function(state, action)
		return getDefaultState()
	end,

	[SetGroupRolePermissions.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			PermissionsByRole = action.groupRolePermissions
		})
	end,
})
