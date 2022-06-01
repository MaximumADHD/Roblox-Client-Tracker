export type Map<T, V> = {[T]: V}

export type Array<T> = Map<number, T>

export type Path = Array<string>

export type MaterialPromptType = string

export type MaterialType = string

export type Material = {
	-- Remove IsBuiltin with FFlagMaterialManagerGlassNeonForceField
	IsBuiltin : boolean?,
	Material : Enum.Material,
    MaterialPath : Path,
	MaterialVariant : MaterialVariant?,
    MaterialType : MaterialType,
}

-- TODO: decide on type for TextureMap

--[[
	There are 2 possible ways to import texture map:
	1. Import new file -> add file and tempId
	2. Insert assetId -> add assetId
]]--
export type TextureMap = {	
	file : File?,
	tempId : string?,
	assetId : string?,
}

export type Image = {
	Image : string,
	Color : Color3,
}

return {}
