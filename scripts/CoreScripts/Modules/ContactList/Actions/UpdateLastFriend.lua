local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(lastRemovedFriendId)
	return {
		lastRemovedFriendId = lastRemovedFriendId,
	}
end)
