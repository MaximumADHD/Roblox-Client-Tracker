local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Action = require(ShareGame.Action)

return Action(script.Name, function(userId, presence, lastLocation)
	return {
		userId = tostring(userId),
		presence = presence,
		lastLocation = lastLocation,
	}
end)