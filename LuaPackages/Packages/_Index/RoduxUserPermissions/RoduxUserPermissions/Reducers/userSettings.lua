local UserPermissions = script.Parent.Parent
local Packages = UserPermissions.Parent
local Rodux = require(Packages.Rodux) :: any
local ReducerTypes = require(UserPermissions.Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.UserSettingsReducer = {
	canUploadContacts = nil,
}

return function(options)
	local NetworkingUserSettings = options.networkingUserSettings

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingUserSettings.GetUserSettings.Succeeded.name] = function(_, action)
			return {
				canUploadContacts = action.responseBody and action.responseBody.canUploadContacts,
			}
		end :: (
			state: ReducerTypes.UserSettingsReducer,
			action: any
		) -> ReducerTypes.UserSettingsReducer,
		[NetworkingUserSettings.UpdateUserSettings.Succeeded.name] = function(state, action)
			if action.postBody and action.postBody.canUploadContacts ~= nil then
				return {
					canUploadContacts = action.postBody.canUploadContacts,
				}
			end

			return state
		end,
	})
end
