-- ROBLOX upstream: https://github.com/facebook/react/blob/v17.0.1/packages/react-dom/src/test-utils/ReactTestUtilsPublicAct.js

--[[
  Copyright (c) Facebook, Inc. and its affiliates.

  This source code is licensed under the MIT license found in the
  LICENSE file in the root directory of this source tree.

]]

local Packages = script.Parent.Parent.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local console = LuauPolyfill.console

local Promise = require(Packages.Promise)

local exports = {}

-- ROBLOX deviation: Thenable type comes from Shared in roact-alignment
-- local ReactFiberWorkLoopModule = require(Packages["react-reconciler"].src.ReactFiberWorkLoop)
local Shared = require(Packages.Shared)
type Thenable<R> = Shared.Thenable<R>

-- ROBLOX deviation: Not converting all of ReactDOM
-- local ReactDOM = require(Packages["react-dom"]).default
local ReactSharedInternals = Shared.ReactSharedInternals
local enqueueTask = Shared.enqueueTask
local Scheduler = require(Packages.Scheduler)

-- Keep in sync with ReactDOM.js, and ReactTestUtils.js:

local ReactRoblox = require(Packages.ReactRoblox)
local EventInternals = ReactRoblox.__SECRET_INTERNALS_DO_NOT_USE_OR_YOU_WILL_BE_FIRED.Events
-- ROBLOX deviation: EventInternals is a table in Lua
local IsThisRendererActing = EventInternals.IsThisRendererActing
local flushPassiveEffects = EventInternals.flushPassiveEffects

local batchedUpdates = ReactRoblox.unstable_batchedUpdates

local IsSomeRendererActing = ReactSharedInternals.IsSomeRendererActing

-- This is the public version of `ReactTestUtils.act`. It is implemented in
-- "userspace" (i.e. not the reconciler), so that it doesn't add to the
-- production bundle size.
-- TODO: Remove this implementation of `act` in favor of the one exported by
-- the reconciler. To do this, we must first drop support for `act` in
-- production mode.

-- TODO: Remove support for the mock scheduler build, which was only added for
-- the purposes of internal testing. Internal tests should use
-- `unstable_concurrentAct` instead.
local isSchedulerMocked = typeof(Scheduler.unstable_flushAllWithoutAsserting) == "function"
-- ROBLOX deviation: not using unstable_flushAllWithoutAsserting
local flushWork = function()
	local didFlushWork = false
	while flushPassiveEffects() do
		didFlushWork = true
	end
	return didFlushWork
end

local function flushWorkAndMicroTasks(onDone: (err: any?) -> ())
	local ok, err = pcall(function()
		flushWork()
		enqueueTask(function()
			if flushWork() then
				flushWorkAndMicroTasks(onDone)
			else
				onDone()
			end
		end)
	end)

	if not ok then
		onDone(err)
	end
end

-- we track the 'depth' of the act() calls with this counter,
-- so we can tell if any async act() calls try to run in parallel.

local actingUpdatesScopeDepth = 0
local didWarnAboutUsingActInProd = false

-- ROBLOX deviation: This seems to be a bug in upstream. act-compat doesn't adhere to the callback typing upstream.
-- Added () -> () to align with how act is used in act-compat.
local function act(callback: (() -> Thenable<any>) | () -> ())
	if not _G.__DEV__ then
		if didWarnAboutUsingActInProd == false then
			didWarnAboutUsingActInProd = true
			console.error("act(...) is not supported in production builds of React, and might not behave as expected.")
		end
	end
	local previousActingUpdatesScopeDepth = actingUpdatesScopeDepth
	local previousIsSomeRendererActing
	local previousIsThisRendererActing
	actingUpdatesScopeDepth += 1

	previousIsSomeRendererActing = IsSomeRendererActing.current
	previousIsThisRendererActing = IsThisRendererActing.current
	IsSomeRendererActing.current = true
	IsThisRendererActing.current = true

	local function onDone()
		actingUpdatesScopeDepth -= 1
		IsSomeRendererActing.current = previousIsSomeRendererActing
		IsThisRendererActing.current = previousIsThisRendererActing
		if _G.__DEV__ then
			if actingUpdatesScopeDepth > previousActingUpdatesScopeDepth then
				-- if it's _less than_ previousActingUpdatesScopeDepth, then we can assume the 'other' one has warned
				console.error(
					"You seem to have overlapping act() calls, this is not supported. "
						.. "Be sure to await previous act() calls before making a new one. "
				)
			end
		end
	end

	local result
	local ok, res = pcall(function()
		result = batchedUpdates(callback)
	end)

	if not ok then
		onDone()
		error(res)
	end

	if result ~= nil and typeof(result) == "table" and typeof(result["andThen"]) == "function" then
		-- setup a boolean that gets set to true only
		-- once this act() call is await-ed
		local called = false
		if _G.__DEV__ then
			if typeof(Promise) ~= "nil" then
				Promise.delay(0):andThen(function()
					if called == false then
						console.error(
							"You called act(async () => ...) without await. "
								.. "This could lead to unexpected testing behaviour, interleaving multiple act "
								.. "calls and mixing their scopes. You should - await act(async () => ...);"
						)
					end
				end)
			end
		end

		-- in the async case, the returned thenable runs the callback, flushes
		-- effects and  microtasks in a loop until flushPassiveEffects() === false,
		-- and cleans up
		return Promise.new(function(resolve, reject)
			called = true
			result:andThen(function()
				if
					actingUpdatesScopeDepth > 1
					or (isSchedulerMocked == true and previousIsSomeRendererActing == true)
				then
					onDone()
					resolve()
					return
				end
				-- we're about to exit the act() scope,
				-- now's the time to flush tasks/effects
				flushWorkAndMicroTasks(function(err)
					onDone()
					if Boolean.toJSBoolean(err) then
						reject(err)
					else
						resolve()
					end
				end)
			end, function(err)
				onDone()
				reject(err)
			end)
		end)
	else
		if _G.__DEV__ then
			if result ~= nil then
				console.error(
					(
						"The callback passed to act(...) function "
						.. "must return undefined, or a Promise. You returned %s"
					),
					result
				)
			end
		end
		-- flush effects until none remain, and cleanup
		local ok_, res_ = pcall(function()
			if
				actingUpdatesScopeDepth == 1
				and (isSchedulerMocked == false or previousIsSomeRendererActing == false)
			then
				-- we're about to exit the act() scope,
				-- now's the time to flush effects
				flushWork()
			end
			onDone()
		end)
		if not ok_ then
			onDone()
			error(res_)
		end

		-- in the sync case, the returned thenable only warns *if* await-ed
		return {
			andThen = function(self, resolve: () -> ())
				if _G.__DEV__ then
					console.error("Do not await the result of calling act(...) with sync logic, it is not a Promise.")
				end
				resolve()
			end,
		}
	end
end

exports.default = act

return exports
