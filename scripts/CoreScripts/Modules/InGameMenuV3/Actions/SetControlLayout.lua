local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_CONTROL_LAYOUT", function(controlLayout)
	return {
		controlLayout = controlLayout
	}
end)