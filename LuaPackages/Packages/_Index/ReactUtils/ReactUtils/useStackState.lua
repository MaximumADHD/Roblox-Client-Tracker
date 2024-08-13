--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

local LUAU_ANALYZE_ERROR = ReactUtils.LUAU_ANALYZE_ERROR

local function useStackState<T>(initialState: { T }?): {
	push: (T) -> (),
	pop: () -> T?,
	getTop: () -> T?,
	clear: () -> (),
	size: number,
}
	local stateRef = React.useRef(initialState or {} :: { T })
	assert(stateRef.current ~= nil, LUAU_ANALYZE_ERROR)

	local size, setSize = React.useState(#stateRef.current)

	local push = React.useCallback(function(value: T)
		table.insert(stateRef.current, value)
		setSize(#stateRef.current)
	end, {})

	local pop = React.useCallback(function(): T?
		local value = table.remove(stateRef.current)
		setSize(#stateRef.current)
		return value
	end, {})

	local getTop = React.useCallback(function(): T?
		return stateRef.current[#stateRef.current]
	end, {})

	local clear = React.useCallback(function()
		table.clear(stateRef.current)
		setSize(0)
	end, {})

	return {
		push = push,
		pop = pop,
		getTop = getTop,
		clear = clear,
		size = size,
	}
end

return useStackState
