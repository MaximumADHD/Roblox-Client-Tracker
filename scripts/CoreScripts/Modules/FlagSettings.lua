local FFlagCoreScriptEnableInspectAndBuy = settings():GetFFlag("CoreScriptEnableInspectAndBuy")

local FlagSettings = {}

function FlagSettings.IsInspectAndBuyEnabled()
	return FFlagCoreScriptEnableInspectAndBuy
end

return FlagSettings