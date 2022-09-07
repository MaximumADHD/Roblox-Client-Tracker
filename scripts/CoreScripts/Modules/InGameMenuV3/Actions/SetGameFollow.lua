local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

--[[
	universeId: string,
	isFollowed : boolean
]]

return Action(script.Name, function(universeId, isFollowed)
	assert(type(universeId) == "string", "SetGameFollow: universeId must be a string")
	assert(type(isFollowed) == "boolean", "SetGameFollow: isFollowed must be a boolean")

	return {
		universeId = universeId,
		isFollowed = isFollowed,
	}
end)
