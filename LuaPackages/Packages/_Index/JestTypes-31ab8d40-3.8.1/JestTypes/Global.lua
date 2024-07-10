-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-types/src/Global.ts
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

type Generator<T, TReturn, TNext> = Object
type Record<T, U> = { [T]: U }
type ReturnType<T> = any
type TemplateStringsArray = Array<string>

-- ROBLOX FIXME: can't express void when defined outside of a function type
type void = nil

-- ROBLOX deviation START: Package not available, setting type to object
-- local istanbul_lib_coverageModule = require(rootWorkspace["istanbul-lib-coverage"])
type CoverageMapData = Object
-- ROBLOX deviation END

export type ValidTestReturnValues = void | nil
type TestReturnValuePromise = Promise<any>
type TestReturnValueGenerator = Generator<void, any, void>
export type TestReturnValue = ValidTestReturnValues | TestReturnValuePromise

export type TestContext = Record<string, any>

export type DoneFn = (reason: (string | Error)?) -> ()

-- these should not be undefined
export type DoneTakingTestFn = (this: TestContext | nil, done: DoneFn) -> ValidTestReturnValues
export type PromiseReturningTestFn = (this: TestContext | nil) -> TestReturnValue
export type GeneratorReturningTestFn = (this: TestContext | nil) -> TestReturnValueGenerator

type Fn = (...any) -> ...any
export type NameLike = number | Fn
export type TestName = string
export type TestNameLike = TestName | NameLike
export type TestFn = PromiseReturningTestFn | GeneratorReturningTestFn | DoneTakingTestFn
export type ConcurrentTestFn = () -> TestReturnValuePromise
export type BlockFn = () -> ()
export type BlockName = string
export type BlockNameLike = BlockName | NameLike
export type HookFn = TestFn

export type Col = any
export type Row = Array<Col>
export type Table = Array<Row>
export type ArrayTable = Table | Row
export type TemplateTable = TemplateStringsArray
export type TemplateData = Array<any>

-- ROBLOX deviation: Template literals are represented as a string
export type EachTable = ArrayTable | TemplateTable | string

export type TestCallback = BlockFn | TestFn | ConcurrentTestFn

-- ROBLOX FIXME: add type constraint <EachCallback extends TestCallback>
export type EachTestFn<EachCallback> = (...any) -> ReturnType<EachCallback>

-- TODO: Get rid of this at some point
type Jasmine = { _DEFAULT_TIMEOUT_INTERVAL: number?, addMatchers: (matchers: Record<string, any>) -> () }

-- ROBLOX FIXME: add type constraint <EachCallback extends TestCallback>
type Each<EachCallback> =
	((table: EachTable, ...any) -> (title: string, test: EachTestFn<EachCallback>, timeout: number?) -> ())
	| (() -> () -> ())

export type HookBase = (fn: TestFn, timeout: number?) -> ()

export type ItBase = typeof(setmetatable(
	{} :: { each: Each<TestFn>, failing: (testName: TestNameLike, fn: TestFn, timeout: number?) -> () },
	{ __call = function(_, testName: TestName, fn: TestFn, timeout: number?): () end }
))

export type It = ItBase & { only: ItBase, skip: ItBase, todo: (testName: TestName) -> () }

export type ItConcurrentBase = typeof(setmetatable(
	{} :: {
		each: Each<ConcurrentTestFn>,
		failing: (testName: TestNameLike, fn: ConcurrentTestFn, timeout: number?) -> (),
	},
	{ __call = function(_, testName: string, testFn: ConcurrentTestFn, timeout: number?): () end }
))

export type ItConcurrentExtended = ItConcurrentBase & { only: ItConcurrentBase, skip: ItConcurrentBase }

-- ROBLOX FIXME START Luau: inline It to make Luau analyze happy
export type ItConcurrent =
	ItBase
	& { only: ItBase, skip: ItBase, todo: (testName: TestName) -> () }
	& { concurrent: ItConcurrentExtended }
-- export type ItConcurrent = It & { concurrent: ItConcurrentExtended }
-- ROBLOX FIXME END

export type DescribeBase = typeof(setmetatable({} :: { each: Each<BlockFn> }, {
	__call = function(_, blockName: BlockName, blockFn: BlockFn): () end,
}))

export type Describe = DescribeBase & { only: DescribeBase, skip: DescribeBase }

export type TestFrameworkGlobals = {
	it: ItConcurrent,
	test: ItConcurrent,
	fit: ItBase & { concurrent: ItConcurrentBase? },
	xit: ItBase,
	xtest: ItBase,
	describe: Describe,
	xdescribe: DescribeBase,
	fdescribe: DescribeBase,
	beforeAll: HookBase,
	beforeEach: HookBase,
	afterEach: HookBase,
	afterAll: HookBase,
}

export type GlobalAdditions = TestFrameworkGlobals & {
	__coverage__: CoverageMapData,
	jasmine: Jasmine,
	fail: () -> (),
	pending: () -> (),
	spyOn: () -> (),
	spyOnProperty: () -> (),
}

-- ROBLOX FIXME: should intersect with Omit<typeof globalThis, keyof GlobalAdditions>
export type Global = GlobalAdditions & { [string]: any }

return {}
