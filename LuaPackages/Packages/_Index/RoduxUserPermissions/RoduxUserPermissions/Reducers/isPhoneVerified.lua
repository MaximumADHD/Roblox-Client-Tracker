local UserPermissions = script.Parent.Parent
local Packages = UserPermissions.Parent
local Rodux = require(Packages.Rodux) :: any

local DEFAULT_STATE = false

return function(options)
	local NetworkingAccountInformation = options.networkingAccountInformation

	return Rodux.createReducer(DEFAULT_STATE, {
		[NetworkingAccountInformation.GetPhoneInformation.Succeeded.name] = function(_, action)
			return action.responseBody and action.responseBody.isVerified
		end :: (
			state: boolean,
			action: any
		) -> boolean,
	})
end
