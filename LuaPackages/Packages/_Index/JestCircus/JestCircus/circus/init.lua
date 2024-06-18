-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/index.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script
local Packages = CurrentModule.Parent.Parent

-- ROBLOX FIXME
type FIXME_ANALYZE = any

-- ROBLOX deviation START: predefine variables
local _dispatchDescribe: (
	blockFn: Circus_BlockFn,
	blockName: Circus_BlockNameLike,
	describeFn: DescribeFn,
	mode: Circus_BlockMode?
) -> ()
-- ROBLOX deviation END
local exports = {}
local typesModule = require(Packages.JestTypes)
type Circus_HookFn = typesModule.Circus_HookFn
type Circus_HookType = typesModule.Circus_HookType
type Circus_BlockFn = typesModule.Circus_BlockFn
type Circus_BlockNameLike = typesModule.Circus_BlockNameLike
type Circus_TestNameLike = typesModule.Circus_TestNameLike
type Circus_BlockMode = typesModule.Circus_BlockMode
type Circus_TestName = typesModule.Circus_TestName
type Circus_TestFn = typesModule.Circus_TestFn
type Circus_TestMode = typesModule.Circus_TestMode
type Circus_Event = typesModule.Circus_Event
type Circus_State = typesModule.Circus_State
type Global_It = typesModule.Global_It
local bindEach = require(Packages.JestEach).bind
local jest_utilModule = require(Packages.JestUtil)
local ErrorWithStack = jest_utilModule.ErrorWithStack
local convertDescriptorToString = jest_utilModule.convertDescriptorToString
local isPromise = jest_utilModule.isPromise
local dispatchSync = require(script.state).dispatchSync
local stateModule = require(script.state)
exports.setState = stateModule.setState
exports.getState = stateModule.getState
exports.resetState = stateModule.resetState
exports.run = require(script.run).default

type THook = (fn: Circus_HookFn, timeout: number?) -> ()
type DescribeFn = typeof(setmetatable({}, {
	__call = (nil :: any) :: (_self: any, blockName: Circus_BlockNameLike, blockFn: Circus_BlockFn) -> (),
}))

local LuauPolyfill = require(Packages.LuauPolyfill)
type Error = LuauPolyfill.Error

local describe = (function()
	local describe
	describe = setmetatable({}, {
		__call = function(_self: any, blockName: Circus_BlockNameLike, blockFn: Circus_BlockFn)
			return _dispatchDescribe(blockFn, blockName, describe)
		end,
	})
	local only
	only = setmetatable({}, {
		__call = function(_self: any, blockName: Circus_BlockNameLike, blockFn: Circus_BlockFn)
			return _dispatchDescribe(blockFn, blockName, only, "only")
		end,
	})
	local skip
	skip = setmetatable({}, {
		__call = function(_self: any, blockName: Circus_BlockNameLike, blockFn: Circus_BlockFn)
			return _dispatchDescribe(blockFn, blockName, skip, "skip")
		end,
	})

	describe.each = bindEach(
		-- ROBLOX FIXME: callable table can't be converted to a function
		describe :: FIXME_ANALYZE,
		false
	)

	only.each = bindEach(
		-- ROBLOX FIXME: callable table can't be converted to a function
		only :: FIXME_ANALYZE,
		false
	)
	skip.each = bindEach(
		-- ROBLOX FIXME: callable table can't be converted to a function
		skip :: FIXME_ANALYZE,
		false
	)

	describe.only = only
	describe.skip = skip

	return describe
end)()

function _dispatchDescribe(
	blockFn: Circus_BlockFn,
	blockName: Circus_BlockNameLike,
	describeFn: DescribeFn,
	-- ROBLOX FIXME Luau: can't type it properly as `Circus_BlockMode` because for some reason it conflicts with a predefined value type.
	mode: any?
): ()
	local asyncError = ErrorWithStack.new(
		nil,
		-- ROBLOX FIXME: callable table can't be converted to a function
		describeFn :: FIXME_ANALYZE
	)
	if blockFn == nil then
		asyncError.message = "Missing second argument. It must be a callback function."
		error(asyncError)
	end
	if typeof(blockFn) ~= "function" then
		asyncError.message = ("Invalid second argument, %s. It must be a callback function."):format(blockFn)
		error(asyncError)
	end
	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		-- ROBLOX deviation START: silence unused 'ok' variable
		-- local ok, result, hasReturned = xpcall(function()
		local _ok, result, hasReturned = xpcall(function()
			-- ROBLOX deviation END
			blockName = convertDescriptorToString(blockName)
		end, function(error_)
			asyncError.message = (error_ :: Error).message
			error(asyncError)
		end)
		-- ROBLOX deviation END
		if hasReturned then
			return result
		end
	end

	dispatchSync({
		asyncError = asyncError,
		-- ROBLOX deviation START: string type has difficulty being inferred via control flow
		-- blockName = blockName,
		blockName = blockName :: string,
		-- ROBLOX deviation END
		mode = mode,
		name = "start_describe_definition",
	})

	-- ROBLOX deviation: casting to any as this is runtime check that is not allowed by type
	local describeReturn = blockFn() :: any
	if isPromise(describeReturn) then
		error(ErrorWithStack.new(
			'Returning a Promise from "describe" is not supported. Tests must be defined synchronously.',
			-- ROBLOX FIXME: callable table can't be converted to a function
			describeFn :: FIXME_ANALYZE
		))
	elseif describeReturn ~= nil then
		error(ErrorWithStack.new(
			'A "describe" callback must not return a value.',
			-- ROBLOX FIXME: callable table can't be converted to a function
			describeFn :: FIXME_ANALYZE
		))
	end

	-- ROBLOX deviation START: string type has difficulty being inferred via control flow
	-- dispatchSync({ blockName = blockName, mode = mode, name = "finish_describe_definition" })
	dispatchSync({ blockName = blockName :: string, mode = mode, name = "finish_describe_definition" })
	-- ROBLOX deviation END
end

local function _addHook(fn: Circus_HookFn, hookType: Circus_HookType, hookFn: THook, timeout: number?)
	local asyncError = ErrorWithStack.new(nil, hookFn)
	if typeof(fn) ~= "function" then
		asyncError.message = "Invalid first argument. It must be a callback function."
		error(asyncError)
	end
	dispatchSync({
		asyncError = asyncError,
		fn = fn,
		hookType = hookType,
		name = "add_hook",
		timeout = timeout,
	})
end

-- Hooks have to pass themselves to the HOF in order for us to trim stack traces.
local beforeEach: THook
function beforeEach(fn, timeout)
	return _addHook(fn, "beforeEach", beforeEach, timeout)
end
local beforeAll: THook
function beforeAll(fn, timeout)
	return _addHook(fn, "beforeAll", beforeAll, timeout)
end
local afterEach: THook
function afterEach(fn, timeout)
	return _addHook(fn, "afterEach", afterEach, timeout)
end
local afterAll: THook
function afterAll(fn, timeout)
	return _addHook(fn, "afterAll", afterAll, timeout)
end

local test: Global_It = (function()
	-- ROBLOX deviation START: predefine variables
	local _addTest: (
		testName: Circus_TestNameLike,
		mode: Circus_TestMode,
		fn: Circus_TestFn | nil,
		testFn: (testName: Circus_TestNameLike, fn: Circus_TestFn, timeout: number?) -> (),
		timeout: number?,
		failing: boolean?
	) -> ()

	-- ROBLOX deviation END
	local test: FIXME_ANALYZE
	test = setmetatable({}, {
		__call = function(_self: any, testName: Circus_TestName, fn: Circus_TestFn, timeout: number?): ()
			return _addTest(testName, nil, fn, test, timeout)
		end,
	})
	local skip: FIXME_ANALYZE
	skip = setmetatable({}, {
		__call = function(_self: any, testName: Circus_TestName, fn: Circus_TestFn?, timeout: number?): ()
			return _addTest(testName, "skip", fn, skip, timeout)
		end,
	})
	local only: FIXME_ANALYZE
	only = setmetatable({}, {
		__call = function(_self: any, testName: Circus_TestName, fn: Circus_TestFn, timeout: number?): ()
			return _addTest(testName, "only", fn, test.only, timeout)
		end,
	})

	function bindFailing(mode: Circus_TestMode)
		function failing(testName: Circus_TestNameLike, fn: Circus_TestFn?, timeout: number?)
			return _addTest(testName, mode, fn, failing, timeout, true)
		end
		return failing
	end

	test.todo = function(testName: Circus_TestName, ...: any): ()
		local rest = { ... }
		if #rest > 0 or typeof(testName) ~= "string" then
			error(ErrorWithStack.new("Todo must be called with only a description.", test.todo))
		end
		return _addTest(testName, "todo", function() end, test.todo)
	end

	function _addTest(
		testName: Circus_TestNameLike,
		mode: Circus_TestMode,
		fn: Circus_TestFn | nil,
		testFn: (testName: Circus_TestName, fn: Circus_TestFn, timeout: number?) -> (),
		timeout: number?,
		failing: boolean?
	): ()
		local asyncError, hasErrored = ErrorWithStack.new(nil, testFn), false

		do --[[ ROBLOX COMMENT: try-catch block conversion ]]
			local _ok, result, hasReturned = xpcall(function()
				testName = convertDescriptorToString(testName)
			end, function(error_)
				asyncError.message = (error_ :: Error).message
				hasErrored = true
			end)
			if hasReturned then
				return result
			end
		end

		if hasErrored then
			error(asyncError)
		end

		if fn == nil then
			asyncError.message =
				"Missing second argument. It must be a callback function. Perhaps you want to use `test.todo` for a test placeholder."
			error(asyncError)
		end
		if typeof(fn) ~= "function" then
			asyncError.message = ("Invalid second argument, %s. It must be a callback function."):format(tostring(fn))
			error(asyncError)
		end

		return dispatchSync({
			asyncError = asyncError,
			fn = fn,
			failing = if failing == nil then false else failing,
			mode = mode,
			-- ROBLOX FIXME Luau: roblox-cli doesn't recognize this type as one of the SyncEvent union members
			name = "add_test" :: any,
			testName = testName,
			timeout = timeout,
		})
	end

	test.each = bindEach(test)
	only.each = bindEach(only)
	skip.each = bindEach(skip)

	only.failing = bindFailing("only")
	skip.failing = bindFailing("skip")

	test.failing = bindFailing()
	test.only = only
	test.skip = skip
	return test
end)()
-- ROBLOX FIXME Luau: Argument #4 type is not compatible. Type '(string | string | string)?' could not be converted into '("only" | "skip" | "todo")?'
local it: Global_It = test :: FIXME_ANALYZE
export type Event = Circus_Event
export type State = Circus_State
exports.afterAll = afterAll
exports.afterEach = afterEach
exports.beforeAll = beforeAll
exports.beforeEach = beforeEach
exports.describe = describe
exports.it = it
exports.test = test
exports.default = {
	afterAll = afterAll,
	afterEach = afterEach,
	beforeAll = beforeAll,
	beforeEach = beforeEach,
	describe = describe,
	it = it,
	test = test,
}

return exports
