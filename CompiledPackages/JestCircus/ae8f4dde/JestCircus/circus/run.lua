-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/run.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
type Promise<T> = LuauPolyfill.Promise<T>

local Promise = require(Packages.Promise)

local exports = {}
local typesModule = require(Packages.JestTypes)
type Circus_RunResult = typesModule.Circus_RunResult
type Circus_DescribeBlock = typesModule.Circus_DescribeBlock
type Circus_TestEntry = typesModule.Circus_TestEntry
type Circus_Hook = typesModule.Circus_Hook
type Circus_TestContext = typesModule.Circus_TestContext
local stateModule = require(script.Parent.state)
local dispatch = stateModule.dispatch
local getState = stateModule.getState
local RETRY_TIMES = require(script.Parent.types).RETRY_TIMES
local utilsModule = require(script.Parent.utils)
local callAsyncCircusFn = utilsModule.callAsyncCircusFn
local getAllHooksForDescribe = utilsModule.getAllHooksForDescribe
local getEachHooksForTest = utilsModule.getEachHooksForTest
local getTestID = utilsModule.getTestID
local invariant = utilsModule.invariant
local makeRunResult = utilsModule.makeRunResult

-- ROBLOX deviation START: predefine variables
local _runTestsForDescribeBlock
local _runTest
local _callCircusHook
local _callCircusTest
-- ROBLOX deviation END

local function run(): Promise<Circus_RunResult>
	return Promise.resolve():andThen(function()
		local rootDescribeBlock
		do
			local ref = getState()
			rootDescribeBlock = ref.rootDescribeBlock
		end
		dispatch({ name = "run_start" }):expect()
		_runTestsForDescribeBlock(rootDescribeBlock):expect()
		dispatch({ name = "run_finish" }):expect()
		return makeRunResult(getState().rootDescribeBlock, getState().unhandledErrors)
	end)
end

function _runTestsForDescribeBlock(describeBlock: Circus_DescribeBlock)
	return Promise.resolve():andThen(function()
		dispatch({ describeBlock = describeBlock, name = "run_describe_start" }):expect()
		local ref = getAllHooksForDescribe(describeBlock)
		local beforeAll, afterAll = ref.beforeAll, ref.afterAll

		local isSkipped = describeBlock.mode == "skip"

		if not isSkipped then
			for _, hook in ipairs(beforeAll) do
				_callCircusHook({
					describeBlock = describeBlock,
					hook = hook,
				}):expect()
			end
		end

		-- Tests that fail and are retried we run after other tests
		local ref_ = tonumber(_G[RETRY_TIMES], 10)
		local retryTimes = if ref_ ~= nil then ref_ else 0
		local deferredRetryTests = {}

		for _, child in ipairs(describeBlock.children) do
			if child.type == "describeBlock" then
				_runTestsForDescribeBlock(child):expect()
			elseif child.type == "test" then
				local hasErrorsBeforeTestRun = #child.errors > 0
				_runTest(child, isSkipped):expect()

				if hasErrorsBeforeTestRun == false and retryTimes > 0 and #child.errors > 0 then
					table.insert(deferredRetryTests, child)
				end
			end
		end

		-- Re-run failed tests n-times if configured
		for _, test in ipairs(deferredRetryTests) do
			local numRetriesAvailable = retryTimes

			while numRetriesAvailable > 0 and #test.errors > 0 do
				-- Clear errors so retries occur
				dispatch({ name = "test_retry", test = test }):expect()

				_runTest(test, isSkipped):expect()
				numRetriesAvailable -= 1
			end
		end

		if not isSkipped then
			for _, hook in ipairs(afterAll) do
				_callCircusHook({ describeBlock = describeBlock, hook = hook }):expect()
			end
		end

		dispatch({ describeBlock = describeBlock, name = "run_describe_finish" }):expect()
	end)
end

function _runTest(test: Circus_TestEntry, parentSkipped: boolean): Promise<nil>
	return Promise.resolve():andThen(function()
		dispatch({ name = "test_start", test = test }):expect()
		local testContext = {}
		local ref = getState()
		local hasFocusedTests, testNamePattern = ref.hasFocusedTests, ref.testNamePattern
		local isSkipped = parentSkipped
			or test.mode == "skip"
			or (hasFocusedTests and test.mode ~= "only")
			or (testNamePattern and not testNamePattern:test(getTestID(test)))

		if isSkipped then
			dispatch({ name = "test_skip", test = test }):expect()
			return
		end

		if test.mode == "todo" then
			dispatch({ name = "test_todo", test = test }):expect()
			return
		end

		local ref_ = getEachHooksForTest(test)
		local afterEach, beforeEach = ref_.afterEach, ref_.beforeEach

		for _, hook in ipairs(beforeEach) do
			if #test.errors > 0 then
				-- If any of the before hooks failed already, we don't run any
				-- hooks after that.
				break
			end

			_callCircusHook({
				hook = hook,
				test = test,
				testContext = testContext,
			}):expect()
		end

		_callCircusTest(test, testContext):expect()

		for _, hook in ipairs(afterEach) do
			_callCircusHook({ hook = hook, test = test, testContext = testContext }):expect()
		end

		-- `afterAll` hooks should not affect test status (pass or fail), because if
		-- we had a global `afterAll` hook it would block all existing tests until
		-- this hook is executed. So we dispatch `test_done` right away.
		dispatch({ name = "test_done", test = test }):expect()
	end)
end

function _callCircusHook(ref: {
	hook: Circus_Hook,
	describeBlock: Circus_DescribeBlock?,
	test: Circus_TestEntry?,
	testContext: Circus_TestContext?,
}): Promise<nil>
	local hook, test, describeBlock, testContext = ref.hook, ref.test, ref.describeBlock, ref.testContext
	return Promise.resolve():andThen(function()
		dispatch({ hook = hook, name = "hook_start" }):expect()
		local timeout = if Boolean.toJSBoolean(hook.timeout) and hook.timeout ~= nil
			then hook.timeout
			else getState().testTimeout

		local ok, error_ = pcall(function()
			callAsyncCircusFn(hook, testContext, { isHook = true, timeout = timeout }):expect()
			dispatch({
				describeBlock = describeBlock,
				hook = hook,
				name = "hook_success",
				test = test,
			}):expect()
		end)
		if not ok then
			dispatch({
				describeBlock = describeBlock,
				error = error_,
				hook = hook,
				name = "hook_failure",
				test = test,
			}):expect()
		end
	end)
end

function _callCircusTest(test: Circus_TestEntry, testContext: Circus_TestContext): Promise<nil>
	return Promise.resolve():andThen(function()
		dispatch({ name = "test_fn_start", test = test }):expect()
		local timeout = Boolean.toJSBoolean(test.timeout) and test.timeout or getState().testTimeout
		invariant(test.fn, "Tests with no 'fn' should have 'mode' set to 'skipped'")

		if #test.errors > 0 then
			return -- We don't run the test if there's already an error in before hooks.
		end
		local ok, error_ = pcall(function()
			callAsyncCircusFn(test, testContext, { isHook = false, timeout = timeout }):expect()
			if test.failing then
				test.asyncError.message =
					"Failing test passed even though it was supposed to fail. Remove `.failing` to remove error."
				dispatch({
					error = test.asyncError,
					name = "test_fn_failure",
					test = test,
				})
			else
				dispatch({ name = "test_fn_success", test = test }):expect()
			end
		end)
		if not ok then
			if test.failing then
				dispatch({ name = "test_fn_success", test = test })
			else
				dispatch({ error = error_, name = "test_fn_failure", test = test }):expect()
			end
		end
	end)
end

exports.default = run

return exports
