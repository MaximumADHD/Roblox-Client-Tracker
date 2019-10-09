--[[
	Fired when tool is changed
]]
local Action = require(script.Parent.Action)

-- currentTool : (string) name of the tool activated
return Action(script.Name, function(currentTool)
	if currentTool then
		assert(type(currentTool) == "string", string.format("Expected currentTool to be a string, received %s", type(currentTool)))
	end
	return {
		currentTool = currentTool
		
	}
end)