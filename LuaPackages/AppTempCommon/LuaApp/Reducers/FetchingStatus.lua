local CorePackages = game:GetService("CorePackages")

local UpdateFetchingStatus = require(CorePackages.AppTempCommon.LuaApp.Actions.UpdateFetchingStatus)
local Cryo = require(CorePackages.Cryo)

return function(state, action)
	state = state or {}

	if action.type == UpdateFetchingStatus.name then
		local key = action.key
		local status = action.status
		local value
		if status ~= nil then
			value = status
		else
			value = Cryo.None
		end

		state = Cryo.Dictionary.join(
			state,
			{
				[key] = value,
			}
		 )

	end

	return state
end
