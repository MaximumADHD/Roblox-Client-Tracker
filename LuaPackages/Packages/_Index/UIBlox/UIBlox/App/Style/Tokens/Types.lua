local dependencies = require(script.Parent.dependencies)
local Types = dependencies.CommonPackage.Types
local ComponentType = Types.ComponentType
local SemanticType = Types.SemanticType
local GlobalType = Types.GlobalType

export type ComponentTokens = ComponentType.TYPE
export type SemanticTokens = SemanticType.TYPE
export type GlobalTokens = GlobalType.TYPE

export type Tokens = {
	Global: GlobalTokens,
	Semantic: SemanticTokens,
	Component: ComponentTokens,
}
return {}
