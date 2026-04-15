--!nonstrict
-- ROBLOX upstream: https://github.com/sindresorhus/emittery/blob/v0.11.0/index.js
-- ROBLOX upstream types: https://github.com/sindresorhus/emittery/blob/v0.11.0/index.d.ts
--[[
	MIT License

	Copyright (c) Sindre Sorhus <sindresorhus@gmail.com> (https://sindresorhus.com)
]]
local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local Symbol = LuauPolyfill.Symbol
local WeakMap = LuauPolyfill.WeakMap
local console = LuauPolyfill.console
local TypeError = Error
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Symbol = LuauPolyfill.Symbol

local Promise = require(Packages.Promise)
type Promise<T> = LuauPolyfill.Promise<T>

type PropertyKey = string | number | Symbol
type EventName = PropertyKey

local HttpService = game:GetService("HttpService")

-- ROBLOX deviation START: predefine variables
local isMetaEvent
-- ROBLOX deviation END

-- ROBLOX deviation: adding a special marker to as { nil } is equivalent to empty array and won't be iterated over
local NIL = Object.None

local exports = {}

local anyMap = WeakMap.new()
local eventsMap = WeakMap.new()
local producersMap = WeakMap.new()
local anyProducer = Symbol("anyProducer")
local resolvedPromise = Promise.resolve()

-- Define symbols for "meta" events.
local listenerAdded = Symbol("listenerAdded")
local listenerRemoved = Symbol("listenerRemoved")

-- Define a symbol that allows internal code to emit meta events, but prevents userland from doing so.
local metaEventsAllowed = Symbol("metaEventsAllowed")

local isGlobalDebugEnabled = false

-- ROBLOX deviation START: additional isSymbol function as Luau doesn't support symbols natively
local function isSymbol(value: any): boolean
	return typeof(value) == "userdata" and tostring(value):match("Symbol%(.*%)") ~= nil
end
-- ROBLOX deviation END

--[[
	ROBLOX deviation START:
	additional checking function to allow for both functions and callable tables to be passed as arguments
]]
local function isCallable(f: any): boolean
	return typeof(f) == "function"
		or (
			typeof(f) == "table"
			and typeof(getmetatable(f)) == "table"
			and typeof(getmetatable(f).__call) == "function"
		)
end
-- ROBLOX deviation END

local function assertEventName(eventName, allowMetaEvents)
	if
		typeof(eventName) ~= "string"
		-- ROBLOX deviation: using isSymbol as Luau doesn't support symbols natively
		and not isSymbol(eventName)
		and typeof(eventName) ~= "number"
	then
		error(TypeError.new("`eventName` must be a string, symbol, or number"))
	end
	if isMetaEvent(eventName) and allowMetaEvents ~= metaEventsAllowed then
		error(TypeError.new("`eventName` cannot be meta event `listenerAdded` or `listenerRemoved`"))
	end
end

local function assertListener(listener)
	-- ROBLOX deviation: using isCallable to allow for callable tables being passed
	if not isCallable(listener) then
		error(TypeError.new("listener must be a function"))
	end
end

local function getListeners(instance, eventName)
	local events = eventsMap:get(instance)
	if not events:has(eventName) then
		events:set(eventName, Set.new())
	end
	return events:get(eventName)
end

local function getEventProducers(instance, eventName)
	local key = if typeof(eventName) == "string"
			-- ROBLOX deviation: using isSymbol as Luau doesn't support symbols natively
			or isSymbol(eventName)
			or typeof(eventName) == "number"
		then eventName
		else anyProducer
	local producers = producersMap:get(instance)
	if not producers:has(key) then
		producers:set(key, Set.new())
	end
	return producers:get(key)
end

local function enqueueProducers(instance, eventName, eventData)
	local producers = producersMap:get(instance)
	if producers:has(eventName) then
		for _, producer in producers:get(eventName):ipairs() do
			producer:enqueue(eventData)
		end
	end
	if producers:has(anyProducer) then
		local item = Promise.all({
			-- ROBLOX deviation START: eventName and eventData aren't necessarily Promises
			Promise.resolve(eventName),
			Promise.resolve(eventData),
			-- ROBLOX deviation END
		})
		for _, producer in producers:get(anyProducer):ipairs() do
			producer:enqueue(item)
		end
	end
end

local function iterator(instance, eventNames)
	-- ROBLOX deviation: adding a special marker as { nil } is equivalent to empty array and won't be iterated over
	eventNames = if Array.isArray(eventNames) then eventNames elseif eventNames ~= nil then { eventNames } else { NIL }
	local isFinished = false
	local function flush() end
	-- ROBLOX deviation: casting to Array<any>? to allow assigning nil later
	local queue = {} :: Array<any>?

	local producer = {
		enqueue = function(self, item)
			table.insert(queue, item)
			flush()
		end,
		finish = function(self)
			isFinished = true
			flush()
		end,
	}

	for _, eventName in eventNames do
		getEventProducers(instance, eventName):add(producer)
	end

	return {
		next = function(self)
			return Promise.resolve():andThen(function()
				if queue == nil then
					return { done = true }
				end
				if #queue == 0 then
					if isFinished then
						queue = nil
						return self:next()
					end

					Promise.new(function(resolve)
						flush = resolve
					end):expect()

					return self:next()
				end
				return {
					done = false,
					-- ROBLOX deviation: values in queue are not necessarily Promises
					value = Promise.resolve(table.remove(queue, 1) :: any):expect(),
				}
			end)
		end,
		["return"] = function(self, ...)
			local value = ...
			local arguments = { ... }
			return Promise.resolve():andThen(function()
				queue = nil

				for _, eventName in eventNames do
					getEventProducers(instance, eventName):delete(producer)
				end

				flush()

				return if #arguments > 0 then { done = true, value = value:expect() } else { done = true }
			end)
		end,
		-- ROBLOX deviation START: Symbol.asyncIterator is not supported
		-- [Symbol.asyncIterator] = function(self)
		-- 	return self
		-- end,
		-- ROBLOX deviation END
	}
end

-- ROBLOX deviation START: defaultMethodNamesOrAssert is not used right now
-- local function defaultMethodNamesOrAssert(methodNames)
-- 	if methodNames == nil then
-- 		return allEmitteryMethods
-- 	end

-- 	if not Array.isArray(methodNames) then
-- 		error(TypeError.new("`methodNames` must be an array of strings"))
-- 	end

-- 	for _, methodName in methodNames do
-- 		if not Array.includes(allEmitteryMethods, methodName) then
-- 			if typeof(methodName) ~= "string" then
-- 				error(TypeError.new("`methodNames` element must be a string"))
-- 			end
-- 			error(Error.new(("%s is not Emittery method"):format(tostring(methodName))))
-- 		end
-- 	end

-- 	return methodNames
-- end
-- ROBLOX deviation END

function isMetaEvent(eventName)
	return eventName == listenerAdded or eventName == listenerRemoved
end

export type Emittery = {
	new: (options: Object?) -> Emittery,
	logIfDebugEnabled: (self: Emittery, type_: any, eventName: any, eventData: any) -> any,
	on: (self: Emittery, eventNames: any, listener: any) -> Emittery_UnsubscribeFn,
	off: (self: Emittery, eventNames: any, listener: any) -> any,
	once: (self: Emittery, eventNames: any) -> any,
	events: (self: Emittery, eventNames: any) -> any,
	emit: (self: Emittery, eventName: any, eventData: any, allowMetaEvents: any?) -> any,
	emitSerial: (self: Emittery, eventName: any, eventData: any, allowMetaEvents: any) -> any,
	onAny: (self: Emittery, listener: any) -> any,
	anyEvent: (self: Emittery) -> any,
	offAny: (self: Emittery, listener: any) -> Emittery_UnsubscribeFn,
	clearListeners: (self: Emittery, eventNames: any) -> any,
	listenerCount: (self: Emittery, eventNames: any) -> any,
	bindMethods: (self: Emittery, target: any, methodNames: any) -> any,
}
local Emittery = {} :: Emittery;
(Emittery :: any).__index = Emittery
function Emittery.new(options_: Object?): Emittery
	local self = setmetatable({}, Emittery)
	local options = if options_ ~= nil then options_ else {}
	anyMap:set(self, Set.new())
	eventsMap:set(self, Map.new())
	producersMap:set(self, Map.new())
	self.debug = Boolean.toJSBoolean(options.debug) and options.debug or {}

	if self.debug.enabled == nil then
		self.debug.enabled = false
	end

	if not Boolean.toJSBoolean(self.debug.logger) then
		self.debug.logger = function(_self: any, type_, debugName, eventName, eventData)
			xpcall(function()
				-- TODO: Use https://github.com/sindresorhus/safe-stringify when the package is more mature. Just copy-paste the code.
				eventData = HttpService:JSONEncode(eventData)
			end, function()
				eventData = ("Object with the following keys failed to stringify: %s"):format(
					Array.join(Object.keys(eventData), ",")
				)
			end)

			if
				-- ROBLOX deviation: using isSymbol as Luau doesn't support symbols natively
				isSymbol(eventName) or typeof(eventName) == "number"
			then
				eventName = tostring(eventName)
			end

			-- ROBLOX deviation START: modified logic for extracting time from a DateTime object
			local currentTime = DateTime.now():ToUniversalTime()
			local logTime = ("%d:%d:%d.%d"):format(
				currentTime.Hour,
				currentTime.Minute,
				currentTime.Second,
				currentTime.Millisecond
			)
			-- ROBLOX deviation END
			console.log(
				("[%s][emittery:%s][%s] Event Name: %s\n\tdata: %s"):format(
					logTime,
					tostring(type_),
					tostring(debugName),
					tostring(eventName),
					tostring(eventData)
				)
			)
		end
	end
	return (self :: any) :: Emittery
end

-- ROBLOX deviation START: not supporting Emittery.mixin for now
-- function Emittery.mixin(emitteryPropertyName, methodNames)
-- 	methodNames = defaultMethodNamesOrAssert(methodNames)
-- 	return function(target)
-- 		if typeof(target) ~= "function" then
-- 			error(TypeError.new("`target` must be function"))
-- 		end
-- 		for _, methodName in
-- 			ipairs(methodNames) --[[ ROBLOX CHECK: check if 'methodNames' is an Array ]]
-- 		do
-- 			if target.prototype[tostring(methodName)] ~= nil then
-- 				error(
-- 					Error.new(
-- 						("The property `%s` already exists on `target`"):format(
-- 							tostring(methodName)
-- 						)
-- 					)
-- 				)
-- 			end
-- 		end
-- 		local function getEmitteryProperty()
-- 			Object.defineProperty(
-- 				self,
-- 				emitteryPropertyName,
-- 				{ enumerable = false, value = Emittery.new() }
-- 			)
-- 			return self[tostring(emitteryPropertyName)]
-- 		end
-- 		Object.defineProperty(
-- 			target.prototype,
-- 			emitteryPropertyName,
-- 			{ enumerable = false, get = getEmitteryProperty }
-- 		)
-- 		local function emitteryMethodCaller(methodName)
-- 			return function(
-- 				...: any --[[ ROBLOX CHECK: check correct type of elements. ]]
-- 			)
-- 				local args = { ... }
-- 				return self[tostring(emitteryPropertyName)][tostring(methodName)](
-- 					self[tostring(emitteryPropertyName)],
-- 					table.unpack(args)
-- 				)
-- 			end
-- 		end
-- 		for _, methodName in
-- 			ipairs(methodNames) --[[ ROBLOX CHECK: check if 'methodNames' is an Array ]]
-- 		do
-- 			Object.defineProperty(
-- 				target.prototype,
-- 				methodName,
-- 				{ enumerable = false, value = emitteryMethodCaller(methodName) }
-- 			)
-- 		end
-- 		return target
-- 	end
-- end
-- ROBLOX deviation END

-- ROBLOX deviation: mocking process
local process = nil

-- ROBLOX deviation: getIsDebugEnabled instead of a getter
function Emittery.getIsDebugEnabled(): boolean
	if typeof(process) ~= "table" then
		return isGlobalDebugEnabled
	end
	local env = (Boolean.toJSBoolean(process) and process or { env = {} }).env
	return env.DEBUG == "emittery" or env.DEBUG == "*" or isGlobalDebugEnabled
end

-- ROBLOX deviation: setIsDebugEnabled instead of a setter
function Emittery.setIsDebugEnabled(newValue: boolean)
	isGlobalDebugEnabled = newValue
end

function Emittery:logIfDebugEnabled(type_, eventName, eventData)
	if
		-- ROBLOX deviation: getIsDebugEnabled instead of a setter
		Emittery.getIsDebugEnabled() or self.debug.enabled
	then
		self.debug:logger(type_, self.debug.name, eventName, eventData)
	end
end

function Emittery:on(eventNames, listener)
	assertListener(listener)

	eventNames = if Array.isArray(eventNames) then eventNames else { eventNames }
	for _, eventName in eventNames do
		assertEventName(eventName, metaEventsAllowed)
		getListeners(self, eventName):add(listener)

		self:logIfDebugEnabled("subscribe", eventName, nil)

		if not isMetaEvent(eventName) then
			self:emit(listenerAdded, { eventName = eventName, listener = listener }, metaEventsAllowed)
		end
	end
	return function()
		return self:off(eventNames, listener)
	end
end

function Emittery:off(eventNames, listener)
	assertListener(listener)

	eventNames = if Array.isArray(eventNames) then eventNames else { eventNames }
	for _, eventName in eventNames do
		assertEventName(eventName, metaEventsAllowed)
		getListeners(self, eventName):delete(listener)

		self:logIfDebugEnabled("unsubscribe", eventName, nil)

		if not isMetaEvent(eventName) then
			self:emit(listenerRemoved, { eventName = eventName, listener = listener }, metaEventsAllowed)
		end
	end
end

function Emittery:once(eventNames)
	return Promise.new(function(resolve)
		local off
		off = self:on(eventNames, function(data)
			off()
			resolve(data)
		end)
	end)
end

function Emittery:events(eventNames)
	eventNames = if Array.isArray(eventNames) then eventNames else { eventNames }

	for _, eventName in eventNames do
		assertEventName(eventName, metaEventsAllowed)
	end

	return iterator(self, eventNames)
end

function Emittery:emit(eventName, eventData, allowMetaEvents)
	return Promise.resolve():andThen(function()
		assertEventName(eventName, allowMetaEvents)

		self:logIfDebugEnabled("emit", eventName, eventData)

		enqueueProducers(self, eventName, eventData)

		local listeners = getListeners(self, eventName)
		local anyListeners = anyMap:get(self)
		local staticListeners = Array.concat({}, Array.from(listeners))
		local staticAnyListeners = if Boolean.toJSBoolean(isMetaEvent(eventName))
			then {}
			else Array.concat({}, Array.from(anyListeners))

		-- ROBLOX deviation START: need to delay a promise as awaited promises are deferred in JS
		resolvedPromise
			:andThen(function(...)
				return Promise.delay(0):andThenReturn(...)
			end)
			:expect()
		-- ROBLOX deviation END
		Promise.all(Array.concat(
			{},
			Array.map(staticListeners, function(listener)
				return Promise.resolve():andThen(function()
					if listeners:has(listener) then
						return listener(eventData)
					end
					return
				end)
			end),
			Array.map(staticAnyListeners, function(listener)
				return Promise.resolve():andThen(function()
					if anyListeners:has(listener) then
						return listener(eventName, eventData)
					end
					return
				end)
			end)
		)):expect()
	end)
end

function Emittery:emitSerial(eventName, eventData, allowMetaEvents)
	return Promise.resolve():andThen(function()
		assertEventName(eventName, allowMetaEvents)

		self:logIfDebugEnabled("emitSerial", eventName, eventData)

		local listeners = getListeners(self, eventName)
		local anyListeners = anyMap:get(self)
		local staticListeners = Array.concat({}, Array.from(listeners))
		local staticAnyListeners = Array.concat({}, Array.from(anyListeners))

		-- ROBLOX deviation START: need to delay a promise as awaited promises are deferred in JS
		resolvedPromise
			:andThen(function(...)
				return Promise.delay(0):andThenReturn(...)
			end)
			:expect()
		-- ROBLOX deviation END
		--[[ eslint-disable no-await-in-loop ]]
		for _, listener in staticListeners do
			if listeners:has(listener) then
				-- ROBLOX deviation: listener doesn't necessarily return a Promise
				Promise.resolve(listener(eventData)):expect()
			end
		end

		for _, listener in staticAnyListeners do
			if anyListeners:has(listener) then
				-- ROBLOX deviation: listener doesn't necessarily return a Promise
				Promise.resolve(listener(eventName, eventData)):expect()
			end
		end
		--[[ eslint-enable no-await-in-loop ]]
	end)
end

function Emittery:onAny(listener)
	assertListener(listener)

	self:logIfDebugEnabled("subscribeAny", nil, nil)

	anyMap:get(self):add(listener)
	self:emit(listenerAdded, { listener = listener }, metaEventsAllowed)
	return function()
		self:offAny(listener)
	end
end

function Emittery:anyEvent()
	return iterator(self)
end

function Emittery:offAny(listener)
	assertListener(listener)

	self:logIfDebugEnabled("unsubscribeAny", nil, nil)

	self:emit(listenerRemoved, { listener = listener }, metaEventsAllowed)
	anyMap:get(self):delete(listener)
end

function Emittery:clearListeners(eventNames)
	-- ROBLOX deviation: adding a special marker as { nil } is equivalent to empty array and won't be iterated over
	eventNames = if Array.isArray(eventNames) then eventNames elseif eventNames ~= nil then { eventNames } else { NIL }

	for _, eventName in eventNames do
		self:logIfDebugEnabled("clear", eventName, nil)

		if
			typeof(eventName) == "string"
			-- ROBLOX deviation: using isSymbol as Luau doesn't support symbols natively
			or isSymbol(eventName)
			or typeof(eventName) == "number"
		then
			getListeners(self, eventName):clear()

			local producers = getEventProducers(self, eventName)

			for _, producer in producers:ipairs() do
				producer:finish()
			end

			producers:clear()
		else
			anyMap:get(self):clear()

			for _, listeners in eventsMap:get(self):values() do
				listeners:clear()
			end

			for _, producers in producersMap:get(self):values() do
				for _, producer in producers:ipairs() do
					producer:finish()
				end

				producers:clear()
			end
		end
	end
end

function Emittery:listenerCount(eventNames)
	-- ROBLOX deviation: adding a special marker as { nil } is equivalent to empty array and won't be iterated over
	eventNames = if Array.isArray(eventNames) then eventNames elseif eventNames ~= nil then { eventNames } else { NIL }
	local count = 0

	for _, eventName in eventNames do
		if typeof(eventName) == "string" then
			count += anyMap:get(self).size + getListeners(self, eventName).size + getEventProducers(self, eventName).size + getEventProducers(
				self
			).size
			continue
		end

		-- ROBLOX deviation: adding a special marker as { nil } is equivalent to empty array and won't be iterated over
		if eventName ~= nil and eventName ~= NIL then
			assertEventName(eventName, metaEventsAllowed)
		end

		count += anyMap:get(self).size

		for _, value in eventsMap:get(self):values() do
			count += value.size
		end

		for _, value in producersMap:get(self):values() do
			count += value.size
		end
	end

	return count
end

-- ROBLOX deviation START: not supporting Emittery:bindMethods for now
-- function Emittery:bindMethods(target, methodNames)
-- 	if typeof(target) ~= "table" or target == nil then
-- 		error(TypeError.new("`target` must be an object"))
-- 	end
-- 	methodNames = defaultMethodNamesOrAssert(methodNames)
-- 	for _, methodName in
-- 		ipairs(methodNames) --[[ ROBLOX CHECK: check if 'methodNames' is an Array ]]
-- 	do
-- 		if target[tostring(methodName)] ~= nil then
-- 			error(Error.new(("The property `%s` already exists on `target`"):format(tostring(methodName))))
-- 		end
-- 		Object.defineProperty(target, methodName, { enumerable = false, value = self[tostring(methodName)]:bind(self) })
-- 	end
-- end

-- local allEmitteryMethods = Array.filter(Object.getOwnPropertyNames(Emittery.prototype), function(v)
-- 	return v ~= "constructor"
-- end)
-- ROBLOX deviation END

--[[
	ROBLOX deviation START:
	defining properties directly on a class object instead of using Object.defineProperty
	original code:
	Object.defineProperty(
		Emittery,
		"listenerAdded",
		{ value = listenerAdded, writable = false, enumerable = true, configurable = false }
	)
	Object.defineProperty(
		Emittery,
		"listenerRemoved",
		{ value = listenerRemoved, writable = false, enumerable = true, configurable = false }
	)
]]
Emittery.listenerAdded = listenerAdded
Emittery.listenerRemoved = listenerRemoved
-- ROBLOX deviation END
exports.default = Emittery

--[[*
Removes an event subscription.
]]
export type Emittery_UnsubscribeFn = () -> ()

--[[*
The data provided as `eventData` when listening for `Emittery.listenerAdded` or `Emittery.listenerRemoved`.
]]
export type Emittery_ListenerChangedData = {
	--[[*
	The listener that was added or removed.
	]]
	listener: (eventData: unknown?) -> ...Promise<nil>,

	--[[*
	The name of the event that was added or removed if `.on()` or `.off()` was used, or `undefined` if `.onAny()` or `.offAny()` was used.
	]]
	eventName: EventName?,
}

return exports
