local Root = script:FindFirstAncestor("ViewRecyclerReact")
local Core = require(Root.Parent.ViewRecycler)
local React = require(Root.Parent.React)
local RecyclingRoot = require(script.Parent.RecyclingRoot)

export type Value = {
	root: RecyclingRoot.RecyclingRoot,
	listOptions: {
		maxPoolSize: number?,
		diagnostics: Core.DiagnosticCallback?,
	},
	registerConsumer: () -> () -> (),
}

return React.createContext(nil :: Value?)
