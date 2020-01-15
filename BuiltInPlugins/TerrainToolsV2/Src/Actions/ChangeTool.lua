--[[
	Fired when tool is changed
]]
local Action = require(script.Parent.Action)

-- currentTool : (string) name of the tool activated
return Action(script.Name, function(currentTool)
	assert(type(currentTool) == "string", ("Expected currentTool to be a string, received %s"):format(type(currentTool)))

	return {
		currentTool = currentTool,
	}
end)
