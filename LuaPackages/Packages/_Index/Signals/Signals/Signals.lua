local callUserSpace = require(script.Parent.callUserSpace)
local Scheduler = require(script.Parent.Scheduler)
local scheduleWork = Scheduler.scheduleWork
local runContinuations = Scheduler.runContinuations

export type getter<T> = (scope | false) -> T
export type setter<T> = (update<T>) -> ()
export type update<T> = ((previous: T) -> T) | T
export type equals<T> = (current: T, incoming: T) -> boolean
export type dispose = () -> ()

-- The "scope" function is used by a source (signals and computeds) to register itself with
-- an observer (computeds and effects) when the source is read
export type scope = (source) -> observer

-- The "source" function is used by an observer to:
-- 1. Ask the source to update, then return its latest version
-- 2. Rettach an observer to the source
-- 3. Remove an observer from the source
type source = (observer?, true?) -> number

-- The "observer" function is used by a source to notify the observer that one of its sources may be stale
type observer = () -> ()

type set<T> = { [T]: true? }
local WeakSetMetatable = { __mode = "k" }
local function createWeakSet<T>(set: set<T>)
	return (setmetatable(set, WeakSetMetatable) :: unknown) :: set<T>
end

local function defaultEquals<T>(current: T, incoming: T)
	return current == incoming
end

local function handleError(ok: boolean, ...)
	if not ok then
		local err = (...)
		error(err)
	end
end

local function handleScopeValidation<Ts...>(kill: () -> (), ok: boolean, ...: Ts...): Ts...
	kill()
	handleError(ok, ...)
	return ...
end

local function callUserSpaceWithScopeValidation<Ts...>(fn: (scope) -> Ts..., scope: scope): Ts...
	local isAlive = true

	local function wrappedScope(source: source)
		if not isAlive then
			error("attempted to use scope beyond scope's lifetime")
		end
		return scope(source)
	end

	local function kill()
		isAlive = false
	end

	return handleScopeValidation(kill, pcall(callUserSpace, fn, wrappedScope))
end

local validationEnabled = _G.__SIGNALS_VALIDATION_ENABLED__ or _G.__DEV__
local callUserSpaceWithScope = if validationEnabled then callUserSpaceWithScopeValidation else callUserSpace :: never

local function createSignal<T>(initial: (() -> T) | T, equals: equals<T>?): (getter<T>, setter<T>)
	local isInitialized = false
	local version = 0

	local value: T
	local observers: set<observer>

	local isEqual: equals<T> = if equals ~= nil then equals else defaultEquals

	local function ensureInitialized()
		if not isInitialized then
			isInitialized = true
			value = if typeof(initial) == "function" then callUserSpace(initial) else initial
			version = os.clock()
			observers = createWeakSet({})
		end
	end

	local function source(childObserver: observer?, delete: true?)
		if childObserver ~= nil then
			if delete then
				observers[childObserver] = nil
			else
				observers[childObserver] = true
			end
			return 0
		else
			return version
		end
	end

	local function connectToScope(requestor: scope | false)
		if requestor ~= false then
			local childObserver = requestor(source)
			observers[childObserver] = true
		end
	end

	local function notifyObservers()
		for childObserver in observers do
			childObserver()
		end
		table.clear(observers)
	end

	local function getter(requestor: scope | false): T
		ensureInitialized()
		connectToScope(requestor)
		return value
	end

	local function setter(update: update<T>)
		ensureInitialized()
		local newValue = if typeof(update) == "function" then callUserSpace(update, value) else update
		if not callUserSpace(isEqual, value, newValue) then
			value = newValue
			version = os.clock()
			notifyObservers()
			runContinuations()
		end
	end

	return getter, setter
end

local function createComputed<T>(computed: (scope) -> T, equals: equals<T>?): getter<T>
	local isInitialized = false
	local isStale = false
	local cachedVersion = 0
	local absoluteVersion = 0

	local value: T
	local sources: set<source>
	local observers: set<observer>

	local isEqual: equals<T> = if equals ~= nil then equals else defaultEquals

	local function notifyObservers()
		for childObserver in observers do
			childObserver()
		end
		table.clear(observers)
	end

	local function observer()
		if not isStale then
			isStale = true
			notifyObservers()
		end
	end

	local function scope(parentSource: source)
		sources[parentSource] = true
		return observer
	end

	local function ensureInitialized()
		if not isInitialized then
			isInitialized = true
			observers = createWeakSet({})
			sources = {}
			value = callUserSpaceWithScope(computed, scope)
			absoluteVersion = os.clock()
			cachedVersion = absoluteVersion
		end
	end

	local function disconnectSources()
		for parentSource in sources do
			parentSource(observer, true)
		end
		table.clear(sources)
	end

	local function flushNotifications()
		if isStale then
			isStale = false
			for parentSource in sources do
				local newVersion = parentSource()
				if newVersion > absoluteVersion then
					disconnectSources()
					local newValue = callUserSpaceWithScope(computed, scope)
					absoluteVersion = os.clock()
					if not callUserSpace(isEqual, value, newValue) then
						value = newValue
						cachedVersion = absoluteVersion
					end
					return
				end
			end
			for parentSource in sources do
				parentSource(observer)
			end
		end
	end

	local function source(childObserver: observer?, delete: true?)
		if childObserver ~= nil then
			if delete then
				observers[childObserver] = nil
			else
				observers[childObserver] = true
			end
			return 0
		else
			flushNotifications()
			return cachedVersion
		end
	end

	local function connectToScope(requestor: scope | false)
		if requestor ~= false then
			local childObserver = requestor(source)
			observers[childObserver] = true
		end
	end

	local function getter(requestor: scope | false): T
		ensureInitialized()
		flushNotifications()
		connectToScope(requestor)
		return value
	end

	return getter
end

local function createEffect(effect: (scope) -> ()): dispose
	local isScheduled = false
	local isDisposed = false
	local version = 0

	local sources: set<source> = {}

	local observer: observer

	local function disconnectSources()
		for source in sources do
			source(observer, true)
		end
		table.clear(sources)
	end

	local function dispose()
		isDisposed = true
		disconnectSources()
	end

	local function scope(parentSource: source)
		sources[parentSource] = true
		return observer
	end

	local function processNotification()
		if not isDisposed then
			isScheduled = false
			for parentSource in sources do
				local newVersion = parentSource()
				if newVersion > version then
					disconnectSources()
					callUserSpaceWithScope(effect, scope)
					version = os.clock()
					return
				end
			end
			for parentSource in sources do
				parentSource(observer)
			end
		end
	end

	function observer()
		if not isDisposed then
			if not isScheduled then
				isScheduled = true
				scheduleWork(processNotification)
			end
		end
	end

	callUserSpaceWithScope(effect, scope)
	version = os.clock()

	return dispose
end

return {
	createSignal = createSignal,
	createComputed = createComputed,
	createEffect = createEffect,
}
