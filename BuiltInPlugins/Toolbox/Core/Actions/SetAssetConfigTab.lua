local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

-- tabItem, a table object defined in ConfigTypes. For example, a GENERAl, or SALES.
return Action(script.Name, function(tabItem)
	return {
		tabItem = tabItem,
	}
end)
