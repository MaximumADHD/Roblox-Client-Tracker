
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("DISMISS_TOOLTIP", function(tooltipIdentifier)
	return {
		tooltipIdentifier = tooltipIdentifier
	}
end)
