local CoreGui = game:GetService("CoreGui")
local Action = require(CoreGui.RobloxGui.Modules.Common.Action)

return Action("SetRobloxUser", function(userInfo)
	userInfo = userInfo or {}
	return {
		robloxName = userInfo.robloxName,
		rbxuid = userInfo.rbxuid,
		under13 = userInfo.under13
	}
end)