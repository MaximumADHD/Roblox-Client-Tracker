local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Material: Enum.Material,
	MaterialStatus: Enum.PropertyStatus,
}

return Action(script.Name, function(material: Enum.Material, materialStatus: Enum.PropertyStatus): Payload
	return {
		Material = material,
		MaterialStatus = materialStatus
	}
end)
