local Root = script:FindFirstAncestor("ViewRecyclerReact")
local React = require(Root.Parent.React)

export type Value = {
	register: (target: GuiObject, setActive: (boolean) -> ()) -> () -> (),
}

return React.createContext(nil :: Value?)
