-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/collectHandles.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Set = LuauPolyfill.Set
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Promise<T> = LuauPolyfill.Promise<T>

local exports = {}

--[[ eslint-disable local/ban-types-eventually ]]

-- ROBLOX deviation START: not needed
-- local asyncHooks = require(Packages.async_hooks)
-- local promisify = require(Packages.util).promisify
-- ROBLOX deviation END
local stripAnsi = require(script.Parent.jsHelpers.stripAnsi)
local typesModule = require(Packages.JestTypes)
type Config_ProjectConfig = typesModule.Config_ProjectConfig
local formatExecError = require(Packages.JestMessageUtil).formatExecError
-- ROBLOX deviation START: collectHandles not ported
-- local ErrorWithStack = require(Packages.JestUtil).ErrorWithStack
-- export type HandleCollectionResult = () -> Promise<Array<Error>>
-- local function stackIsFromUser(stack: string)
-- 	-- Either the test file, or something required by it
-- 	if String.includes(stack, "Runtime.requireModule") then
-- 		return true
-- 	end

-- 	-- jest-jasmine it or describe call
-- 	if String.includes(stack, "asyncJestTest") or String.includes(stack, "asyncJestLifecycle") then
-- 		return true
-- 	end

-- 	-- An async function call from within circus
-- 	if String.includes(stack, "callAsyncCircusFn") then
-- 		-- jest-circus it or describe call
-- 		return String.includes(stack, "_callCircusTest") or String.includes(stack, "_callCircusHook") --[[ ROBLOX CHECK: check if 'stack' is an Array ]]
-- 	end

-- 	return false
-- end

-- local function alwaysActive()
-- 	return true
-- end

-- -- @ts-expect-error: doesn't exist in v10 typings
-- local hasWeakRef = typeof(WeakRef) == "function"

-- local asyncSleep = promisify(setTimeout)

-- -- Inspired by https://github.com/mafintosh/why-is-node-running/blob/master/index.js
-- -- Extracted as we want to format the result ourselves
-- local function collectHandles(): HandleCollectionResult
-- 	local activeHandles = Map.new()
-- 	local hook = asyncHooks:createHook({
-- 		destroy = function(self, asyncId)
-- 			activeHandles:delete(asyncId)
-- 		end,
-- 		init = function(self, asyncId, type_, triggerAsyncId, resource: {} | NodeJS_Timeout)
-- 			-- Skip resources that should not generally prevent the process from
-- 			-- exiting, not last a meaningfully long time, or otherwise shouldn't be
-- 			-- tracked.
-- 			if
-- 				type_ == "PROMISE"
-- 				or type_ == "TIMERWRAP"
-- 				or type_ == "ELDHISTOGRAM"
-- 				or type_ == "PerformanceObserver"
-- 				or type_ == "RANDOMBYTESREQUEST"
-- 				or type_ == "DNSCHANNEL"
-- 				or type_ == "ZLIB"
-- 			then
-- 				return
-- 			end
-- 			local error_ = ErrorWithStack.new(type_, initHook, 100)
-- 			local fromUser = stackIsFromUser(Boolean.toJSBoolean(error_.stack) and error_.stack or "")

-- 			-- If the async resource was not directly created by user code, but was
-- 			-- triggered by another async resource from user code, track it and use
-- 			-- the original triggering resource's stack.
-- 			if not fromUser then
-- 				local triggeringHandle = activeHandles:get(triggerAsyncId)
-- 				if triggeringHandle ~= nil then
-- 					fromUser = true
-- 					error_.stack = triggeringHandle.error.stack
-- 				end
-- 			end
-- 			if fromUser then
-- 				local isActive: () -> boolean

-- 				if type_ == "Timeout" or type_ == "Immediate" then
-- 					-- Timer that supports hasRef (Node v11+)
-- 					if Array.indexOf(Object.keys(resource), "hasRef") ~= -1 then
-- 						if hasWeakRef then
-- 							-- @ts-expect-error: doesn't exist in v10 typings
-- 							local ref = WeakRef.new(resource)
-- 							isActive = function()
-- 								local ref_ = if typeof(ref:deref()) == "table" then ref:deref().hasRef else nil
-- 								local ref__ = if ref_ ~= nil then ref_() else nil
-- 								return if ref__ ~= nil then ref__ else false
-- 							end
-- 						else
-- 							-- @ts-expect-error: doesn't exist in v10 typings
-- 							isActive = resource.hasRef:bind(resource)
-- 						end
-- 					else
-- 						-- Timer that doesn't support hasRef
-- 						isActive = alwaysActive
-- 					end
-- 				else
-- 					-- Any other async resource
-- 					isActive = alwaysActive
-- 				end

-- 				activeHandles:set(asyncId, { error = error_, isActive = isActive })
-- 			end
-- 		end,
-- 	})

-- 	hook:enable()

-- 	return function()
-- 		return Promise.resolve():andThen(function()
-- 			-- Wait briefly for any async resources that have been queued for
-- 			-- destruction to actually be destroyed.
-- 			-- For example, Node.js TCP Servers are not destroyed until *after* their
-- 			-- `close` callback runs. If someone finishes a test from the `close`
-- 			-- callback, we will not yet have seen the resource be destroyed here.
-- 			asyncSleep(100):expect()

-- 			hook:disable()

-- 			-- Get errors for every async resource still referenced at this moment
-- 			local result = Array.map(
-- 				Array.filter(Array.from(activeHandles:values()), function(ref)
-- 					local isActive = ref.isActive
-- 					return isActive()
-- 				end),
-- 				function(ref)
-- 					local error_ = ref.error
-- 					return error_
-- 				end
-- 			)

-- 			activeHandles:clear()
-- 			return result
-- 		end)
-- 	end
-- end
-- exports.default = collectHandles
-- ROBLOX deviation END

local function formatHandleErrors(errors: Array<Error>, config: Config_ProjectConfig): Array<string>
	local stacks = Set.new()

	return Array.filter(
		Array.map(errors, function(err)
			return formatExecError(err, config, { noStackTrace = false }, nil, true)
		end),
		-- E.g. timeouts might give multiple traces to the same line of code
		-- This hairy filtering tries to remove entries with duplicate stack traces
		function(handle)
			local ansiFree: string = stripAnsi(handle)

			-- ROBLOX deviation START: rewritten logic to Lua's pattern matching
			local match = string.match(ansiFree, "%s+at(.*)")

			if match == nil then
				return true
			end

			local stack = String.trim(string.sub(ansiFree, string.find(ansiFree, match :: string) :: number))
			-- ROBLOX deviation END

			if stacks:has(stack) then
				return false
			end

			stacks:add(stack)

			return true
		end
	)
end
exports.formatHandleErrors = formatHandleErrors

return exports
