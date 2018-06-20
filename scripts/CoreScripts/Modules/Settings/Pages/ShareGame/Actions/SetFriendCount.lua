local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Action = require(ShareGame.Action)

return Action(script.Name, function(count)
	return {
		count = count,
	}
end)