local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(overlay, overlayProps)
	return {
		overlay = overlay,
		overlayProps = overlayProps,
	}
end)
