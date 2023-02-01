--[[
upstream: https://github.com/reduxjs/react-redux/blob/a3503c1402cd5b752d9b642dce54d05327ccf3b4/src/hooks/useSelector.ts

A hook to access the redux store's state. This hook takes a selector function
as an argument. The selector is called with the store state.

NOTE: The selector function should:

	1. Have a stable identity - to avoid calling it on every render when
		state has not changed
	2. Be a pure function - because it may be executed multiple times and
		at arbitrary points in time

This hook takes an optional equality comparison function as the second parameter
that allows you to customize the way the selected state is compared to determine
whether the component needs to be re-rendered.

@param {Function} selector the selector function. It should be pure since it is
	   potentially executed multiple times and at arbitrary points in time.
@param {Function=} equalityFn the function that will be used to determine equality

@returns {any} the selected state

@example

-- Defined outside component to keep stable identity
local function selectCounter(state)
	return state.counter
end

local function CounterComponent()
	local counter = useSelector(selectCounter)

	return Roact.createElement("TextLabel", {
		Text = tostring(counter),
	})
end
]]

local CorePackages = game:GetService("CorePackages")
local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local React = require(CorePackages.Packages.React)
local Dash = require(CorePackages.Packages.Dash)

local useStore = require(script.Parent.useStore)

type EqualityFn<T> = (a: T?, b: T?) -> boolean

type TSelector<S, R> = (state: S) -> R

local refEquality: EqualityFn<any> = function(a, b)
	return a == b
end

function useSelectorWithStore<TState, TSelected>(
	selector: TSelector<TState, TSelected>,
	equalityFn: EqualityFn<TSelected>,
	store: any
): TSelected
	local _, forceRender = React.useReducer(function(state: number)
		return state + 1
	end, 0)

	local latestSubscriptionCallbackError = React.useRef(nil :: any?)
	local latestSelector = React.useRef(nil :: TSelector<TState, TSelected>?)
	local latestStoreState = React.useRef(nil :: TState?)
	local latestSelectedState = React.useRef(nil :: TSelected?)

	local storeState = store:getState()
	local selectedState: TSelected? = nil

	local status, err = pcall(function()
		if
			selector ~= latestSelector.current
			or storeState ~= latestStoreState.current
			or latestSubscriptionCallbackError.current
		then
			local newSelectedState = selector(storeState)
			-- ensure latest selected state is reused so that a custom equality function can result in identical references
			if latestSelectedState.current == nil or not equalityFn(newSelectedState, latestSelectedState.current) then
				selectedState = newSelectedState
			else
				selectedState = latestSelectedState.current
			end
		else
			selectedState = latestSelectedState.current
		end
	end)

	if not status then
		if latestSubscriptionCallbackError.current then
			err = string.format(
				"%s\nThe error may be correlated with this previous error:\n%s\n\n",
				tostring(err),
				tostring(latestSubscriptionCallbackError.current)
			)
		end

		error(err)
	end

	React.useLayoutEffect(function()
		latestSelector.current = selector
		latestStoreState.current = storeState
		latestSelectedState.current = selectedState
		latestSubscriptionCallbackError.current = nil
	end)

	React.useLayoutEffect(function()
		local function checkForUpdates(newStoreState)
			local success, errOrChanged = pcall(function(): any
				-- Avoid calling selector multiple times if the store's state has not changed
				if newStoreState == latestStoreState.current then
					return false
				end

				assert(latestSelector.current, "latestSelector")
				local newSelectedState = latestSelector.current(newStoreState)

				if equalityFn(newSelectedState, latestSelectedState.current) then
					return false
				end

				latestSelectedState.current = newSelectedState
				latestStoreState.current = newStoreState
				return true
			end)
			if not success then
				errOrChanged = errOrChanged or "Error"
				-- we ignore all errors here, since when the component
				-- is re-rendered, the selectors are called again, and
				-- will throw again, if neither props nor store state
				-- changed
				latestSubscriptionCallbackError.current = errOrChanged
			end

			if errOrChanged then
				forceRender(nil)
			end
		end
		local connection = store.changed:connect(checkForUpdates)

		checkForUpdates(store:getState())

		return function()
			connection:disconnect()
		end
	end, { store })

	return selectedState :: TSelected
end

function useSelector<TState, TSelected>(selector: TSelector<TState, TSelected>, equalityFnParam: EqualityFn<TSelected>?): TSelected
	ArgCheck.isNotNil(selector, "selector")
	ArgCheck.assert(Dash.isCallable(selector), "useSelector expects 'selector' to be callable")
	ArgCheck.isTypeOrNil(equalityFnParam, "function", "equalityFn")

	local equalityFn: EqualityFn<TSelected> = equalityFnParam or refEquality

	local store = useStore()

	local selectedState = useSelectorWithStore(selector, equalityFn, store)

	return selectedState
end

return useSelector
