local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework).Util

local FlagsList = Util.Flags.new({
	FFlagPluginManagementQ3ContentSecurity = "PluginManagementQ3ContentSecurity",
})
return FlagsList
