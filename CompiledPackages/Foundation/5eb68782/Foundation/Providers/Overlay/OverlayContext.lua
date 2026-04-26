local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

return React.createContext({
	requestOverlay = function() end,
	instance = nil :: GuiBase2d?,
	screen = nil :: GuiBase2d?,
} :: {
	requestOverlay: () -> (),
	instance: GuiBase2d?,
	screen: GuiBase2d?,
})
