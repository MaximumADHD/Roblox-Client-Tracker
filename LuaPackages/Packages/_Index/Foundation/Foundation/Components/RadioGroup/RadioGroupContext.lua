local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

return React.createContext({
	value = nil,
	onValueChanged = function(_newValue: string)
		warn("No RadioGroupProvider found for RadioGroup")
	end,
	Selectable = true,
})
