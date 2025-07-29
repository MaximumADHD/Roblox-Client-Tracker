local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local RadioGroupContext = require(script.Parent.RadioGroupContext)

type RadioGroupValue = {
	value: string?,
	onValueChanged: (newValue: string) -> (),
	Selectable: boolean?,
}

local useRadioGroupValues = function(): (string?, (newValue: string) -> (), boolean?)
	local v = React.useContext(RadioGroupContext)
	return v.value, v.onValueChanged, v.Selectable
end

return useRadioGroupValues
