local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	name : string,
	baseMaterial : Enum.Material,
	colorMap : _Types.TextureMap,
	metalnessMap : _Types.TextureMap,
	normalMap : _Types.TextureMap,
	roughnessMap : _Types.TextureMap,
}

return Action(script.Name, function(materialVariant : MaterialVariant) : Payload
	assert(type(materialVariant) == "userdata", ("Expected materialVariant to be userdata, received %s"):format(type(materialVariant)))
	return {
		name = materialVariant.Name,
		baseMaterial = materialVariant.BaseMaterial,
		colorMap = materialVariant.ColorMap,
		metalnessMap = materialVariant.MetalnessMap,
		normalMap = materialVariant.NormalMap,
		roughnessMap = materialVariant.RoughnessMap,
	}
end)
