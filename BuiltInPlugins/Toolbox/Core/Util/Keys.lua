local Plugin = script.Parent.Parent.Parent

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local function createKey(name)
	local key = newproxy(true)
	local str = ("Symbol(%s)"):format(tostring(name))
	getmetatable(key).__tostring = function()
		return str
	end
	return key
end

local Keys = {}

Keys.localization = createKey("Localization")
Keys.networkInterface = createKey("NetworkInterface")
Keys.pluginGui = createKey("PluginGui")
Keys.plugin = createKey("Plugin")
Keys.settings = createKey("Settings")
Keys.theme = createKey("Theme")

return wrapStrictTable(Keys, "Keys")
