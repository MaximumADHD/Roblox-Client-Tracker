-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-types/src/TestResult.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local rootWorkspace = script.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

export type Milliseconds = number

export type Status = "passed" | "failed" | "skipped" | "pending" | "todo" | "disabled"

export type Callsite = { column: number, line: number }

-- this is here to make it possible to avoid huge dependency trees just for types
export type AssertionResult = {
	ancestorTitles: Array<string>,
	duration: (Milliseconds | nil)?,
	failureDetails: Array<any>,
	failureMessages: Array<string>,
	fullName: string,
	invocations: number?,
	location: (Callsite | nil)?,
	numPassingAsserts: number,
	retryReasons: Array<string>?,
	status: Status,
	title: string,
}

export type SerializableError = {
	code: any?,
	message: string,
	stack: string | nil,
	type: string?,
}

return {}
