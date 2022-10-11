--[[
	Select which tab to display
]]
local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

-- FIXME STUDIOPLAT-28652: Export the types of tab directly in the init file
return Action(script.Name, function(tab)
	return {
		tab = tab,
	}
end)
