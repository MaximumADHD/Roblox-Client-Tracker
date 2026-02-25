local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Orientation = require(Foundation.Enums.Orientation)

return React.createContext({
	value = nil,
	onValueChanged = function(_newValue: string | nil)
		warn("No OptionSelectorGroupProvider found for OptionSelectorGroup")
	end,
	orientation = Orientation.Vertical,
	Selectable = true,
	testId = "",
})
