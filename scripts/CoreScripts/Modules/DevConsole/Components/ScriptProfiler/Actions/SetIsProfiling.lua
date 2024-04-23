--!nonstrict
local Action = require(script.Parent.Parent.Parent.Parent.Action)

return Action("ScriptProfiler" .. script.Name, function(isClient, isProfiling)
	return {
		isClient = isClient,
		isProfiling = isProfiling,
	}
end)
