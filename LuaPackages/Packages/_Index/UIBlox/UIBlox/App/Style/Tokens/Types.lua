--!nocheck
local dependencies = require(script.Parent.dependencies)
local _Types = dependencies.CommonPackage.Types

export type ComponentTokens = _Types.ComponentType
export type SemanticTokens = _Types.SemanticType
export type GlobalTokens = _Types.GlobalType

export type Tokens = {
	Global: GlobalTokens,
	Semantic: SemanticTokens,
	Component: ComponentTokens,
}
return {}
