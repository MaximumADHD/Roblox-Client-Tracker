local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(tableName, tableKey, valueKey, errors)
	assert(type(tableName) == "string", "tableName must be a string")
	assert(type(tableKey) == "string", "tableKey must be a string")
	assert(type(valueKey) == "string", "valueKey must be a string")
	assert(type(errors) == "table", "errors must be a table")
	assert(next(errors) ~= nil, "errors must not be empty")

	return {
		tableName = tableName,
		tableKey = tableKey,
		valueKey = valueKey,
		errors = errors,
	}
end)