--[[
	This action sets the visibility of the publish prompt.
	This is used to show/hide the prompt.
]]
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(promptVisible)
	return {
		promptVisible = promptVisible,
	}
end)
