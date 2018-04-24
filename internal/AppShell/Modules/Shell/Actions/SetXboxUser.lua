local CoreGui = game:GetService("CoreGui")
local Action = require(CoreGui.RobloxGui.Modules.Common.Action)

return Action("SetXboxUser", function(userInfo)
	userInfo = userInfo or {}
	return {
		gamertag = userInfo.gamertag,
		xuid = userInfo.xuid
	}
end)