--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local React = require(ViewportToolingFramework.Parent.React)

export type ToggleState = {
	enabled: boolean,
	enable: () -> (),
	disable: () -> (),
	toggle: () -> (),
}

-- SBT-2914: Replace with ReactUtils.useToggleState
local function useToggleState(default: boolean?): ToggleState
	local enabled, setEnabled = React.useState(default or false)

	local enable = React.useCallback(function()
		setEnabled(true)
	end, {})

	local disable = React.useCallback(function()
		setEnabled(false)
	end, {})

	local toggle = React.useCallback(function()
		setEnabled(function(current)
			return not current
		end)
	end, {})

	return {
		enabled = enabled,
		enable = enable,
		disable = disable,
		toggle = toggle,
	}
end

return useToggleState
