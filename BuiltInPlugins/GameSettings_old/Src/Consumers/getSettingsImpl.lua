--Gets this component's currently attached SettingsImpl.

local Plugin = script.Parent.Parent.Parent

local settingsImplKey = require(Plugin.Src.Keys.settingsImplKey)

return function(component)
	return component._context[settingsImplKey]
end