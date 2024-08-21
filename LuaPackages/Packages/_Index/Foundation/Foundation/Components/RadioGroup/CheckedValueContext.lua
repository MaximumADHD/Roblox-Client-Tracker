local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

return React.createContext({
	value = nil,
	onValueChanged = function(newValue: string)
		warn("No CheckedValueProvider found for RadioGroup")
	end,
})
