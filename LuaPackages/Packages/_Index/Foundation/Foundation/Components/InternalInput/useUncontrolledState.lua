local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local function useUncontrolledState(isChecked: boolean?, onActivated: (value: boolean) -> ())
	local internalIsChecked, setIsChecked = React.useState(isChecked or false)
	React.useEffect(function()
		if isChecked ~= nil then
			setIsChecked(isChecked)
		end
	end, { isChecked })

	local internalOnActivated = React.useCallback(function(value: boolean)
		if isChecked == nil then
			setIsChecked(value)
		end
		onActivated(value)
	end, { isChecked, onActivated } :: { unknown })

	return internalIsChecked, internalOnActivated
end

return useUncontrolledState
