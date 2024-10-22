local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

return React.createContext({
	overlay = nil,
} :: {
	overlay: ScreenGui?,
})
