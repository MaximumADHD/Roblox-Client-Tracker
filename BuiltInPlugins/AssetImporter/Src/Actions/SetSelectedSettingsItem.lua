-- !nonstrict

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type Props = {
	selectedSettingsItem: Instance
}

return Framework.Util.Action(script.Name, function(selectedSettingsItem: Instance)
	return {
		selectedSettingsItem = selectedSettingsItem,
	}
end)
