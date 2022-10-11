-- ROBLOX upstream: https://github.com/zenparsing/zen-observable/blob/v0.8.15/src/Observable.js
-- ROBLOX upstream for types: https://github.com/DefinitelyTyped/DefinitelyTyped/blob/master/types/zen-observable/index.d.ts
--!strict

local srcWorkspace = script.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Promise = require(rootWorkspace.Promise)
local instanceOf = LuauPolyfill.instanceof
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local setTimeout = LuauPolyfill.setTimeout
local Array = LuauPolyfill.Array
local Symbol = LuauPolyfill.Symbol
type Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error

type Promise<T> = LuauPolyfill.Promise<T> & { expect: (self: Promise<T>) -> T }

type Function = (...any) -> ...any

-- Predefine variable
-- ROBLOX TODO: strongly type the Observable table once some weird Luau bugs are fixed
local Observable, SubscriptionObserver, notifySubscription, isObservableClass

-- ROBLOX deviation: type "function" and callable tables need to be checked
local function isCallable(value: any): boolean
	if typeof(value) == "function" then
		return true
	end
	if typeof(value) == "table" then
		local mt = getmetatable(value)
		if mt and rawget(mt, "__call") then
			return true
		end
		if value._isMockFunction then
			return true
		end
	end
	return false
end

local function hasSymbols(): boolean
	-- ROBLOX deviation: check for table with __call method
	return typeof(Symbol) == "table" and typeof(getmetatable(Symbol)["__call"]) == "function"
end

local function hasSymbol(name: string): boolean
	return hasSymbols() and Boolean.toJSBoolean(Symbol[name])
end

local function getSymbol(name: string): string
	if hasSymbol(name) then
		return Symbol[name]
	else
		return "@@" .. name
	end
end

if hasSymbols() and not hasSymbol("observable") then
	-- ROBLOX deviation START: Luau doesn't allow mutating tables from require in strict mode
	(Symbol :: any).observable = Symbol("observable")
	-- ROBLOX deviation END
end

local _SymbolIterator = getSymbol("iterator")
local SymbolObservable = getSymbol("observable")
local SymbolSpecies = getSymbol("species")

local function getMethod(obj: Object, key): Function | nil
	local value = obj[key]
	if value == nil then
		return nil
	end
	--ROBLOX deviation START: check for function and callable tables
	if not isCallable(value) then
		-- ROBLOX deviation: using Error instead of TypeError
		error(Error.new(tostring(value) .. " is not a function"))
	end
	-- ROBLOX deviation END
	return value
end

local function getSpecies(obj: Object)
	-- ROBLOX deviation START: obj.constructor not available
	local ctor = obj[SymbolSpecies]
	if ctor ~= nil then
		return ctor
	else
		return Observable
	end
	-- ROBLOX deviation END
end

local function isObservable(x): boolean
	return instanceOf(x, Observable) -- SPEC: Brand check
end

-- ROBLOX deviation START: hostReportError.log, lua functions does not support having other properties, so using setmetatable with __call enables to suppport this
local hostReportError: any
hostReportError = setmetatable({}, {
	__call = function(_self, e)
		if hostReportError.log then
			hostReportError:log(e)
		else
			setTimeout(function()
				error(e)
			end, 0)
		end
	end,
})
-- ROBLOX deviation END

local function enqueue(fn)
	Promise.delay(0):doneCall(function()
		xpcall(fn, function(err)
			hostReportError(err)
		end)
	end)
end

local function cleanupSubscription<T>(subscription: Subscription<T>): ()
	local cleanup = subscription._cleanup
	if cleanup == nil then
		return
	end

	subscription._cleanup = nil

	if not cleanup then
		return
	end

	local ok = true
	local err
	-- ROBLOX deviation: check for functions and callable tables
	if isCallable(cleanup) then
		-- ROBLOX FIXME Luau: Luau should narrow based on guard above, and typeof() effect on isCallable parameter
		ok, err = pcall(cleanup :: Function)
	else
		local unsubscribe = getMethod(cleanup :: Object, "unsubscribe")
		if unsubscribe then
			ok, err = pcall(unsubscribe, cleanup)
		end
	end
	if not ok then
		hostReportError(err)
	end
end

local function closeSubscription<T>(subscription: Subscription<T>): ()
	(subscription :: any)._observer = nil
	subscription._queue = nil
	subscription._state = "closed"
end

local function flushSubscription<T>(subscription: Subscription<T>): ()
	local queue = subscription._queue
	if not Boolean.toJSBoolean(queue) then
		return
	end

	subscription._queue = nil
	subscription._state = "ready"

	-- ROBLOX FIXME Luau: Luau doesn't understand toJSBoolean narrowing side-effect
	for i = 1, #(queue :: Array<any>), 1 do
		notifySubscription(subscription, (queue :: Array<any>)[i].type, (queue :: Array<any>)[i].value)
		if subscription._state == "closed" then
			break
		end
	end
end

function notifySubscription<T>(subscription: Subscription<T>, type, value): ()
	subscription._state = "running"
	local observer = subscription._observer

	local err
	local ok, m = pcall(getMethod, observer, type)
	if not ok then
		hostReportError(m)
		return
	end
	if type == "next" then
		if m then
			ok, err = pcall(m, observer, value)
		end
	elseif type == "error" then
		closeSubscription(subscription)
		if m then
			ok, err = pcall(m, observer, value)
		else
			-- ROBLOX TODO: upstream this optimization, which will retain more stacktrace info
			hostReportError(value)
		end
	elseif type == "complete" then
		closeSubscription(subscription)
		if m then
			ok, err = pcall(m, observer, value)
		end
	end
	if not ok then
		hostReportError(err)
	end

	if subscription._state == "closed" then
		cleanupSubscription(subscription)
	elseif subscription._state == "running" then
		subscription._state = "ready"
	end
end

local function onNotify<T>(subscription: Subscription<T>, type, value: T?): ()
	if subscription._state == "closed" then
		return
	end
	if subscription._state == "buffering" then
		-- ROBLOX TODO: upstream should technically check this for nil also
		assert(subscription._queue, "observable subscription queue nil during onNotify")
		table.insert(subscription._queue, { type = type, value = value })
		return
	end
	if subscription._state ~= "ready" then
		subscription._state = "buffering"

		subscription._queue = { { type = type, value = value } }
		enqueue(function()
			return flushSubscription(subscription)
		end)
		return
	end
	notifySubscription(subscription, type, value)
end

export type Observer<T> = {
	start: ((subscription: Subscription<T>) -> any)?,
	next: ((self: Observer<T>, value: T) -> ())?,
	error: ((self: Observer<T>, errorValue: any) -> ())?,
	complete: ((self: Observer<T>) -> ())?,
}
-- ROBLOX deviation: This appears to be a mistake in DefinitelyTyped
export type Subscriber<T> = (SubscriptionObserver<T>) -> () | (() -> ()) -- | Subscription<T>

export type Subscription<T> = {
	closed: boolean,
	unsubscribe: (self: Subscription<T>) -> (),
	_state: string?,
	_queue: Array<any>?,
	_cleanup: Function | Object | nil,
	-- ROBLOX FIXME Luau: avoid pitfall of recursive type with differing args check, revisit after https://jira.rbx.com/browse/CLI-47160
	_observer: Object,
}

local Subscription = {}
-- ROBLOX FIXME Luau: Luau needs type states and local inference to infer this as any | nil
Subscription.__index = function(t, k): any
	if k == "closed" then
		return t._state == "closed"
	end
	if rawget(t, k) then
		return rawget(t, k)
	end
	if rawget(Subscription, k) then
		return rawget(Subscription, k)
	end
	return nil
end
Subscription.__newindex = function(t, k, v): ()
	if k == "closed" then
		error("setting getter-only property 'closed'")
	end
	rawset(t, k, v)
end

function Subscription.new<T>(observer: Observer<T>, subscriber: Subscriber<T>): Subscription<T>
	local self = (setmetatable({}, Subscription) :: any) :: Subscription<T>
	-- ASSERT: observer is an object
	-- ASSERT: subscriber is callable
	self._cleanup = nil
	self._observer = observer
	self._queue = nil
	self._state = "initializing"

	local subscriptionObserver = SubscriptionObserver.new(self :: any)

	local ok, result = pcall(subscriber :: Function, subscriptionObserver)

	if ok then
		self._cleanup = result
	else
		subscriptionObserver:error(result)
	end

	if self._state == "initializing" then
		self._state = "ready"
	end

	return self
end

function Subscription:unsubscribe()
	if self._state ~= "closed" then
		closeSubscription(self)
		cleanupSubscription(self)
	end
end

export type SubscriptionObserver<T> = {
	closed: boolean,
	next: (self: SubscriptionObserver<T>, value: T) -> (),
	error: (self: SubscriptionObserver<T>, error: any) -> (),
	complete: (self: SubscriptionObserver<T>) -> (),
	_subscription: Subscription<any>,
}

SubscriptionObserver = {}
SubscriptionObserver.__index = function(t, k)
	if k == "closed" then
		return t._subscription._state == "closed"
	end
	if rawget(SubscriptionObserver, k) then
		return rawget(SubscriptionObserver, k)
	end
	return rawget(t, k)
end
SubscriptionObserver.__newindex = function(t, k, v)
	if k == "closed" then
		error("setting getter-only property 'closed'")
	end
	rawset(t, k, v)
end

function SubscriptionObserver.new<T>(subscription: Subscription<T>): SubscriptionObserver<T>
	local self = (
		setmetatable({
			_subscription = subscription,
		}, SubscriptionObserver) :: any
	) :: SubscriptionObserver<T>
	return self
end

function SubscriptionObserver:next(value)
	onNotify(self._subscription, "next", value)
end

function SubscriptionObserver:error(value)
	onNotify(self._subscription, "error", value)
end

function SubscriptionObserver:complete()
	onNotify(self._subscription, "complete")
end

type ObservableLike<T> = {
	subscribe: (self: ObservableLike<T>) -> (Subscriber<T> | nil)?,
}
-- ROBLOX FIXME Luau: this is a workaround for the 'recursive type with different args' error, remove this once that's fixed
type _Observable<T> = {
	subscribe: (
		self: _Observable<T>,
		observer: Observer<T> | (value: T) -> (),
		error_: ((error: any) -> ())?,
		complete: (() -> ())?
	) -> Subscription<T>,
	map: <R>(self: _Observable<T>, fn: ((value: T) -> R)) -> any,
	forEach: (self: _Observable<T>, fn: (value: T, cancel: (() -> ())?) -> ...any) -> Promise<nil>,
	flatMap: <R>(self: _Observable<T>, callback: (value: T) -> ObservableLike<R>) -> any,
	concat: <R>(self: _Observable<T>, ...any) -> any,
	reduce: <R>(
		self: _Observable<T>,
		callback: (previousValue: R, currentValue: T) -> R,
		initialValue: R?
	) -> any,
	filter: (self: _Observable<T>, callback: (value: T) -> boolean) -> any,

	_subscriber: Subscriber<T>,
}
export type Observable<T> = {
	subscribe: (
		self: Observable<T>,
		observer: Observer<T> | (value: T) -> (),
		error_: ((error: any) -> ())?,
		complete: (() -> ())?
	) -> Subscription<T>,
	map: <R>(self: Observable<T>, fn: ((value: T) -> R)) -> _Observable<R>,
	forEach: (self: Observable<T>, fn: (value: T, cancel: (() -> ())?) -> ...any) -> Promise<nil>,
	flatMap: <R>(self: Observable<T>, callback: (value: T) -> ObservableLike<R>) -> _Observable<R>,
	concat: <R>(self: Observable<T>, ..._Observable<R>) -> _Observable<R>,
	reduce: <R>(
		self: Observable<T>,
		callback: (previousValue: R, currentValue: T) -> R,
		initialValue: R?
	) -> _Observable<R>,
	-- ROBLOX TODO Luau: needs extends type expression:  filter<S extends T>(callback: (value: T) => value is S): Observable<S>;
	filter: (self: Observable<T>, callback: (value: T) -> boolean) -> _Observable<any>,

	_subscriber: Subscriber<T>,
}

type Observable_Statics = {
	new: <T>(subscriber: Subscriber<T>) -> Observable<T>,
	from: <R>(C_: any, x_: Observable<R> | ObservableLike<R> | Array<R>) -> Observable<R>,
	of: <R>(C_: any, ...R) -> Observable<R>,
}

Observable = ({} :: any) :: Observable<any> & Observable_Statics;
(Observable :: any).__index = Observable

-- ROBLOX deviation: adding this method to allow overriding the class of static methods
function isObservableClass(obj: any)
	return typeof(obj) == "table"
		and obj[SymbolObservable] == (Observable :: any)[SymbolObservable]
		and typeof(rawget(obj, "new")) == "function"
end

function Observable.new<T>(subscriber: Subscriber<T>): Observable<T>
	-- ROBLOX deviation: this logic can't/doesn't apply in Lua
	-- if not instanceOf(self, Observable) then
	-- 	error("Observable cannot be called as a function")
	-- end

	--ROBLOX deviation: check for function and callable tables
	if not isCallable(subscriber) then
		error("Observable initializer must be a function")
	end

	local self = (setmetatable({
		_subscriber = subscriber,
	}, Observable) :: any) :: Observable<T>

	return self
end

function Observable:subscribe(
	observer: Observer<T_> | (self: Observer<T_>, value: T_) -> (),
	error_: ((self: Observer<T_>, error: any) -> ())?,
	complete: ((self: Observer<T_>) -> ())?
): Subscription<T_>
	if typeof(observer) ~= "table" or observer == nil then
		observer = {
			start = nil,
			next = observer :: (self: Observer<T_>, value: T_) -> (),
			error = error_,
			complete = complete,
		} :: Observer<T_>
	end

	local subscription = Subscription.new(observer :: Observer<T_>, self._subscriber)
	return subscription
end

function Observable:forEach(fn: (value: T_, cancel: (() -> ())?) -> ()): Promise<nil>
	return Promise.new(function(resolve, reject)
		--ROBLOX deviation: check for function and callable tables
		if not isCallable(fn) then
			--ROBLOX deviation: using Error instead of TypeError
			reject(Error.new(tostring(fn) .. " is not a function"))
			return
		end

		--ROBLOX deviation: predefine variable
		local subscription
		local function done()
			subscription:unsubscribe()
			resolve()
		end

		subscription = self:subscribe({
			next = function(_self, value): ()
				-- ROBLOX FIXME Luau: CLI-49835, "Function only returns 1 value, 2 are required"
				local ok, result = pcall(fn :: Function, value, done)

				if not ok then
					reject(result)
					subscription:unsubscribe()
				end
			end,
			error = function(_self, e)
				reject(e)
			end,
			complete = function(_self)
				resolve()
			end,
		})
	end)
end

type T_ = any
function Observable:map<R>(fn: (value: T_) -> R): Observable<R>
	--ROBLOX deviation: check for function and callable tables
	if not isCallable(fn) then
		--ROBLOX deviation: using Error instead of TypeError
		error(Error.new(tostring(fn) .. " is not a function"))
	end

	local C = getSpecies(self)

	return C.new(function(observer)
		return self:subscribe({
			next = function(_self, value): ()
				--[[ ROBLOX COMMENT: try-catch block conversion ]]
				local ok, result = pcall(fn, value)
				if not ok then
					-- ROBLOX TODO: upstream returns value of error, which is void. upstream the fix.
					observer:error(result)
					return
				end
				value = result
				observer:next(value)
			end,
			error = function(_self, e)
				observer:error(e)
			end,
			complete = function(_self)
				observer:complete()
			end,
		})
	end)
end

type S_ = any
-- ROBLOX TODO Luau: needs 'extends' syntax:  filter<S extends T>(callback: (value: T) => value is S): Observable<S>;
function Observable:filter(fn: (value: T_) -> boolean): Observable<S_>
	--ROBLOX deviation: check for function and callable tables
	if not isCallable(fn) then
		--ROBLOX deviation: using Error instead of TypeError
		error(Error.new(tostring(fn) .. " is not a function"))
	end

	local C = getSpecies(self)

	return C.new(function<T>(observer: SubscriptionObserver<T>)
		return self:subscribe({
			next = function(_self, value): ()
				--[[ ROBLOX COMMENT: try-catch block conversion ]]
				local ok, result = xpcall(fn, function(e)
					-- ROBLOX TODO: error returns void, fix this in upstream
					observer:error(e)
				end, value)
				if ok and not Boolean.toJSBoolean(result) then
					return
				end
				if not ok then
					return
				end
				observer:next(value)
				return
			end,
			error = function(_self, e)
				observer:error(e)
			end,
			complete = function(_self)
				observer:complete()
			end,
		})
	end)
end

function Observable:reduce<R>(fn: (previousValue: R, currentValue: T_) -> R, ...: R): Observable<R>
	local arguments = { fn :: any, ... }
	--ROBLOX deviation: check for function and callable tables
	if not isCallable(fn) then
		--ROBLOX deviation: using Error instead of TypeError
		error(Error.new(tostring(fn) .. " is not a function"))
	end

	local C = getSpecies(self)

	local hasSeed = #arguments > 1
	local hasValue = false
	local seed = arguments[2] :: R
	local acc = seed
	-- ROBLOX TODO: should this be T_? type checker thinks R is incorrect
	return C.new(function(observer: SubscriptionObserver<T_>)
		return self:subscribe({
			next = function(_self, value): ()
				local first = not hasValue
				hasValue = true
				if not first or hasSeed then
					--[[ ROBLOX COMMENT: try-catch block conversion ]]
					local _ok
					_ok, acc = xpcall(fn, function(e)
						-- ROBLOX TODO: this is a bug in upstream, observer.error returns void and shouldn't use 'return'
						observer:error(e)
					end, acc, value)
				else
					acc = value
				end
			end,
			error = function(_self, e)
				observer:error(e)
			end,
			complete = function(_self)
				if not hasValue and not hasSeed then
					--ROBLOX deviation: using Error instead of TypeError
					-- ROBLOX TODO: this is a bug in upstream, observer.error returns void and shouldn't use 'return'
					observer:error(Error.new("Cannot reduce an empty sequence"))
				end
				observer:next(acc)
				observer:complete()
			end,
		})
	end)
end

function Observable:concat<R>(...: Observable<R>): Observable<R>
	local sources = { ... }

	local C = getSpecies(self)

	return C.new(function(observer)
		local subscription
		local index = 1 -- [[ ROBLOX deviation: index starts from 1 in Lua]]
		local function startNext(next: any): ()
			subscription = next:subscribe({
				next = function(_self, v)
					observer:next(v)
				end,
				error = function(_self, e)
					observer:error(e)
				end,
				complete = function(_self)
					if
						index == #sources + 1 --[[ ROBLOX deviation, index starts at 1]]
					then
						subscription = nil
						observer:complete()
					else
						startNext(C.from(sources[(function()
							local result = index
							index += 1
							return result
						end)()]))
					end
				end,
			})
		end

		startNext(self)

		return function()
			if Boolean.toJSBoolean(subscription) then
				-- ROBLOX FIXME Luau: Luau should know non-nil narrowing on first argument of toJSBoolean
				(subscription :: any):unsubscribe()
				subscription = nil
			end
		end
	end)
end

function Observable:flatMap<R>(fn: (value: T_) -> ObservableLike<R>): Observable<R>
	-- ROBLOX deviation: predefine variable
	local completeIfDone
	--ROBLOX deviation: check for function and callable tables
	if not isCallable(fn) then
		--ROBLOX deviation: using Error instead of TypeError
		error(Error.new(tostring(fn) .. " is not a function"))
	end

	local C = getSpecies(self)

	return C.new(function(observer)
		local subscriptions = {}
		local outer = self:subscribe({
			next = function(_self, value)
				if Boolean.toJSBoolean(fn) then
					--[[ ROBLOX COMMENT: try-catch block conversion ]]
					local _ok
					_ok, value = xpcall(fn, function(e)
						-- ROBLOX TODO: this is a bug in upstream, error doesn't return anything
						observer:error(e)
					end, value)
				end

				local inner
				inner = C.from(value):subscribe({
					next = function(__self, value)
						observer:next(value)
					end,
					error = function(__self, e)
						observer:error(e)
					end,
					complete = function(__self)
						local i = Array.indexOf(subscriptions, inner)
						if
							i >= 1 --[[ ROBLOX deviation: index start from 1 in Lua ]]
						then
							Array.splice(subscriptions, i, 1)
						end
						completeIfDone()
					end,
				})

				table.insert(subscriptions, inner)
				return nil
			end,
			-- ROBLOX FIXME Luau: any needed to avoid TypeError: Generic supertype escaping scope
			error = function(_self, e: any)
				observer:error(e)
			end,
			complete = function(_self)
				completeIfDone()
			end,
		})

		function completeIfDone()
			if outer.closed and #subscriptions == 0 then
				observer:complete()
			end
		end

		return function()
			Array.forEach(subscriptions, function(s)
				return s:unsubscribe()
			end)
			outer:unsubscribe()
		end
	end)
end

(Observable :: any)[SymbolObservable] = function(self)
	return self
end

-- ROBLOX FIXME Luau: any needed to avoid TypeError: Generic supertype escaping scope
function Observable.from<R>(C_: any, x_: Observable<R> | ObservableLike<R> | Array<R>): Observable<R>
	local C, x
	if isObservableClass(C_) then
		C = C_
		x = x_
	else
		C = Observable
		x = C_
	end

	if x == nil then
		--ROBLOX deviation: using Error instead of TypeError
		error(Error.new(tostring(x) .. " is not an object"))
	end

	-- ROBLOX FIXME Luau: Luau doesn't narrow based on guard above, needs type states
	local method = getMethod(x :: Object, SymbolObservable)
	if method then
		local observable = method(x)

		--   if (Object(observable) ~= observable) then
		-- 	--ROBLOX deviation: using Error instead of TypeError
		-- 	error(Error.new(tostring(observable) .. " is not an object"));
		--   end

		if isObservable(observable) and observable.new == C.new then
			return observable
		end

		return C.new(function(observer)
			return observable:subscribe(observer)
		end)
	end

	-- 	if (hasSymbol('iterator')) {
	-- 	  method = getMethod(x, SymbolIterator);
	-- 	  if (method) {
	-- 		return new C(observer => {
	-- 		  enqueue(() => {
	-- 			if (observer.closed) return;
	-- 			for (let item of method.call(x)) {
	-- 			  observer.next(item);
	-- 			  if (observer.closed) return;
	-- 			}
	-- 			observer.complete();
	-- 		  });
	-- 		});
	-- 	  }
	-- 	}

	if Array.isArray(x) then
		return Observable.new(function(observer)
			enqueue(function()
				if observer.closed then
					return
				end
				-- ROBLOX FIXME Luau: Luau doesn't narrow based on guard above, needs type states
				for _, item in pairs(x :: Object) do
					observer:next(item)
					if observer.closed then
						return
					end
				end

				observer:complete()
			end)
		end)
	end

	--ROBLOX deviation: using Error instead of TypeError
	error(Error.new(tostring(x) .. " is not observable"))
end

-- ROBLOX FIXME Luau: any needed to avoid TypeError: Generic supertype escaping scope
function Observable.of<R>(C_: any, ...: R): Observable<R>
	local C, items
	if isObservableClass(C_) then
		C = C_
		items = { ... }
	else
		C = Observable
		items = { C_, ... }
	end

	return C.new(function(observer)
		enqueue(function()
			if observer.closed then
				return
			end
			for _, item in ipairs(items) do
				observer:next(item)
				if observer.closed then
					return
				end
			end
			observer:complete()
		end)
	end)
end

--     static get [SymbolSpecies]() { return this }

--   } ]]

if hasSymbols() then
	-- ROBLOX TODO: TypeError: Type '{ hostReportError: any, symbol: string }' could not be converted into '<a>(a) -> a'
	(Observable :: any)[Symbol("extensions")] = {
		symbol = SymbolObservable,
		hostReportError = hostReportError,
	} :: any
end

return { Observable = Observable }
