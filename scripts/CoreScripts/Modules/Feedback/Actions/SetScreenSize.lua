--[[
	Action that sets screensize information, used for some dynamic sizing components
]]
--
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(screenSize)
	return {
		screenSize = screenSize,
	}
end)
