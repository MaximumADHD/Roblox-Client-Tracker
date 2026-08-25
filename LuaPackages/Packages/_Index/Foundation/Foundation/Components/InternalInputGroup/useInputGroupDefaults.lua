local Foundation = script:FindFirstAncestor("Foundation")

local withDefaults = require(Foundation.Utility.withDefaults)

local useInputGroup = require(script.Parent.useInputGroup)

-- Merges component props over InputGroup context over component defaultProps.
local function useInputGroupDefaults<P, D>(props: P, defaultProps: D): P & D
	local context = useInputGroup()

	return withDefaults(props, withDefaults(context, defaultProps))
end

return useInputGroupDefaults
