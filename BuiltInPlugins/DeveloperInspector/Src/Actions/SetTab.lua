--[[
	Select which tab to display
]]
local main = script.Parent.Parent.Parent
local Framework = require(main.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

local TabsTypes = require(main.Packages._Index.DeveloperFramework.DeveloperFramework.UI.Tabs.types)

return Action(script.Name, function(tab: TabsTypes.Tab)
	return {
		tab = tab
	}
end)
