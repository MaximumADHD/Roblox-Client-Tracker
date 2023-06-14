local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("SET_FRIEND_STATUS", function(userId, friendStatus)
	return {
		userId = userId,
		friendStatus = friendStatus,
	}
end)
