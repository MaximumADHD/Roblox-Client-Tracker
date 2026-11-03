local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
local RecyclableViewContext = require(Root.ReactAdapter.Private.RecyclableViewContext)
local Signals = require(Root.Parent.Signals)

export type RecyclingDependency = Signals.getter<unknown>
export type StateInitializer<S> = S | (() -> S)
export type SetStateAction<S> = S | ((previousState: S) -> S)
export type RecyclableViewAssignment<T> = {
	key: string,
	value: T,
}

type RecyclingState<S> = {
	token: {},
	value: S,
}

type RecyclingTokenState = {
	token: {},
	values: { unknown },
}

type RecyclingSignalState<S> = {
	getter: Signals.getter<S>,
	setter: Signals.setter<S>,
	committedToken: {}?,
}

local ItemHooks = {}

local function initialize<S>(initialState: StateInitializer<S>): S
	return if type(initialState) == "function" then (initialState :: () -> S)() else initialState
end

local function useRecyclableViewContext(): RecyclableViewContext.Value
	local context = React.useContext(RecyclableViewContext)
	assert(type(context) == "table", "Recycling hooks must be called within a Recyclable view")
	return context
end

function ItemHooks.useRecyclingItem<T>(): Signals.getter<T>
	return useRecyclableViewContext().itemSignal
end

function ItemHooks.useRecyclingAssignment<T>(): Signals.getter<RecyclableViewAssignment<T>?>
	return useRecyclableViewContext().assignmentSignal
end

function ItemHooks.useRecyclingIndex(): Signals.getter<number?>
	return useRecyclableViewContext().indexSignal
end

local function sameValues(before: { unknown }, after: { unknown }): boolean
	if #before ~= #after then
		return false
	end
	for index, value in after do
		if before[index] ~= value then
			return false
		end
	end
	return true
end

local function useRecyclingToken(additionalDependencies: { RecyclingDependency }?): {}
	local identity = useRecyclableViewContext().itemKeySignal
	local dependencies = table.create(1 + #(additionalDependencies or {}))
	dependencies[1] = identity
	if additionalDependencies ~= nil then
		for _, dependency in additionalDependencies do
			table.insert(dependencies, dependency)
		end
	end

	local values = table.create(#dependencies)
	for index, dependency in dependencies do
		values[index] = dependency(false)
	end
	local tokenState, setTokenState = React.useState(function(): RecyclingTokenState
		return {
			token = {},
			values = values,
		}
	end)
	if not sameValues(tokenState.values, values) then
		tokenState = {
			token = {},
			values = values,
		}
		setTokenState(tokenState)
	end

	React.useLayoutEffect(function()
		return Signals.createEffect(function(scope)
			local effectValues = table.create(#dependencies)
			for index, dependency in dependencies do
				effectValues[index] = dependency(scope)
			end
			setTokenState(function(current)
				if sameValues(current.values, effectValues) then
					return current
				end
				return {
					token = {},
					values = effectValues,
				}
			end)
		end)
	end, dependencies :: { unknown })

	return tokenState.token
end

function ItemHooks.useRecyclingState<S>(
	initialState: StateInitializer<S>,
	additionalDependencies: { RecyclingDependency }?,
	resetCallback: (() -> ())?
): (S, (action: SetStateAction<S>) -> ())
	local token = useRecyclingToken(additionalDependencies)
	local recyclingState, setRecyclingState = React.useState(function(): RecyclingState<S>
		return {
			token = token,
			value = initialize(initialState),
		}
	end)
	if recyclingState.token ~= token then
		recyclingState = {
			token = token,
			value = initialize(initialState),
		}
		setRecyclingState(recyclingState)
	end
	local didMountRef = React.useRef(false)
	local resetCallbackRef = React.useRef(resetCallback)
	React.useLayoutEffect(function()
		resetCallbackRef.current = resetCallback
	end, { resetCallback } :: { unknown })
	React.useLayoutEffect(function()
		if didMountRef.current then
			local callback = resetCallbackRef.current
			if callback ~= nil then
				callback()
			end
		else
			didMountRef.current = true
		end
	end, { token } :: { unknown })

	local capturedToken = token
	local setState = React.useCallback(function(action: SetStateAction<S>)
		setRecyclingState(function(current)
			if current.token ~= capturedToken then
				return current
			end
			local value = if type(action) == "function" then (action :: (S) -> S)(current.value) else action
			return {
				token = current.token,
				value = value,
			}
		end)
	end, { capturedToken } :: { unknown })
	return recyclingState.value, setState
end

function ItemHooks.useRecyclingSignal<S>(
	initialState: StateInitializer<S>,
	additionalDependencies: { RecyclingDependency }?,
	resetCallback: (() -> ())?
): (Signals.getter<S>, Signals.setter<S>)
	local token = useRecyclingToken(additionalDependencies)
	local signalState = React.useState(function(): RecyclingSignalState<S>
		local getter, setter = Signals.createSignal(initialize(initialState))
		return {
			getter = getter,
			setter = setter,
			committedToken = token,
		}
	end)

	local didMountRef = React.useRef(false)
	React.useLayoutEffect(function()
		if didMountRef.current then
			signalState.committedToken = token
			signalState.setter(initialize(initialState))
			if resetCallback ~= nil then
				resetCallback()
			end
		else
			didMountRef.current = true
		end
	end, { token } :: { unknown })

	local capturedToken = token
	local setSignal = React.useCallback(function(value: S)
		if signalState.committedToken == capturedToken then
			signalState.setter(value)
		end
	end, { capturedToken, signalState } :: { unknown })
	return signalState.getter, setSignal
end

return table.freeze(ItemHooks)
