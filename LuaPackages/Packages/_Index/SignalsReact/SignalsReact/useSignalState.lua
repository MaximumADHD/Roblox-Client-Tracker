local Packages = script.Parent.Parent
local React = require(Packages.React)

local Signals = require(Packages.Signals)
local createEffect = Signals.createEffect
type getter<T> = Signals.getter<T>

local _, FFlagSignalsReactUseMutableSource = xpcall(function()
	return game:DefineFastFlag("SignalsReactUseMutableSource", false)
end, function()
	return true
end)

local function getSignalVersion(getter: getter<unknown>): number
	local function dummyObserver(): ()
		return getter -- here to ensure this function object is unique
	end

	-- these are duplicated from the core implementation
	type observer = () -> ()
	type source = (observer?, true?) -> number

	local capturedSource: source

	local function scope(source: source): observer
		capturedSource = source
		return dummyObserver
	end

	getter(scope)

	capturedSource(dummyObserver, true)

	return capturedSource()
end

local function getSignalSnapshot<T>(getter: getter<T>): T
	return getter(false)
end

local function subscribeToSignal<T>(getter: getter<T>, callback: (T) -> ())
	return createEffect(function(scope)
		callback(getter(scope))
	end)
end

local function useSignalState<T>(getter: getter<T>): T
	local signalSource = React.useMemo(function()
		return React.createMutableSource(getter, getSignalVersion)
	end, { getter })

	return React.useMutableSource(signalSource, getSignalSnapshot, subscribeToSignal)
end

local function useSignalState_old<T>(getter: getter<T>): T
	local value, setValue = React.useState(function()
		return getter(false)
	end)

	React.useLayoutEffect(function()
		setValue(getter(false))
		return createEffect(function(scope)
			setValue(getter(scope))
		end)
	end, { getter })

	return value
end

return if FFlagSignalsReactUseMutableSource then useSignalState else useSignalState_old :: never
