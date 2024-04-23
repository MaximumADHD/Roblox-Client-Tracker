--!nonstrict
local Action = require(script.Parent.Parent.Parent.Parent.Action)

return Action("ScriptProfiler" .. script.Name, function(isClient, average)
	return {
		isClient = isClient,
		average = average,
	}
end)
