--[[
	Action to update an experience's info. The info passed must include a
	universe id.
]]
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(experienceInfo)
	return {
		experienceInfo = experienceInfo,
	}
end)
