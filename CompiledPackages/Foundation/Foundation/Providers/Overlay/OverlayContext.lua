local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

return React.createContext({
	instance = nil :: GuiBase2d?,
} :: {
	instance: GuiBase2d?,
})
