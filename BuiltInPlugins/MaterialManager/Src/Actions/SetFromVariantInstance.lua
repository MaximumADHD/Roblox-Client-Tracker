local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	Name : string,
	BaseMaterial : Enum.Material,
	ColorMap : _Types.TextureMap,
	MetalnessMap : _Types.TextureMap,
	NormalMap : _Types.TextureMap,
	RoughnessMap : _Types.TextureMap,
	StudsPerTile : number,
	MaterialPattern : Enum.MaterialPattern,
}

return Action(script.Name, function(materialVariant : MaterialVariant) : Payload
	assert(type(materialVariant) == "userdata", ("Expected materialVariant to be userdata, received %s"):format(type(materialVariant)))
	return {
		Name = materialVariant.Name,
		BaseMaterial = materialVariant.BaseMaterial,
		ColorMap = materialVariant.ColorMap,
		MetalnessMap = materialVariant.MetalnessMap,
		NormalMap = materialVariant.NormalMap,
		RoughnessMap = materialVariant.RoughnessMap,
		StudsPerTile = materialVariant.StudsPerTile,
		MaterialPattern = materialVariant.MaterialPattern,
	}
end)
