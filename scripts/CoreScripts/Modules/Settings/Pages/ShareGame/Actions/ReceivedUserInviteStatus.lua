local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Packages.Rodux).makeActionCreator

return Action(script.Name, function(userId, inviteStatus)
	return {
		userId = tostring(userId),
		inviteStatus = inviteStatus,
	}
end)
