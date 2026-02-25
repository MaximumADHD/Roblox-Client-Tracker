local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local RadioGroupContext = require(script.Parent.RadioGroupContext)

type RadioGroupValue = {
	value: string?,
	onValueChanged: (newValue: string) -> (),
	Selectable: boolean?,
	testId: string?,
}

local useRadioGroup = function()
	return React.useContext(RadioGroupContext)
end

return useRadioGroup
