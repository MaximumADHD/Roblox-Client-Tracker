export type Map<T, V> = {[T]: V}

export type Array<T> = Map<number, T>

export type Path = Array<string>

export type Material = {
    IsBase : boolean,
    MaterialPath : Path,
    MaterialVariant : MaterialVariant,
    MaterialType : string,
}

export type TextureMap = {
	file : File?,
	preview : number,
	width : number,
	height : number,
	channels : number,
	-- TODO: decide where assetIds go
	-- tempId : string,
	-- assetId : string,
}

return {}
