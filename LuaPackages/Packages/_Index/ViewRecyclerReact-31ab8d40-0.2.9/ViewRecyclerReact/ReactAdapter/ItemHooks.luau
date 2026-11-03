local Root = script:FindFirstAncestor("ViewRecyclerReact")

local React = require(Root.Parent.React)
local RecyclableViewContext = require(Root.ReactAdapter.Private.RecyclableViewContext)
local Signals = require(Root.Parent.Signals)

export type RecyclingDependency = Signals.getter<unknown>
export type StateInitializer<S> = S | (() -> S)
export type SetStateAction<S> = S | ((previousState: S) -> S)
export type RecyclableViewAssignment<T> = {
	key: string,
	index: number?,
	value: T,
}

type RecyclingState<S> = {
	token: {},
	value: S,
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

local function useRecyclingToken(additionalDependencies: { RecyclingDependency }?): {}
	local identity = useRecyclableViewContext().itemKeySignal
	local dependencies = table.create(1 + #(additionalDependencies or {}))
	dependencies[1] = identity
	if additionalDependencies ~= nil then
		for _, dependency in additionalDependencies do
			table.insert(dependencies, dependency)
		end
	end
	local _version, setVersion = React.useState(0)
	local valuesRef = React.useRef({} :: { unknown })
	local tokenRef = React.useRef({})
	local changed = #valuesRef.current ~= #dependencies
	local values = table.create(#dependencies)
	for index, dependency in dependencies do
		local value = dependency(false)
		values[index] = value
		if valuesRef.current[index] ~= value then
			changed = true
		end
	end
	if changed then
		valuesRef.current = values
		tokenRef.current = {}
	end

	React.useLayoutEffect(function()
		return Signals.createEffect(function(scope)
			local effectValues = table.create(#dependencies)
			local effectChanged = #valuesRef.current ~= #dependencies
			for index, dependency in dependencies do
				local value = dependency(scope)
				effectValues[index] = value
				if valuesRef.current[index] ~= value then
					effectChanged = true
				end
			end
			if effectChanged then
				valuesRef.current = effectValues
				tokenRef.current = {}
				setVersion(function(version)
					return version + 1
				end)
			end
		end)
	end, dependencies :: { unknown })

	return tokenRef.current
end

-- Resets during render so descendants cannot interact with state from the
-- previous identity. Setters captured under an earlier identity become inert.
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
	local resetState = if recyclingState.token ~= token
		then {
			token = token,
			value = initialize(initialState),
		}
		else nil
	if resetState ~= nil then
		setRecyclingState(resetState)
	end
	local renderedState = resetState or recyclingState
	local didMountRef = React.useRef(false)
	local resetCallbackRef = React.useRef(resetCallback)
	resetCallbackRef.current = resetCallback
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
		setRecyclingState(function(current: RecyclingState<S>): RecyclingState<S>
			if current.token ~= capturedToken then
				return current
			end
			local nextValue = if type(action) == "function" then (action :: (S) -> S)(current.value) else action
			return {
				token = current.token,
				value = nextValue,
			}
		end)
	end, { capturedToken })
	return renderedState.value, setState
end

function ItemHooks.useRecyclingSignal<S>(
	initialState: StateInitializer<S>,
	additionalDependencies: { RecyclingDependency }?,
	resetCallback: (() -> ())?
): (Signals.getter<S>, Signals.setter<S>)
	local token = useRecyclingToken(additionalDependencies)
	local signalState = React.useState(function()
		local getter, setter = Signals.createSignal(initialize(initialState))
		return {
			getter = getter,
			setter = setter,
			token = token,
		}
	end)
	if signalState.token ~= token then
		signalState.token = token
		signalState.setter(initialize(initialState))
	end

	local didMountRef = React.useRef(false)
	local resetCallbackRef = React.useRef(resetCallback)
	resetCallbackRef.current = resetCallback
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
	local setSignal = React.useCallback(function(value: S)
		if signalState.token == capturedToken then
			signalState.setter(value)
		end
	end, { capturedToken, signalState })
	return signalState.getter, setSignal
end

return table.freeze(ItemHooks)
