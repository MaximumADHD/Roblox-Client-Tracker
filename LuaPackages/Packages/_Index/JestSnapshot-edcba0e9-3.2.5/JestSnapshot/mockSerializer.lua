-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-snapshot/src/mockSerializer.ts
-- /**
-- * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
-- *
-- * This source code is licensed under the MIT license found in the
-- * LICENSE file in the root directory of this source tree.
-- *
-- */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
-- ROBLOX deviation: omitted external type NewPlugin
local PrettyFormat = require(Packages.PrettyFormat)
type Config = PrettyFormat.Config
type Printer = PrettyFormat.Printer
type Refs = PrettyFormat.Refs

local function serialize(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	-- Serialize a non-default name, even if config.printFunctionName is false.
	local name = val.getMockName()
	local nameString = ""
	if name == "jest.fn()" then
		nameString = ""
	else
		nameString = " " .. name
	end

	local callsString = ""
	if #val.mock.calls ~= 0 then
		local indentationNext = indentation .. config.indent
		callsString = " {"
			.. config.spacingOuter
			.. indentationNext
			.. '"calls": '
			.. printer(val.mock.calls, config, indentationNext, depth, refs)

		if config.min then
			callsString = callsString .. ", "
		else
			callsString = callsString .. ","
		end

		callsString = callsString
			.. config.spacingOuter
			.. indentationNext
			.. '"results": '
			.. printer(val.mock.results, config, indentationNext, depth, refs)

		if not config.min then
			callsString = callsString .. ","
		end

		callsString = callsString .. config.spacingOuter .. indentation .. "}"
	end

	return "[MockFunction" .. nameString .. "]" .. callsString
end

local function test(val: any): boolean
	-- ROBLOX deviation: add a table check to prevent access errors on non-tables
	return val and typeof(val) == "table" and val._isMockFunction
end

return {
	serialize = serialize,
	test = test,
}
