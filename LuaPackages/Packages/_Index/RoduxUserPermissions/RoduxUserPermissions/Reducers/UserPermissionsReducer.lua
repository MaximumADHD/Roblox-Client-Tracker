local UserPermissions = script.Parent.Parent
local Types = UserPermissions.Types
local isPhoneVerified = require(UserPermissions.Reducers.isPhoneVerified)
local userSettings = require(UserPermissions.Reducers.userSettings)
local userSettingsMetadata = require(UserPermissions.Reducers.userSettingsMetadata)

local ReducerTypes = require(Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.Reducer = {
	isPhoneVerified = false,
	userSettings = {},
	userSettingsMetadata = {},
}

return function(options)
	return function(state: ReducerTypes.Reducer, action)
		local newState: ReducerTypes.Reducer = state or DEFAULT_STATE

		local isPhoneVerifiedReducer = isPhoneVerified(options)
		local userSettingsReducer = userSettings(options)
		local userSettingsMetadataReducer = userSettingsMetadata(options)

		return {
			isPhoneVerified = isPhoneVerifiedReducer(newState.isPhoneVerified, action),
			userSettings = userSettingsReducer(newState.userSettings, action),
			userSettingsMetadata = userSettingsMetadataReducer(newState.userSettingsMetadata, action),
		}
	end
end
