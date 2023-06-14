local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("OPEN_NATIVE_CLOSE_PROMPT", function()
	return {}
end)
