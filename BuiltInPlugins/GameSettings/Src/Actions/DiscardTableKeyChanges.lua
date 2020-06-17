local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(tableName, tableKey, valueKey)
	assert(type(tableName) == "string", "tableName must be a string")
	assert(type(tableKey) == "string", "tableKey must be a string")
	assert(type(valueKey) == "string", "valueKey must be a string")

	return {
		tableName = tableName,
		tableKey = tableKey,
		valueKey = valueKey,
	}
end)