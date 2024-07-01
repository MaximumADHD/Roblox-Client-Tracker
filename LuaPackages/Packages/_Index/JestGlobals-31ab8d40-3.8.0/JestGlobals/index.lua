-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-globals/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  *
--  */

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error

local JestEnvironment = require(Packages.JestEnvironment)
type Jest = JestEnvironment.Jest
local importedExpect = require(Packages.Expect)

-- ROBLOX deviation START: additional imports
local jestTypesModule = require(Packages.JestTypes)
type TestFrameworkGlobals = jestTypesModule.Global_TestFrameworkGlobals

local ExpectModule = require(Packages.Expect)
type MatcherState = ExpectModule.MatcherState
type ExpectExtended<E, State = MatcherState> = ExpectModule.ExpectExtended<E, State>
-- ROBLOX deviation END

type JestGlobals =
	{
		jest: Jest,
		expect: typeof(importedExpect),
		expectExtended: ExpectExtended<{ [string]: (...any) -> nil }>,
	}
	-- ROBLOX deviation START: using TestFrameworkGlobals instead of declaring variables one by one
	& TestFrameworkGlobals
-- ROBLOX deviation END

error(Error.new(
	-- ROBLOX deviation START: aligned message to make sense for jest-roblox
	"Do not import `JestGlobals` outside of the Jest test environment"
	-- ROBLOX deviation END
))

return ({} :: any) :: JestGlobals
