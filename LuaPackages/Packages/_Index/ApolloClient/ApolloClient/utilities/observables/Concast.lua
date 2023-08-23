--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/observables/Concast.ts

local exports = {}

-- ROBLOX deviation: defining Iterable type from TypeScript
type Iterable<T> = any

-- ROBLOX deviation: defining Tuple type for use later on
type Tuple<T, V> = Array<T | V>

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Set = LuauPolyfill.Set
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
type Set<T> = LuauPolyfill.Set<T>
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
type PromiseLike<T> = LuauPolyfill.PromiseLike<T>

local Promise = require(rootWorkspace.Promise)

-- ROBLOX deviation: initial state for Concast.sub. Needed to differentiate upstream null from undefined
local undefined = {}

local ObservableModule = require(script.Parent.Observable)
local Observable = ObservableModule.Observable
type Observable<T> = ObservableModule.Observable<T>
type Observer<T> = ObservableModule.Observer<T>
type ObservableSubscription = ObservableModule.ObservableSubscription
type Subscriber<T> = ObservableModule.Subscriber<T>

local iterateObserversSafely = require(script.Parent.iteration).iterateObserversSafely
local fixObservableSubclass = require(script.Parent.subclassing).fixObservableSubclass

type MaybeAsync<T> = T | PromiseLike<T>

-- ROBLOX deviation START: Luau doesn't support generic constraints. Declaring type T_ as placeholder for T.
-- function isPromiseLike<T>(value: MaybeAsync<T>): value is PromiseLike<T>
local function isPromiseLike<T>(value: MaybeAsync<T>): boolean
	-- ROBLOX deviation END
	return Boolean.toJSBoolean(value) and typeof((value :: any).andThen) == "function"
end

-- Any individual Source<T> can be an Observable<T> or a promise for one.
type Source<T> = MaybeAsync<Observable<T>>

export type ConcastSourcesIterable<T> = Iterable<Source<T>>

-- A Concast<T> observable concatenates the given sources into a single
-- non-overlapping sequence of Ts, automatically unwrapping any promises,
-- and broadcasts the T elements of that sequence to any number of
-- subscribers, all without creating a bunch of intermediary Observable
-- wrapper objects.
--
-- Even though any number of observers can subscribe to the Concast, each
-- source observable is guaranteed to receive at most one subscribe call,
-- and the results are multicast to all observers.
--
-- In addition to broadcasting every next/error message to this.observers,
-- the Concast stores the most recent message using this.latest, so any
-- new observers can immediately receive the latest message, even if it
-- was originally delivered in the past. This behavior means we can assume
-- every active observer in this.observers has received the same most
-- recent message.
--
-- With the exception of this.latest replay, a Concast is a "hot"
-- observable in the sense that it does not replay past results from the
-- beginning of time for each new observer.
--
-- Could we have used some existing RxJS class instead? Concast<T> is
-- similar to a BehaviorSubject<T>, because it is multicast and redelivers
-- the latest next/error message to new subscribers. Unlike Subject<T>,
-- Concast<T> does not expose an Observer<T> interface (this.handlers is
-- intentionally private), since Concast<T> gets its inputs from the
-- concatenated sources. If we ever switch to RxJS, there may be some
-- value in reusing their code, but for now we use zen-observable, which
-- does not contain any Subject implementations.

-- ROBLOX deviation START: we separate private from public symbols with different tables
type ConcastPrivate<T> = Concast<T> & {
	observers: Set<Observer<T>>,
	sub: ObservableSubscription?,
	sources: Array<Source<T>>,
	addCount: number,
	-- ROBLOX deviation: latest is a tuple. the first element is of type string, the second of type any
	-- private latest?: ["next" | "error", any];
	-- Name and argument of the most recently invoked observer method, used
	-- to deliver latest results immediately to new observers.
	latest: Tuple<string, any>?,
	handlers: {
		next: (_self: Object, result: T) -> (),
		error: (_self: Object, error: any) -> (),
		complete: (_self: Object) -> (),
	},
	start: (self: Concast<T>, sources: ConcastSourcesIterable<T>) -> (),
	deliverLastMessage: (self: Concast<T>, observer: Observer<T>) -> (),
	resolve: (self: Concast<T>, result: (T | PromiseLike<T>)?) -> (),
	reject: (self: Concast<T>, reason: any) -> (),
}
export type Concast<T> = Observable<T> & {
	addObserver: (self: Concast<T>, observer: Observer<T>) -> (),
	removeObserver: (self: Concast<T>, observer: Observer<T>, quietly: boolean?) -> (),
	promise: Promise<T>,
	cleanup: (self: Concast<T>, callback: () -> ...any) -> (),
	cancel: (self: Concast<T>, reason: any) -> (),
}
-- ROBLOX deviation END

local Concast = setmetatable({}, { __index = Observable })
Concast.__index = Concast

-- Not only can the individual elements of the iterable be promises, but
-- also the iterable itself can be wrapped in a promise.
function Concast.new<T>(sources: MaybeAsync<ConcastSourcesIterable<T>> | Subscriber<T>): Concast<T>
	-- ROBLOX deviation: predeclaring self so it can be used by call to super()
	local self
	self = setmetatable(
		Observable.new(function(observer)
			self:addObserver(observer)
			return function()
				return self:removeObserver(observer)
			end
		end),
		Concast
	) :: any

	-- Active observers receiving broadcast messages. Thanks to this.latest,
	-- we can assume all observers in this Set have received the same most
	-- recent message, though possibly at different times in the past.
	self.observers = Set.new()

	-- This property starts off undefined to indicate the initial
	-- subscription has not yet begun, then points to each source
	-- subscription in turn, and finally becomes null after the sources have
	-- been exhausted. After that, it stays null.
	self.sub = (undefined :: any) :: ObservableSubscription?

	-- A consumable array of source observables, incrementally consumed
	-- each time this.handlers.complete is called.
	self.source = {}

	-- Name and argument of the most recently invoked observer method, used
	-- to deliver latest results immediately to new observers.
	self.latest = (nil :: any) :: Tuple<string, any>?

	-- Note: cleanup observers do not count towards this total.
	self.addCount = 0

	-- Any Concast object can be trivially converted to a Promise, without
	-- having to create a new wrapper Observable. This promise provides an
	-- easy way to observe the final state of the Concast.
	self.promise = Promise.new(function(resolve, reject)
		self.resolve = function(_self, ...)
			resolve(...)
		end
		self.reject = function(_self, ...)
			reject(...)
		end
	end)

	-- Bound handler functions that can be reused for every internal
	-- subscription.
	self.handlers = {
		next = function(_self: Object, result: T)
			if self.sub ~= nil then
				self.latest = { "next" :: any, result }
				iterateObserversSafely(self.observers, "next", result)
			end
		end,
		error = function(_self: Object, error_: any)
			local sub = self.sub
			if sub ~= nil then
				-- Delay unsubscribing from the underlying subscription slightly,
				-- so that immediately subscribing another observer can keep the
				-- subscription active.
				if Boolean.toJSBoolean(sub) then
					Promise.delay(0):andThen(function()
						return sub:unsubscribe()
					end)
				end
				self.sub = nil
				self.latest = { "error", error_ }
				self:reject(error_)
				iterateObserversSafely(self.observers, "error", error_)
			end
		end,
		complete = function(_self: Object)
			if self.sub ~= nil then
				local value = table.remove(self.sources, 1)
				if not Boolean.toJSBoolean(value) then
					self.sub = nil
					if self.latest ~= nil and self.latest[1] == "next" then
						self:resolve(self.latest[2])
					else
						self:resolve()
					end
					-- We do not store this.latest = ["complete"], because doing so
					-- discards useful information about the previous next (or
					-- error) message. Instead, if new observers subscribe after
					-- this Concast has completed, they will receive the final
					-- 'next' message (unless there was an error) immediately
					-- followed by a 'complete' message (see addObserver).
					iterateObserversSafely(self.observers, "complete")
				elseif isPromiseLike(value) then
					(value :: PromiseLike<Observable<T>>):andThen(function(obs)
						self.sub = obs:subscribe(self.handlers)
					end)
				else
					self.sub = (value :: Observable<T>):subscribe(self.handlers)
				end
			end
		end,
	}

	-- A public way to abort observation and broadcast.
	self.cancel = function(_self: Concast<T>, reason: any)
		self:reject(reason)
		self.sources = {};
		((self :: any) :: ConcastPrivate<T>).handlers:complete()
	end

	-- Suppress rejection warnings for this.promise, since it's perfectly
	-- acceptable to pay no attention to this.promise if you're consuming
	-- the results through the normal observable API.
	self.promise:catch(function() end)

	-- If someone accidentally tries to create a Concast using a subscriber
	-- function, recover by creating an Observable from that subscriber and
	-- using it as the source.
	if typeof(sources) == "function" then
		sources = { Observable.new(sources) }
	end

	if isPromiseLike(sources) then
		(sources :: PromiseLike<ConcastSourcesIterable<T>>):andThen(function(iterable)
			self:start(iterable)
		end, function(...)
			(self.handlers :: any):error(...) -- ROBLOX note: TypeError: Value of type '((Observer<any>, any) -> ())?' could be nil
		end)
	else
		self:start(sources)
	end

	return (self :: any) :: Concast<T>
end

-- ROBLOX deviation BEGIN: Luau doesn't allow member methods to share the ctor type args
type T_ = any
-- ROBLOX deviation END
function Concast:start(sources: ConcastSourcesIterable<T_>)
	if self.sub ~= undefined then
		return
	end

	-- In practice, sources is most often simply an Array of observables.
	-- TODO Consider using sources[Symbol.iterator]() to take advantage
	-- of the laziness of non-Array iterables.
	self.sources = Array.from(sources)

	-- Calling this.handlers.complete() kicks off consumption of the first
	-- source observable. It's tempting to do this step lazily in
	-- addObserver, but this.promise can be accessed without calling
	-- addObserver, so consumption needs to begin eagerly.
	self.handlers:complete()
end

function Concast:deliverLastMessage(observer: Observer<T_>)
	if Boolean.toJSBoolean(self.latest) then
		local nextOrError = self.latest[1]
		local method = observer[nextOrError]
		if Boolean.toJSBoolean(method) then
			method(observer, self.latest[2])
		end

		-- If the subscription is already closed, and the last message was
		-- a 'next' message, simulate delivery of the final 'complete'
		-- message again.
		if self.sub == nil and nextOrError == "next" and observer.complete ~= nil then
			-- ROBLOX note: forced to use dot notation, otherwise cli doesnt recognize complete as not nil
			observer.complete(observer)
		end
	end
end

function Concast:addObserver(observer: Observer<T_>)
	if not self.observers:has(observer) then
		-- Immediately deliver the most recent message, so we can always
		-- be sure all observers have the latest information.
		self:deliverLastMessage(observer)
		self.observers:add(observer)
		self.addCount = (self.addCount :: number) + 1
	end
end

function Concast:removeObserver(observer: Observer<T_>, quietly: boolean?)
	if
		self.observers:delete(observer)
		and (function()
			self.addCount = (self.addCount :: number) - 1
			return self.addCount
		end)() < 1
		and not quietly
	then
		-- In case there are still any cleanup observers in this.observers,
		-- and no error or completion has been broadcast yet, make sure
		-- those observers receive an error that terminates them.
		self.handlers:error(Error.new("Observable cancelled prematurely"))
	end
end

function Concast:cleanup(callback: () -> ...any)
	local called = false
	local observer
	local function once()
		if not called then
			called = true
			-- Removing a cleanup observer should not unsubscribe from the
			-- underlying Observable, so the only removeObserver behavior we
			-- need here is to delete observer from this.observers.
			self.observers:delete(observer)
			callback()
		end
	end
	observer = { next = once, error = once, complete = once }
	local count = self.addCount
	self:addObserver(observer)
	-- Normally addObserver increments this.addCount, but we can "hide"
	-- cleanup observers by restoring this.addCount to its previous value
	-- after adding any cleanup observer.
	self.addCount = count
end

--ROBLOX deviation: declare static methods explicitly to keep calling them with dot notation and override "this"
function Concast.of(...)
	return Observable.of(Concast, ...)
end

function Concast.from(...)
	return Observable.from(Concast, ...)
end

exports.Concast = Concast

-- Necessary because the Concast constructor has a different signature
-- than the Observable constructor.
-- ROBLOX FIXME Luau: Luau thinks Concat isn't convertible to Object
fixObservableSubclass(Concast :: any)

return exports
