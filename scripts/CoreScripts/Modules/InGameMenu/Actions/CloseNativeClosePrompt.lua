local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("CLOSE_NATIVE_PROMPT", function()
	return {}
end)
