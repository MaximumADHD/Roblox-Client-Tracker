local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

local TerrainFaces = {
	Enum.TerrainFace.Top,
	Enum.TerrainFace.Side,
	Enum.TerrainFace.Bottom,
}

return function(): _Types.Array<Enum.TerrainFace>
	return TerrainFaces
end
