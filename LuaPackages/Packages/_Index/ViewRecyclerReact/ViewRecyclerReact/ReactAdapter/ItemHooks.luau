local FFlagViewRecyclerReact084 = require(script:FindFirstAncestor("ViewRecyclerReact").Flags).FFlagViewRecyclerReact084
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
	values: { unknown },
	value: S,
}

type RecyclingTokenState = {
	token: {},
	values: { unknown },
}

type RecyclingSignalState<S> = {
	getter: Signals.getter<S>,
	setter: Signals.setter<S>,
	values: { unknown },
	unmounted: boolean,

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

local useRecyclingDependencies, readValues, useRecyclingToken
if FFlagViewRecyclerReact084 then
	function useRecyclingDependencies(additionalDependencies: { RecyclingDependency }?): { RecyclingDependency }
		local dependencies = table.create(1 + #(additionalDependencies or {}))
		dependencies[1] = useRecyclableViewContext().itemKeySignal
		if additionalDependencies ~= nil then
			for _, dependency in additionalDependencies do
				table.insert(dependencies, dependency)
			end
		end
		return dependencies
	end

	function readValues(dependencies: { RecyclingDependency }, scope: Signals.scope | false): { unknown }
		local values = table.create(#dependencies)
		for index, dependency in dependencies do
			values[index] = dependency(scope)
		end
		return values
	end
else
	function useRecyclingToken(additionalDependencies: { RecyclingDependency }?): {}
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
end

function ItemHooks.useRecyclingState<S>(
	initialState: StateInitializer<S>,
	additionalDependencies: { RecyclingDependency }?,
	resetCallback: (() -> ())?
): (S, (action: SetStateAction<S>) -> ())
	local dependencies, values, token
	if FFlagViewRecyclerReact084 then
		dependencies = useRecyclingDependencies(additionalDependencies)
		values = readValues(dependencies, false)
	else
		token = useRecyclingToken(additionalDependencies)
	end
	local recyclingState, setRecyclingState = React.useState(function(): RecyclingState<S>
		return {
			token = (if FFlagViewRecyclerReact084 then {} else token),
			values = (if FFlagViewRecyclerReact084 then values else nil),
			value = initialize(initialState),
		}
	end)
	if
		if FFlagViewRecyclerReact084
			then not sameValues(recyclingState.values, values)
			else recyclingState.token ~= token
	then
		recyclingState = {
			token = (if FFlagViewRecyclerReact084 then {} else token),
			values = (if FFlagViewRecyclerReact084 then values else nil),
			value = initialize(initialState),
		}
		setRecyclingState(recyclingState)
	end

	local latestRef
	if FFlagViewRecyclerReact084 then
		latestRef = React.useRef({ initialState = initialState, resetCallback = resetCallback })
		React.useLayoutEffect(function()
			latestRef.current = { initialState = initialState, resetCallback = resetCallback }
		end)
		React.useLayoutEffect(function()
			return Signals.createEffect(function(scope)
				local effectValues = readValues(dependencies, scope)
				setRecyclingState(function(current)
					if sameValues(current.values, effectValues) then
						return current
					end
					return {
						token = {},
						values = effectValues,
						value = initialize(latestRef.current.initialState),
					}
				end)
			end)
		end, dependencies :: { unknown })

		token = recyclingState.token
	end
	local didMountRef = React.useRef(false)

	local resetCallbackRef
	if not FFlagViewRecyclerReact084 then
		resetCallbackRef = React.useRef(resetCallback)
	end
	React.useLayoutEffect(function()
		if FFlagViewRecyclerReact084 then
			if didMountRef.current then
				local callback = latestRef.current.resetCallback
				if callback ~= nil then
					callback()
				end
			else
				didMountRef.current = true
			end
		else
			resetCallbackRef.current = resetCallback
		end
	end, { (if FFlagViewRecyclerReact084 then token else resetCallback) } :: { unknown })

	local capturedToken
	if not FFlagViewRecyclerReact084 then
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

		capturedToken = token
	end

	local setState = React.useCallback(function(action: SetStateAction<S>)
		setRecyclingState(function(current)
			if current.token ~= (if FFlagViewRecyclerReact084 then token else capturedToken) then
				return current
			end
			local value = if type(action) == "function" then (action :: (S) -> S)(current.value) else action
			return {
				token = current.token,
				values = (if FFlagViewRecyclerReact084 then current.values else nil),
				value = value,
			}
		end)
	end, { (if FFlagViewRecyclerReact084 then token else capturedToken) } :: { unknown })
	return recyclingState.value, setState
end

function ItemHooks.useRecyclingSignal<S>(
	initialState: StateInitializer<S>,
	additionalDependencies: { RecyclingDependency }?,
	resetCallback: (() -> ())?
): (Signals.getter<S>, Signals.setter<S>)
	local dependencies, token
	if FFlagViewRecyclerReact084 then
		dependencies = useRecyclingDependencies(additionalDependencies)
	else
		token = useRecyclingToken(additionalDependencies)
	end
	local signalState = React.useState(function(): RecyclingSignalState<S>
		local getter, setter = Signals.createSignal(initialize(initialState))
		return {
			getter = getter,
			setter = setter,
			values = (if FFlagViewRecyclerReact084 then readValues(dependencies, false) else nil),
			unmounted = (if FFlagViewRecyclerReact084 then false else nil),

			committedToken = if FFlagViewRecyclerReact084 then nil else token,
		}
	end)

	local latestRef, didMountRef, capturedToken
	if FFlagViewRecyclerReact084 then
		latestRef = React.useRef({ initialState = initialState, resetCallback = resetCallback })
		React.useLayoutEffect(function()
			latestRef.current = { initialState = initialState, resetCallback = resetCallback }
		end)
		React.useLayoutEffect(function()
			signalState.unmounted = false
			return function()
				signalState.unmounted = true
			end
		end, { signalState })
		React.useLayoutEffect(function()
			return Signals.createEffect(function(scope)
				local values = readValues(dependencies, scope)
				if sameValues(signalState.values, values) then
					return
				end
				signalState.values = values
				signalState.setter(initialize(latestRef.current.initialState))
				local callback = latestRef.current.resetCallback
				if callback ~= nil then
					callback()
				end
			end)
		end, dependencies :: { unknown })
	else
		didMountRef = React.useRef(false)
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

		capturedToken = token
	end

	-- Not guarded by key: a component that does not render on reassignment
	-- holds only setters created under earlier keys.
	local setSignal = React.useCallback(function(value: S)
		if
			if FFlagViewRecyclerReact084 then not signalState.unmounted else signalState.committedToken == capturedToken
		then
			signalState.setter(value)
		end
	end, (if FFlagViewRecyclerReact084 then { signalState } else { capturedToken, signalState }))
	return signalState.getter, setSignal
end

return table.freeze(ItemHooks)
