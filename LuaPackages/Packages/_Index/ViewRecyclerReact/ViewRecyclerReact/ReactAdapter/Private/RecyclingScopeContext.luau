local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local React = require(Root.Parent.React)

local RecyclingRoot = require(script.Parent.RecyclingRoot)

-- What a joining consumer may do with the nearest scope. The creating
-- `RecyclingScope` keeps the root and its creator-only operations.
export type Value = {
	getScope: () -> any,
	observePool: (diagnostics: Core.DiagnosticCallback) -> () -> (),
	registerConsumer: () -> () -> (),

	root: RecyclingRoot.RecyclingRoot?,
	listOptions: {
		maxPoolSize: number?,
		diagnostics: Core.DiagnosticCallback?,
	}?,
}

return React.createContext(nil :: Value?)
