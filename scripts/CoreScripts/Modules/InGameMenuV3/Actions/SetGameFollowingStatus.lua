local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

--[[
	universeId: string,
	canFollow: boolean,
	isFollowed : boolean,
]]

return Action(script.Name, function(universeId, canFollow, isFollowed)
	assert(type(universeId) == "string", "SetGameFollowingStatus: universeId must be a string")
	assert(type(canFollow) == "boolean", "SetGameFollowingStatus: canFollow must be a boolean")
	assert(type(isFollowed) == "boolean", "SetGameFollowingStatus: isFollowed must be a boolean")

	return {
		universeId = universeId,
		canFollow = canFollow,
		isFollowed = isFollowed,
	}
end)
