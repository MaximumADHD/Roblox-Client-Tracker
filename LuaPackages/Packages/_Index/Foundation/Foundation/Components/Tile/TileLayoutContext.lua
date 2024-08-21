local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local FillBehavior = require(Foundation.Enums.FillBehavior)

local React = require(Packages.React)

return React.createContext({
	fillDirection = Enum.FillDirection.Vertical,
	fillBehavior = FillBehavior.Fill,
	tileSpacing = nil,
	tilePadding = nil,
	hasBackground = false,
})
