local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
local Signals = require(Root.Parent.Signals)

export type Value = {
	placement: Signals.getter<any?>,
	assignmentSignal: Signals.getter<any>,
	itemSignal: Signals.getter<any>,
	itemKeySignal: Signals.getter<unknown>,
}

-- `false` means no Recyclable view host: definitions render inline.
return React.createContext(false :: Value | boolean)
