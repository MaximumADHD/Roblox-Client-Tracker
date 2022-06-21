local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

--[[
	isFriendBlockOpen : boolean
	targetBlockFriend : playerInterface
]]

return Action(script.Name, function(isFriendBlockOpen, targetBlockFriend)
	return {
		isFriendBlockOpen = isFriendBlockOpen,
		targetBlockFriend = targetBlockFriend,
	}
end)
