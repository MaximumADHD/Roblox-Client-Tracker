local Root = script:FindFirstAncestor("Style")
local Packages = Root.Parent
local React = require(Packages.React)

-- TODO: Update UIBlox to export these types
type GlobalTokens = any
type SemanticTokens = any
type ComponentTokens = any
type Tokens = {
	Global: GlobalTokens,
	Semantic: SemanticTokens,
	Component: ComponentTokens,
}

export type DesignTokens = Tokens & {
	LuaApps: any,
}

return React.createContext(nil :: DesignTokens?)
