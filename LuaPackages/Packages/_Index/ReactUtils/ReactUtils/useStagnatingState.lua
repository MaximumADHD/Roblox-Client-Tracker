--[[
	Like `React.useState`, but the value resets to `initial` whenever the
	`spoilers` list changes (by shallow equality). Useful for holding a
	temporary override that should be forgotten as soon as its upstream
	context changes.

	This is all done without re-renders and with no possibility of state tearing.
	You should virtually always use this over a `useEffect` that sets a state when
	something changes.
]]
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local React = require(ReactUtils.Parent.React)

type ReactSetter<T> = (T | ((T) -> T)) -> ()

type State<T> = {
	tick: number,
	value: T,
}

local function shallowEqual<T>(x: T, y: T): boolean
	if x == y then
		return true
	end

	if typeof(x) ~= typeof(y) then
		return false
	end

	if typeof(x) == "table" then
		assert(typeof(y) == "table", "Luau")

		if #x ~= #y then
			return false
		end

		for key in x do
			if x[key] ~= y[key] then
				return false
			end
		end

		for key in y do
			if x[key] ~= y[key] then
				return false
			end
		end

		return true
	end

	return x == y
end

-- When spoilers change, will go back to returning the default.
local function useStagnatingState<T>(initial: T, spoilers: { unknown }): (T, ReactSetter<T>)
	local lastSpoilersRef = React.useRef(spoilers)
	local tickRef = React.useRef(0)

	if not shallowEqual(lastSpoilersRef.current, spoilers) then
		lastSpoilersRef.current = spoilers
		tickRef.current += 1
	end

	local state: State<T>, setState = React.useState({
		tick = tickRef.current,
		value = initial,
	})

	local setStagnatingState = React.useCallback(function(setter: T | ((T) -> T))
		if typeof(setter) == "function" then
			setState(function(currentState)
				local value = if currentState.tick == tickRef.current then currentState.value else initial
				return {
					tick = tickRef.current,
					value = setter(value),
				}
			end)
		else
			setState({
				tick = tickRef.current,
				value = setter,
			})
		end
	end, { initial })

	return if state.tick == tickRef.current then state.value else initial, setStagnatingState
end

return useStagnatingState
