
local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action("DISMISS_TOOLTIP", function(tooltipIdentifier)
	return {
		tooltipIdentifier = tooltipIdentifier
	}
end)
