local MomentsCommon = script:FindFirstAncestor("MomentsCommon")
local Packages = MomentsCommon.Parent

local React = require(Packages.React)

export type ToggleState = {
	enabled: boolean,
	enable: () -> (),
	disable: () -> (),
	toggle: () -> (),
	set: (newValue: boolean) -> (),
}

local function useToggleState(default: (boolean | () -> boolean)?): ToggleState
	local enabled, setEnabled = React.useState(default or false)

	local enable = React.useCallback(function()
		setEnabled(true)
	end, {})

	local disable = React.useCallback(function()
		setEnabled(false)
	end, {})

	local toggle = React.useCallback(function()
		setEnabled(function(currentEnabled)
			return not currentEnabled
		end)
	end, {})

	return {
		enabled = enabled,
		enable = enable,
		disable = disable,
		toggle = toggle,
		set = setEnabled,
	}
end

return useToggleState
