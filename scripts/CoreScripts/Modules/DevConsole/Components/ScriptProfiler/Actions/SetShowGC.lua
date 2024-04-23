--!nonstrict
local Action = require(script.Parent.Parent.Parent.Parent.Action)

return Action("ScriptProfiler" .. script.Name, function(isClient, showGC)
	return {
		isClient = isClient,
		showGC = showGC,
	}
end)
