local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MaterialVariant: MaterialVariant
}

return Action(script.Name, function(materialVariant: MaterialVariant): Payload
	return {
		MaterialVariant = materialVariant
	}
end)
