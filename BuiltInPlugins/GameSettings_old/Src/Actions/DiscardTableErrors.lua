local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(tableName, tableKey)
	assert(type(tableName) == "string", "tableName must be a string")
	assert(type(tableKey) == "string", "tableKey must be a string")

	return {
		tableName = tableName,
		tableKey = tableKey,
	}
end)