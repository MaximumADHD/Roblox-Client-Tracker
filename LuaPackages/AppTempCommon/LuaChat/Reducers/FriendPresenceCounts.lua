local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local UpdateFriendPresenceCounts = require(CorePackages.AppTempCommon.LuaChat.Actions.UpdateFriendPresenceCounts)

-- FIXME: any type Rodux
return function(state: any?, action: any)
	state = state or {}

	if action.type == UpdateFriendPresenceCounts.name then
		state = Cryo.Dictionary.join({}, action.presenceCounts)
	end

	return state
end
