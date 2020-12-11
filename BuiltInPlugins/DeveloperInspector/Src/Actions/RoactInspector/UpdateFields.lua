--[[
	Provide new information to display in the fields tree.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(path, nodeIndex, fields)
	return {
		path = path,
		nodeIndex = nodeIndex,
		fields = fields
	}
end)
