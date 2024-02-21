--!nonstrict
local Action = require(script.Parent.Parent.Action)

return Action(script.Name, function(isClientView, usePercentages, clientSessionState, serverSessionState, isExporting)

	return {
		isClientView = isClientView,
		usePercentages = usePercentages,
		clientSessionState = clientSessionState,
		serverSessionState = serverSessionState,
		isExporting = isExporting,
	}
end)