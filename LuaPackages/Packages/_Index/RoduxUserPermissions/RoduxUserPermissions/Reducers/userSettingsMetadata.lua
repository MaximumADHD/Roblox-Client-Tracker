local UserPermissions = script.Parent.Parent
local Packages = UserPermissions.Parent
local Rodux = require(Packages.Rodux) :: any
local ReducerTypes = require(UserPermissions.Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.UserSettingsMetadataReducer = {
	prefillDiscoverabilitySetting = false,
}

return function(options)
	local NetworkingUserSettings = options.networkingUserSettings

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingUserSettings.GetUserSettingsMetadata.Succeeded.name] = function(_, action)
			return {
				prefillDiscoverabilitySetting = action.responseBody
					and action.responseBody.prefillDiscoverabilitySetting,
			}
		end :: (
			state: ReducerTypes.UserSettingsMetadataReducer,
			action: any
		) -> ReducerTypes.UserSettingsMetadataReducer,
	})
end
