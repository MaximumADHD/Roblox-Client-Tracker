--[[
	Action to set info for the status of
	inspect and buy try on.
]]

local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

return Rodux.makeActionCreator(script.Name, function(tryingOn)
	return {
		tryingOn = tryingOn,
	}
end)