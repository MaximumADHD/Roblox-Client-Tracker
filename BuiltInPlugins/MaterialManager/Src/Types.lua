export type Array<T> = {[number]: T}

export type Path = Array<string>

export type Material = {
    Base : boolean,
    MaterialPath : Path,
    MaterialVariant : MaterialVariant | Enum.Material,
    MaterialType : string,
}

return {}
