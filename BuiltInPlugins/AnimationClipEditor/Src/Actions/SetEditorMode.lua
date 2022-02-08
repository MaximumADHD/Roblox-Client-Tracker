--[[
	Used to switch the editor between DopeSheet and CurvesCanvas

	Params:
		string editorMode
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(editorMode)
	return {
		editorMode = editorMode
	}
end)