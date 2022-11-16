-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-core/src/types.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>

local test_resultModule = require(Packages.JestTestResult)
type Test = test_resultModule.Test
local typesModule = require(Packages.JestTypes)
type Config_Path = typesModule.Config_Path
local jest_runtimeModule = require(Packages.JestRuntime)
type Context = jest_runtimeModule.Context

export type Stats = {
	roots: number,
	testMatch: number,
	testPathIgnorePatterns: number,
	testRegex: number,
	testPathPattern: number?,
}

export type TestRunData = Array<{
	context: Context,
	matches: { allTests: number, tests: Array<Test>, total: number?, stats_: Stats? },
}>

-- ROBLOX deviation START: unroll `keyof Stats` as this operation is not supported in Luau
type KeyOfStats = "roots" | "testMatch" | "testPathIgnorePatterns" | "testRegex" | "testPathPattern"
export type TestPathCases = Array<{
	stat: KeyOfStats,
	isMatch: (path: Config_Path) -> boolean,
}>
-- ROBLOX deviation END

export type TestPathCasesWithPathPattern = TestPathCases & { testPathPattern: (path: Config_Path) -> boolean }

export type FilterResult = { test: string, message: string }

export type Filter = (testPaths: Array<string>) -> Promise<{ filtered: Array<FilterResult> }>

return {}
