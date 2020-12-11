--[[
	Sets which manipulation tool is currently being used.

	Params:
		RibbonTool tool = Which tool the Animation Editor is currently using.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(tool)
	return {
		tool = tool,
	}
end)