--!strict
--[[
	A hook that returns the result of an initialization function.

	The init function is only invoked on the first render. The returned
	value is saved and returned directly on all subsequent renders.
]]

local useLazyRef = require(script.Parent.useLazyRef)

local function useInitializedValue<T>(initFunction: () -> T): T
	local ref = useLazyRef(initFunction)
	return ref.current
end

return useInitializedValue
