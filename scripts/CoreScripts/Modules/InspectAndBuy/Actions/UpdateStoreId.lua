--[[
	Action to update the "store id" which basically acts as
	an incrementing number of how many times the inspect and buy
	menu is open in a session. This is useful for giving unique
	keys to PerformFetch between uses of the menu
]]

local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function()
	return {}
end)
