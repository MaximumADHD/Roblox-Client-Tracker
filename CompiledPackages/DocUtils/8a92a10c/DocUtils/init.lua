local Types = require(script.Types)

export type Prop = Types.Prop
export type PropTypeQualifier = Types.PropTypeQualifier
export type PropType = Types.PropType
export type Typechecking = Types.Typechecking

local DocUtils = {
	DocParser = require(script.DocParser),
	PropParser = require(script.PropParser),
	Enums = {
		PropTypeQualifiers = Types.PropTypeQualifiers,
		Typecheckers = Types.Typecheckers,
	},
}

return DocUtils
