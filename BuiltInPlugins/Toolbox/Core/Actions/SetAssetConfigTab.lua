local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Util = require(Libs.Framework).Util
local Action = Util.Action

-- tabItem, a table object defined in ConfigTypes. For example, a GENERAl, or SALES.
return Action(script.Name, function(tabItem)
	return {
		tabItem = tabItem,
	}
end)
