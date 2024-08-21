local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CheckedValueContext = require(script.Parent.CheckedValueContext)

type CheckedValue = {
	value: string?,
	onValueChanged: (newValue: string) -> (),
}

local useCheckedValue = function(): (string?, (newValue: string) -> ())
	local v = React.useContext(CheckedValueContext)
	return v.value, v.onValueChanged
end

return useCheckedValue
