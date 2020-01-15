local Action = require(script.Parent.Action)

-- This action allow us to reuse an action across multiple reducers
-- toolName the key used for the specified reducder while toolAction
-- is an action that is recognized across all the various accepted keys
-- in the main reducer. Take a look at MainReducer.lua to understand
-- how this action direct the usage of one action across multiple reducers
return Action(script.Name, function(toolName, toolAction)
	assert(type(toolName) == "string", ("Expected toolName to be a string, received %s"):format(type(toolName)))
	assert(type(toolAction) == "table", ("Expected toolAction to be a table, received %s"):format(type(toolAction)))

	return {
		toolName = toolName,
		toolAction = toolAction,
	}
end)
