local CoreGui = Game:GetService("CoreGui")
local Action = require(CoreGui.RobloxGui.Modules.Common.Action)

return Action("SetXboxUser", function(userInfo)
	return {
		gamertag = userInfo.gamertag,
		xuid = userInfo.xuid
	}
end)