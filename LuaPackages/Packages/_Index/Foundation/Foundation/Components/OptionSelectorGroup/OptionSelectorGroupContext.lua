local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior
local OptionSelectorGroupSize = require(Foundation.Enums.OptionSelectorGroupSize)
local Orientation = require(Foundation.Enums.Orientation)
type OptionSelectorGroupSize = OptionSelectorGroupSize.OptionSelectorGroupSize

type OptionSelectorGroupContextValue = {
	value: string?,
	onValueChanged: (newValue: string?) -> (),
	orientation: Orientation.Orientation,
	Selectable: boolean,
	testId: string,
	size: OptionSelectorGroupSize?,
	fillBehavior: FillBehavior?,
}

return React.createContext({
	value = nil,
	onValueChanged = function(_newValue: string | nil)
		warn("No OptionSelectorGroupProvider found for OptionSelectorGroup")
	end,
	orientation = Orientation.Vertical,
	Selectable = true,
	testId = "",
	size = OptionSelectorGroupSize.Medium,
	fillBehavior = nil,
} :: OptionSelectorGroupContextValue)
