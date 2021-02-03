local Plugin = script.Parent.Parent.Parent
local Util = require(Plugin.Packages.Framework.Util)

local FlagsList = Util.Flags.new({
	FFlagEnablePluginPermissionsPage = {
		"EnablePluginPermissionsPage2",
	},
	FFlagPluginManagementQ3ContentSecurity = "PluginManagementQ3ContentSecurity",
	FFlagPluginManagementFixRemovePlugins = "PluginManagementFixRemovePlugins",
})
return FlagsList