local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Util = require(Libs.Framework).Util
local Action = Util.Action

-- tabItem, a table object defined in ConfigTypes. For example, a GENERAl, or SALES.
return Action(script.Name, function(tabItem)
	return {
		tabItem = tabItem,
	}
end)
