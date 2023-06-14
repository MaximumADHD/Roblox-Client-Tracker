local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("CLOSE_NATIVE_PROMPT", function()
	return {}
end)
