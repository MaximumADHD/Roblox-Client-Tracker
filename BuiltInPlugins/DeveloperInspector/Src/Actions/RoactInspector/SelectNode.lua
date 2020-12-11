--[[
	Select a node in the node list.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(nodeIndex)
	return {
		nodeIndex = nodeIndex
	}
end)
