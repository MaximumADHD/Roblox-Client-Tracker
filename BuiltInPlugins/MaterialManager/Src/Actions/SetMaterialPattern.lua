local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MaterialPattern: Enum.MaterialPattern
}

return Action(script.Name, function(materialPattern: Enum.MaterialPattern): Payload
	return {
		MaterialPattern = materialPattern,
	}
end)
