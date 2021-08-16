-- !nonstrict

local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type Props = {
	assetSettings: Instance
}

return Framework.Util.Action(script.Name, function(assetSettings : Instance)
	return {
		assetSettings = assetSettings,
	}
end)
