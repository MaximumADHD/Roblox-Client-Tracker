export type Prop = {
	Name: string,
	Type: string | PropType,
	IsOptional: boolean,
	Default: any?,
	Comment: string?,
}

local PropTypeQualifiers = { Array = "Array", Interface = "Interface" }
export type PropTypeQualifier = typeof(PropTypeQualifiers.Array) | typeof(PropTypeQualifiers.Interface)

export type PropType = { Qualifier: PropTypeQualifier, Props: { Prop } }

local Typecheckers = { T = "T", Luau = "Luau" }
export type Typechecking = typeof(Typecheckers.T) | typeof(Typecheckers.Luau)

return {
	PropTypeQualifiers = PropTypeQualifiers,
	Typecheckers = Typecheckers,
}
