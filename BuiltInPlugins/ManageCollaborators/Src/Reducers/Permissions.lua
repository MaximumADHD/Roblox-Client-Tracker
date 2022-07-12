local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetUserPermission = require(Actions.SetUserPermission)
local SetCurrentUserPermissions = require(Actions.SetCurrentUserPermissions)

local isEqualCheck = require(Plugin.Src.Util.IsEqualCheck)

local function getDefaultState()
	return {
		CurrentPermissions = {},
	}
end

return Rodux.createReducer(getDefaultState(), {
	ResetStore = function(state, action)
		return getDefaultState()
	end,
	
	[SetUserPermission.name] = function(state, action)
		local newPermissions = action.newPermissions
		assert(type(newPermissions) == "table")
		
		if isEqualCheck(state.CurrentPermissions, newPermissions) then
			newPermissions = Cryo.None
		end
		
		return Cryo.Dictionary.join(state, {
			NewPermissions = newPermissions
		})
	end,
	
	[SetCurrentUserPermissions.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			CurrentPermissions = action.currentPermissions
		})
	end,
})
