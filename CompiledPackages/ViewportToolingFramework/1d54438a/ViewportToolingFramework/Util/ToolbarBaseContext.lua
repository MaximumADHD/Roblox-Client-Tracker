--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

export type ContextType = {
	Direction: "Horizontal" | "Vertical",
}

local default: ContextType = {
	Direction = "Horizontal",
}

local ToolbarBaseContext = React.createContext(default)

return ToolbarBaseContext
