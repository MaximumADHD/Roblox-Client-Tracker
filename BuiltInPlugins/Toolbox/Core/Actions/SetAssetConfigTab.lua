local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

-- tabItem, a table object defined in ConfigTypes. For example, a GENERAl, or SALES.
return Action(script.Name, function(tabItem)
	return {
		tabItem = tabItem,
	}
end)
