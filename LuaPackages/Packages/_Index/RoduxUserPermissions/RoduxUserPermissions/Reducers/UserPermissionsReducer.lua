local UserPermissions = script.Parent.Parent
local Types = UserPermissions.Types
local isPhoneVerified = require(UserPermissions.Reducers.isPhoneVerified)
local userSettings = require(UserPermissions.Reducers.userSettings)

local ReducerTypes = require(Types.ReducerTypes)

local DEFAULT_STATE: ReducerTypes.Reducer = {
	isPhoneVerified = false,
	userSettings = {},
}

return function(options)
	return function(state: ReducerTypes.Reducer, action)
		local newState: ReducerTypes.Reducer = state or DEFAULT_STATE

		local isPhoneVerifiedReducer = isPhoneVerified(options)
		local userSettingsReducer = userSettings(options)

		return {
			isPhoneVerified = isPhoneVerifiedReducer(newState.isPhoneVerified, action),
			userSettings = userSettingsReducer(newState.userSettings, action),
		}
	end
end
