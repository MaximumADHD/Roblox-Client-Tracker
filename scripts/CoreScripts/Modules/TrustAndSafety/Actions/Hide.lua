-- This action hides the whole report menu
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function()
	return {}
end)
