--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local React = require(ReactUtils.Parent.React)
local useRefToState = require(ReactUtils.useRefToState)

-- Will provide a function that will always call the given function,
-- and does *not* need to be a dependency in hooks.
-- Useful for things like `React.Event` properties, but also hooks in general.
local function useEventCallback<A..., R...>(callback: (A...) -> R...): (A...) -> R...
	local ref = useRefToState(callback)
	return React.useCallback(function(...)
		return ref.current(...)
	end, {})
end

return useEventCallback
