local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(bulkImporterRunning)
	assert(type(bulkImporterRunning) == "boolean",
		string.format("SetScreen requires a boolean, not %s", type(bulkImporterRunning)))

	return {
		bulkImporterRunning = bulkImporterRunning,
	}
end)