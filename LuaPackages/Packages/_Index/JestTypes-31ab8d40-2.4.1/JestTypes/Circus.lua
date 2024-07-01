-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-types/src/Circus.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local rootWorkspace = script.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

local RegExp = require(rootWorkspace.RegExp)
type RegExp = RegExp.RegExp

-- ROBLOX FIXME: can't express void when defined outside of a function type
type void = nil

local GlobalModule = require(script.Parent.Global)

-- ROBLOX deviation START: NodeJS.Process not available
-- type Process = NodeJS.Process
type Process = Object
-- ROBLOX deviation END

export type DoneFn = GlobalModule.DoneFn
export type BlockFn = GlobalModule.BlockFn
export type BlockName = GlobalModule.BlockName
export type BlockMode = void | "skip" | "only" | "todo"
export type TestMode = BlockMode
export type TestName = GlobalModule.TestName
export type TestFn = GlobalModule.TestFn
export type HookFn = GlobalModule.HookFn
export type AsyncFn = TestFn | HookFn
export type SharedHookType = "afterAll" | "beforeAll"
export type HookType = SharedHookType | "afterEach" | "beforeEach"
export type TestContext = GlobalModule.TestContext
export type Exception = any -- Since in JS anything can be thrown as an error.
export type FormattedError = string -- String representation of error.
export type Hook = {
	asyncError: Error,
	fn: HookFn,
	type: HookType,
	parent: DescribeBlock,
	seenDone: boolean,
	timeout: number | nil,
}

export type EventHandler =
	((self: any, event: AsyncEvent, state: State) -> (void | Promise<void>))
	| ((self: any, event: SyncEvent, state: State) -> void)

export type Event = SyncEvent | AsyncEvent

type JestGlobals = GlobalModule.TestFrameworkGlobals & {
	-- we cannot type `expect` properly as it'd create circular dependencies
	expect: any,
}

export type SyncEvent = {
	asyncError: Error,
	mode: BlockMode,
	name: "start_describe_definition",
	blockName: BlockName,
} | {
	mode: BlockMode,
	name: "finish_describe_definition",
	blockName: BlockName,
} | {
	asyncError: Error,
	name: "add_hook",
	hookType: HookType,
	fn: HookFn,
	timeout: number | nil,
} | {
	asyncError: Error,
	name: "add_test",
	testName: TestName,
	fn: TestFn,
	mode: TestMode?,
	timeout: number | nil,
} | {
	-- Any unhandled error that happened outside of test/hooks (unless it is
	-- an `afterAll` hook)
	name: "error",
	error: Exception,
}

export type AsyncEvent = {
	-- first action to dispatch. Good time to initialize all settings
	name: "setup",
	testNamePattern: string?,
	runtimeGlobals: JestGlobals,
	parentProcess: Process,
} | {
	name: "include_test_location_in_result",
} | {
	name: "hook_start",
	hook: Hook,
} | {
	name: "hook_success",
	describeBlock: DescribeBlock?,
	test: TestEntry?,
	hook: Hook,
} | {
	name: "hook_failure",
	error: string | Exception,
	describeBlock: DescribeBlock?,
	test: TestEntry?,
	hook: Hook,
} | {
	name: "test_fn_start",
	test: TestEntry,
} | {
	name: "test_fn_success",
	test: TestEntry,
} | {
	name: "test_fn_failure",
	error: Exception,
	test: TestEntry,
} | {
	name: "test_retry",
	test: TestEntry,
} | {
	-- the `test` in this case is all hooks + it/test function, not just the
	-- function passed to `it/test`
	name: "test_start",
	test: TestEntry,
} | {
	name: "test_skip",
	test: TestEntry,
} | {
	name: "test_todo",
	test: TestEntry,
} | {
	-- test failure is defined by presence of errors in `test.errors`,
	-- `test_done` indicates that the test and all its hooks were run,
	-- and nothing else will change it's state in the future. (except third
	-- party extentions/plugins)
	name: "test_done",
	test: TestEntry,
} | {
	name: "run_describe_start",
	describeBlock: DescribeBlock,
} | {
	name: "run_describe_finish",
	describeBlock: DescribeBlock,
} | {
	name: "run_start",
} | {
	name: "run_finish",
} | {
	-- Action dispatched after everything is finished and we're about to wrap
	-- things up and return test results to the parent process (caller).
	name: "teardown",
}

export type MatcherResults = { actual: any, expected: any, name: string, pass: boolean }

export type TestStatus = "skip" | "done" | "todo"
export type TestResult = {
	duration: (number | nil)?,
	errors: Array<FormattedError>,
	errorsDetailed: Array<MatcherResults | any>,
	invocations: number,
	status: TestStatus,
	location: ({ column: number, line: number } | nil)?,
	testPath: Array<TestName | BlockName>,
}

export type RunResult = { unhandledErrors: Array<FormattedError>, testResults: TestResults }

export type TestResults = Array<TestResult>

export type GlobalErrorHandlers = {
	uncaughtException: Array<(exception: Exception) -> ()>,
	unhandledRejection: Array<(exception: Exception, promise: Promise<any>) -> ()>,
}

export type State = {
	currentDescribeBlock: DescribeBlock,
	currentlyRunningTest: (TestEntry | nil)?, -- including when hooks are being executed
	expand: boolean?, -- expand error messages
	hasFocusedTests: boolean, -- that are defined using test.only
	hasStarted: boolean, -- whether the rootDescribeBlock has started running
	-- Store process error handlers. During the run we inject our own
	-- handlers (so we could fail tests on unhandled errors) and later restore
	-- the original ones.
	originalGlobalErrorHandlers: GlobalErrorHandlers?,
	parentProcess: Process | nil, -- process object from the outer scope
	rootDescribeBlock: DescribeBlock,
	testNamePattern: (RegExp | nil)?,
	testTimeout: number,
	unhandledErrors: Array<Exception>,
	includeTestLocationInResult: boolean,
}

export type DescribeBlock = {
	type: "describeBlock",
	children: Array<DescribeBlock | TestEntry>,
	hooks: Array<Hook>,
	mode: BlockMode,
	name: BlockName,
	parent: DescribeBlock?,
	--[[* @deprecated Please get from `children` array instead ]]
	tests: Array<TestEntry>,
}

export type TestError = Exception | Array<Exception | nil> -- the error from the test, as well as a backup error for async

export type TestEntry = {
	type: "test",
	asyncError: Exception, -- Used if the test failure contains no usable stack trace
	errors: Array<TestError>,
	fn: TestFn,
	invocations: number,
	mode: TestMode,
	name: TestName,
	parent: DescribeBlock,
	startedAt: (number | nil)?,
	duration: (number | nil)?,
	seenDone: boolean,
	status: (TestStatus | nil)?, -- whether the test has been skipped or run already
	timeout: number?,
}

return {}
