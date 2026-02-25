--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)
local useStyleSheet = require(ViewportToolingFramework.Hooks.useStyleSheet)

local function StyleLink()
	local styleSheet = useStyleSheet()

	return React.createElement("StyleLink", {
		StyleSheet = styleSheet,
	})
end

return StyleLink
