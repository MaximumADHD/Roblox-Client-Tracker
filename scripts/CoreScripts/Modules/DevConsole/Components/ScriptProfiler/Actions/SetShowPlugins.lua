--!nonstrict
local Action = require(script.Parent.Parent.Parent.Parent.Action)

return Action("ScriptProfiler" .. script.Name, function(isClient, showPlugins)
	return {
		isClient = isClient,
		showPlugins = showPlugins,
	}
end)
