local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Action = require(ShareGame.Action)

return Action(script.Name, function(placeInfo)
	return {
		placeInfo = placeInfo,
	}
end)