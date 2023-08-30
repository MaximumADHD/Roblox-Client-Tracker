-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/globalErrorHandlers.ts
-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/state.ts
-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/eventHandler.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local exports = {}

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent

local typesModule = require(Packages.JestTypes)
type Circus_EventHandler = typesModule.Circus_EventHandler

-- ROBLOX deviation START: predefine common variables
local dispatchSync
local eventHandler: Circus_EventHandler
local injectGlobalErrorHandlers
local restoreGlobalErrorHandlers
-- ROBLOX deviation END

-- ROBLOX FILE START: eventHandler.ts
do
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Array = LuauPolyfill.Array
	local Boolean = LuauPolyfill.Boolean
	local Error = LuauPolyfill.Error

	local RegExp = require(Packages.RegExp)

	type Circus_EventHandler = typesModule.Circus_EventHandler
	type Circus_Event = typesModule.Circus_Event
	type Circus_State = typesModule.Circus_State
	type Circus_TestEntry = typesModule.Circus_TestEntry
	type Circus_HookType = typesModule.Circus_HookType
	type Circus_DescribeBlock = typesModule.Circus_DescribeBlock
	type Circus_BlockMode = typesModule.Circus_BlockMode
	--[[
		ROBLOX deviation: merged into this file to avoid circular dependencies
		original code:
		import {
		  injectGlobalErrorHandlers,
		  restoreGlobalErrorHandlers,
		} from './globalErrorHandlers';
	]]
	-- ROBLOX FIXME: resolve cyclic dep
	local TEST_TIMEOUT_SYMBOL = require(script.Parent.types).TEST_TIMEOUT_SYMBOL
	-- ROBLOX FIXME: resolve cyclic dep
	local utilsModule = require(script.Parent.utils)
	local addErrorToEachTestUnderDescribe = utilsModule.addErrorToEachTestUnderDescribe
	local describeBlockHasTests = utilsModule.describeBlockHasTests
	local getTestDuration = utilsModule.getTestDuration
	local invariant = utilsModule.invariant
	local makeDescribe = utilsModule.makeDescribe
	local makeTest = utilsModule.makeTest

	-- TODO: investigate why a shorter (event, state) signature results into TS7006 compiler error
	function eventHandler(_self: any, event: Circus_Event, state: Circus_State): ()
		repeat
			if event.name == "include_test_location_in_result" then
				state.includeTestLocationInResult = true
				break
			elseif event.name == "hook_start" then
				event.hook.seenDone = false
				break
			elseif event.name == "start_describe_definition" then
				-- ROBLOX FIXME Luau: requires "type states" feature. need to explicitely type as Circus_BlockMode as Luau doesn't correctly infer the union of singleton types
				local blockName, mode: Circus_BlockMode = event.blockName, event.mode
				local currentDescribeBlock, currentlyRunningTest =
					state.currentDescribeBlock, state.currentlyRunningTest

				if currentlyRunningTest ~= nil then
					table.insert(
						currentlyRunningTest.errors,
						Error.new(
							('Cannot nest a describe inside a test. Describe block "%s" cannot run because it is nested within "%s".'):format(
								blockName,
								currentlyRunningTest.name
							)
						)
					)
					break
				end

				local describeBlock = makeDescribe(blockName, currentDescribeBlock, mode)
				table.insert(currentDescribeBlock.children, describeBlock)
				state.currentDescribeBlock = describeBlock
				break
			elseif event.name == "finish_describe_definition" then
				local currentDescribeBlock = state.currentDescribeBlock
				invariant(currentDescribeBlock, "currentDescribeBlock must be there")

				if not Boolean.toJSBoolean(describeBlockHasTests(currentDescribeBlock)) then
					Array.forEach(currentDescribeBlock.hooks, function(hook)
						hook.asyncError.message = ("Invalid: %s() may not be used in a describe block containing no tests."):format(
							hook.type
						)
						table.insert(state.unhandledErrors, hook.asyncError)
					end)
				end

				-- pass mode of currentDescribeBlock to tests
				-- but do not when there is already a single test with "only" mode
				local shouldPassMode = not (
					currentDescribeBlock.mode == "only"
					and Array.some(currentDescribeBlock.children, function(child)
						return child.type == "test" and child.mode == "only"
					end)
				)
				if shouldPassMode then
					Array.forEach(currentDescribeBlock.children, function(child)
						if child.type == "test" and not Boolean.toJSBoolean(child.mode) then
							child.mode = currentDescribeBlock.mode
						end
					end)
				end
				if
					not Boolean.toJSBoolean(state.hasFocusedTests)
					and currentDescribeBlock.mode ~= "skip"
					and Array.some(currentDescribeBlock.children, function(child)
						return child.type == "test" and child.mode == "only"
					end)
				then
					state.hasFocusedTests = true
				end

				if currentDescribeBlock.parent ~= nil then
					state.currentDescribeBlock = currentDescribeBlock.parent
				end
				break
			elseif event.name == "add_hook" then
				local currentDescribeBlock, currentlyRunningTest, hasStarted =
					state.currentDescribeBlock, state.currentlyRunningTest, state.hasStarted
				local asyncError,
					fn,
					type_: Circus_HookType, --[[ ROBLOX FIXME Luau: roblox-cli doesn't correctly infer this type]]
					timeout =
					event.asyncError, event.fn, event.hookType, event.timeout

				if currentlyRunningTest ~= nil then
					table.insert(
						currentlyRunningTest.errors,
						Error.new(
							('Hooks cannot be defined inside tests. Hook of type "%s" is nested within "%s".'):format(
								type_,
								currentlyRunningTest.name
							)
						)
					)
					break
				elseif Boolean.toJSBoolean(hasStarted) then
					table.insert(
						state.unhandledErrors,
						Error.new(
							"Cannot add a hook after tests have started running. Hooks must be defined synchronously."
						)
					)
					break
				end
				local parent = currentDescribeBlock

				table.insert(currentDescribeBlock.hooks, {
					asyncError = asyncError,
					fn = fn,
					parent = parent,
					seenDone = false,
					timeout = timeout,
					type = type_,
				})
				break
			elseif event.name == "add_test" then
				local currentDescribeBlock, currentlyRunningTest, hasStarted =
					state.currentDescribeBlock, state.currentlyRunningTest, state.hasStarted
				-- ROBLOX FIXME Luau: requires "type states" feature. need to explicitely type as Circus_BlockMode as Luau doesn't correctly infer the union of singleton types.
				local asyncError, fn, mode: Circus_BlockMode, name, timeout =
					event.asyncError, event.fn, event.mode, event.testName, event.timeout

				if currentlyRunningTest ~= nil then
					table.insert(
						currentlyRunningTest.errors,
						Error.new(
							('Tests cannot be nested. Test "%s" cannot run because it is nested within "%s".'):format(
								name,
								currentlyRunningTest.name
							)
						)
					)
					break
				elseif Boolean.toJSBoolean(hasStarted) then
					table.insert(
						state.unhandledErrors,
						Error.new(
							"Cannot add a test after tests have started running. Tests must be defined synchronously."
						)
					)
					break
				end

				local test = makeTest(fn, mode, name, currentDescribeBlock, timeout, asyncError)
				if currentDescribeBlock.mode ~= "skip" and test.mode == "only" then
					state.hasFocusedTests = true
				end
				table.insert(currentDescribeBlock.children, test)
				table.insert(currentDescribeBlock.tests, test)
				break
			elseif event.name == "hook_failure" then
				local test, describeBlock, error_, hook = event.test, event.describeBlock, event.error, event.hook
				local asyncError, type = hook.asyncError, hook.type

				if type == "beforeAll" then
					invariant(describeBlock, "always present for `*All` hooks")
					-- ROBLOX FIXME Luau: invariant should assert that describeBlock is not nil
					addErrorToEachTestUnderDescribe(describeBlock :: Circus_DescribeBlock, error_, asyncError)
				elseif type == "afterAll" then
					-- Attaching `afterAll` errors to each test makes execution flow
					-- too complicated, so we'll consider them to be global.
					table.insert(state.unhandledErrors, { error_, asyncError })
				else
					invariant(test, "always present for `*Each` hooks")
					-- ROBLOX FIXME Luau: invariant should assert that test is not nil
					table.insert((test :: Circus_TestEntry).errors, { error_, asyncError })
				end
				break
			elseif event.name == "test_skip" then
				event.test.status = "skip"
				break
			elseif event.name == "test_todo" then
				event.test.status = "todo"
				break
			elseif event.name == "test_done" then
				event.test.duration = getTestDuration(event.test)
				event.test.status = "done"
				state.currentlyRunningTest = nil
				break
			elseif event.name == "test_start" then
				state.currentlyRunningTest = event.test
				event.test.startedAt = DateTime.now().UnixTimestampMillis
				event.test.invocations += 1
				break
			elseif event.name == "test_fn_start" then
				event.test.seenDone = false
				break
			elseif event.name == "test_fn_failure" then
				local error_, asyncError = event.error, event.test.asyncError
				table.insert(event.test.errors, { error_, asyncError })
				break
			elseif event.name == "test_retry" then
				event.test.errors = {}
				break
			elseif event.name == "run_start" then
				state.hasStarted = true
				if Boolean.toJSBoolean(_G[TEST_TIMEOUT_SYMBOL]) then
					state.testTimeout = _G[TEST_TIMEOUT_SYMBOL]
				end
				break
			elseif event.name == "run_finish" then
				break
			elseif event.name == "setup" then
				-- Uncaught exception handlers should be defined on the parent process
				-- object. If defined on the VM's process object they just no op and let
				-- the parent process crash. It might make sense to return a `dispatch`
				-- function to the parent process and register handlers there instead, but
				-- i'm not sure if this is works. For now i just replicated whatever
				-- jasmine was doing -- dabramov
				-- ROBLOX deviation START: no access to parent process and global error handlers in Luau
				-- state.parentProcess = event.parentProcess
				-- invariant(state.parentProcess)
				-- state.originalGlobalErrorHandlers = injectGlobalErrorHandlers(state.parentProcess)
				-- ROBLOX deviation END
				if Boolean.toJSBoolean(event.testNamePattern) then
					state.testNamePattern = RegExp(event.testNamePattern, "i")
				end
				break
			elseif event.name == "teardown" then
				-- ROBLOX deviation START: no access to parent process and global error handlers in Luau
				-- invariant(state.originalGlobalErrorHandlers)
				-- invariant(state.parentProcess)
				-- restoreGlobalErrorHandlers(state.parentProcess, state.originalGlobalErrorHandlers)
				-- ROBLOX deviation END
				break
			elseif event.name == "error" then
				-- It's very likely for long-running async tests to throw errors. In this
				-- case we want to catch them and fail the current test. At the same time
				-- there's a possibility that one test sets a long timeout, that will
				-- eventually throw after this test finishes but during some other test
				-- execution, which will result in one test's error failing another test.
				-- In any way, it should be possible to track where the error was thrown
				-- from.
				if state.currentlyRunningTest ~= nil then
					table.insert(state.currentlyRunningTest.errors, event.error)
				else
					table.insert(state.unhandledErrors, event.error)
				end
				break
			end
		until true
	end
	exports.eventHandler = eventHandler
end
-- ROBLOX FILE END

-- ROBLOX FILE START: globalErrorHandlers.ts
do
	local LuauPolyfill = require(Packages.LuauPolyfill)
	local Array = LuauPolyfill.Array

	-- ROBLOX FIXME START: added types and objects that do not exist in Luau
	type NodeJS_UncaughtExceptionListener = any
	type NodeJS_UnhandledRejectionListener = any
	type NodeJS_Process = any
	local process = {
		listeners = function(_self, ...)
			return {}
		end,
	}
	-- ROBLOX FIXME END
	type Circus_GlobalErrorHandlers = typesModule.Circus_GlobalErrorHandlers
	--[[
		ROBLOX deviation: merged into this file to avoid circular dependencies
		original code:
		import {dispatchSync} from './state';
	]]

	local uncaught: NodeJS_UncaughtExceptionListener & NodeJS_UnhandledRejectionListener
	function uncaught(error_)
		dispatchSync({ error = error_, name = "error" })
	end

	function injectGlobalErrorHandlers(parentProcess: NodeJS_Process): Circus_GlobalErrorHandlers
		local uncaughtException = Array.slice(process:listeners("uncaughtException"))
		local unhandledRejection = Array.slice(process:listeners("unhandledRejection"))
		parentProcess:removeAllListeners("uncaughtException")
		parentProcess:removeAllListeners("unhandledRejection")
		parentProcess:on("uncaughtException", uncaught)
		parentProcess:on("unhandledRejection", uncaught)
		return { uncaughtException = uncaughtException, unhandledRejection = unhandledRejection }
	end
	exports.injectGlobalErrorHandlers = injectGlobalErrorHandlers

	function restoreGlobalErrorHandlers(
		parentProcess: NodeJS_Process,
		originalErrorHandlers: Circus_GlobalErrorHandlers
	): ()
		parentProcess:removeListener("uncaughtException", uncaught)
		parentProcess:removeListener("unhandledRejection", uncaught)
		for _, listener in ipairs(originalErrorHandlers.uncaughtException) do
			parentProcess:on("uncaughtException", listener)
		end
		for _, listener in ipairs(originalErrorHandlers.unhandledRejection) do
			parentProcess:on("unhandledRejection", listener)
		end
	end
	exports.restoreGlobalErrorHandlers = restoreGlobalErrorHandlers
end
-- ROBLOX FILE END

-- ROBLOX FILE START: state.ts
do
	local LuauPolyfill = require(Packages.LuauPolyfill)
	type Array<T> = LuauPolyfill.Array<T>
	type Promise<T> = LuauPolyfill.Promise<T>

	local Promise = require(Packages.Promise)

	type Circus_EventHandler = typesModule.Circus_EventHandler
	type Circus_State = typesModule.Circus_State
	type Circus_AsyncEvent = typesModule.Circus_AsyncEvent
	type Circus_SyncEvent = typesModule.Circus_SyncEvent
	--[[
		ROBLOX deviation: merged into this file to avoid circular dependencies
		original code:
		import eventHandler from './eventHandler';
	]]
	-- ROBLOX FIXME: resolve cyclic dep
	local formatNodeAssertErrors = require(script.Parent.formatNodeAssertErrors).default
	-- ROBLOX FIXME: resolve cyclic dep
	local STATE_SYM = require(script.Parent.types).STATE_SYM
	local makeDescribe = require(script.Parent.utils).makeDescribe
	local eventHandlers: Array<Circus_EventHandler> = { eventHandler, formatNodeAssertErrors }
	-- ROBLOX deviation START: move to `state_.lua` to avoid cyclic dependency
	local stateCommonModule = require(script.Parent.state_)
	local ROOT_DESCRIBE_BLOCK_NAME = stateCommonModule.ROOT_DESCRIBE_BLOCK_NAME
	-- ROBLOX deviation END
	exports.ROOT_DESCRIBE_BLOCK_NAME = ROOT_DESCRIBE_BLOCK_NAME
	local function createState(): Circus_State
		local ROOT_DESCRIBE_BLOCK = makeDescribe(ROOT_DESCRIBE_BLOCK_NAME)
		return {
			currentDescribeBlock = ROOT_DESCRIBE_BLOCK,
			currentlyRunningTest = nil,
			expand = nil,
			hasFocusedTests = false,
			hasStarted = false,
			includeTestLocationInResult = false,
			parentProcess = nil,
			rootDescribeBlock = ROOT_DESCRIBE_BLOCK,
			testNamePattern = nil,
			testTimeout = 5000,
			unhandledErrors = {},
		}
	end
	local function resetState(): ()
		_G[STATE_SYM] = createState()
	end
	exports.resetState = resetState
	resetState()
	-- ROBLOX deviation START: move to `state_.lua` to avoid cyclic dependency
	local getState = stateCommonModule.getState
	-- ROBLOX deviation END
	exports.getState = getState
	local function setState(state: Circus_State): Circus_State
		_G[STATE_SYM] = state
		return _G[STATE_SYM]
	end
	exports.setState = setState
	local function dispatch(event: Circus_AsyncEvent): Promise<nil>
		return Promise.resolve():andThen(function()
			for _, handler in ipairs(eventHandlers) do
				-- ROBLOX deviation START: need to check if value returned is a Promise, otherwise we can't run `:expect()`
				-- ROBLOX FIXME Luau: need to cast handler explicitely as Luau can't infer from type union properly
				local result = (
					handler :: (self: any, event: Circus_AsyncEvent, state: Circus_State) -> nil | Promise<nil>
				)(nil, event, getState())
				if result ~= nil then
					result:expect()
				end
				-- ROBLOX deviation END
			end
		end)
	end
	exports.dispatch = dispatch
	function dispatchSync(event: Circus_SyncEvent): ()
		for _, handler in ipairs(eventHandlers) do
			-- ROBLOX FIXME Luau: need to cast handler explicitely as Luau can't infer from type union properly
			(handler :: (self: any, event: Circus_SyncEvent, state: Circus_State) -> ())(nil, event, getState())
		end
	end
	exports.dispatchSync = dispatchSync
	local function addEventHandler(handler: Circus_EventHandler): ()
		table.insert(eventHandlers, handler)
	end
	exports.addEventHandler = addEventHandler
end
-- ROBLOX FILE END

return exports
