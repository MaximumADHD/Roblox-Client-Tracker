-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/types.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local Symbol = require(Packages.Symbol)

local exports = {}

-- Used as type
local typesModule = require(Packages.JestTypes)
type Circus_State = typesModule.Circus_State
local expect = require(Packages.Expect)

local STATE_SYM = (Symbol("JEST_STATE_SYMBOL") :: unknown) :: "STATE_SYM_SYMBOL"
exports.STATE_SYM = STATE_SYM
local RETRY_TIMES = (Symbol.for_("RETRY_TIMES") :: unknown) :: "RETRY_TIMES_SYMBOL"
exports.RETRY_TIMES = RETRY_TIMES
local LOG_ERRORS_BEFORE_RETRY = (Symbol.for_("LOG_ERRORS_BEFORE_RETRY") :: unknown) :: "LOG_ERRORS_BEFORE_RETRY_SYMBOL"
exports.LOG_ERRORS_BEFORE_RETRY = LOG_ERRORS_BEFORE_RETRY
local WAIT_BEFORE_RETRY = (Symbol.for_("WAIT_BEFORE_RETRY") :: unknown) :: "WAIT_BEFORE_RETRY_SYMBOL"
exports.WAIT_BEFORE_RETRY = WAIT_BEFORE_RETRY
local RETRY_IMMEDIATELY = (Symbol.for_("RETRY_IMMEDIATELY") :: unknown) :: "RETRY_IMMEDIATELY_SYMBOL"
exports.RETRY_IMMEDIATELY = RETRY_IMMEDIATELY
-- To pass this value from Runtime object to state we need to use global[sym]
local TEST_TIMEOUT_SYMBOL = (Symbol.for_("TEST_TIMEOUT_SYMBOL") :: unknown) :: "TEST_TIMEOUT_SYMBOL"
exports.TEST_TIMEOUT_SYMBOL = TEST_TIMEOUT_SYMBOL

-- ROBLOX NOTE: can't declare type within a global namespace in Luau
export type NodeJS_Global = {
	STATE_SYM_SYMBOL: Circus_State,
	RETRY_TIMES_SYMBOL: string,
	LOG_ERRORS_BEFORE_RETRY_SYMBOL: boolean?,
	WAIT_BEFORE_RETRY_SYMBOL: number?,
	RETRY_IMMEDIATELY_SYMBOL: boolean?,
	TEST_TIMEOUT_SYMBOL: number,
	expect: typeof(expect),
}

return exports
