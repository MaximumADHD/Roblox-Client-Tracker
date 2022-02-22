local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local Util = require(Packages.Framework).Util
local Action = Util.Action

return Action(script.Name, function(setting, value)
	return {
		setting = setting,
		value = value,
	}
end)
