--[[
	Update the instances displayed in the element tree.
]]
local main = script.Parent.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

return Action(script.Name, function(path, children, updatedIndexes)
	return {
		path = path,
		children = children,
		updatedIndexes = updatedIndexes,
	}
end)
