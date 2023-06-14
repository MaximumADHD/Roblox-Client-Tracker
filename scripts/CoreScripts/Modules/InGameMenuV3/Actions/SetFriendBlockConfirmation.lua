local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

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
