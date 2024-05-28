-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/pretty-format/src/plugins/AsymmetricMatcher.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Symbol = LuauPolyfill.Symbol

local Collections = require(CurrentModule.Collections)
local printListItems = Collections.printListItems
local printObjectProperties = Collections.printTableEntries

local Types = require(CurrentModule.Types)
type Config = Types.Config
type Refs = Types.Refs
type Printer = Types.Printer

local asymmetricMatcher = Symbol.for_("jest.asymmetricMatcher")
local SPACE = " "

-- ROBLOX deviation: stringContaining shouldn't accept string patterns so we unescape special characters
local function unescape(s: string): string
	return s:gsub("%%([%$%%%^%*%(%)%.%[%]%+%-%?])", "%1")
end

local function serialize(
	val: any,
	config: Config,
	indentation: string,
	depth: number,
	refs: Refs,
	printer: Printer
): string
	local stringedValue = val:toString()

	if stringedValue == "ArrayContaining" or stringedValue == "ArrayNotContaining" then
		depth = depth + 1
		if depth > config.maxDepth then
			return "[" .. stringedValue .. "]"
		end
		return stringedValue
			.. SPACE
			.. "{"
			.. printListItems(val.sample, config, indentation, depth, refs, printer)
			.. "}"
	end

	if stringedValue == "ObjectContaining" or stringedValue == "ObjectNotContaining" then
		depth = depth + 1
		if depth > config.maxDepth then
			return "[" .. stringedValue .. "]"
		end
		return stringedValue
			.. SPACE
			.. "{"
			.. printObjectProperties(val.sample, config, indentation, depth, refs, printer)
			.. "}"
	end

	if stringedValue == "StringMatching" or stringedValue == "StringNotMatching" then
		return stringedValue .. SPACE .. printer(val.sample, config, indentation, depth, refs)
	end

	if stringedValue == "StringContaining" or stringedValue == "StringNotContaining" then
		return stringedValue .. SPACE .. printer(unescape(val.sample), config, indentation, depth, refs)
	end

	if typeof(val.toAsymmetricMatcher) ~= "function" then
		-- ROBLOX deviation START: do not print constructor name as we don't have it
		-- error(
		-- 	Error.new(
		-- 		("Asymmetric matcher %s does not implement toAsymmetricMatcher()"):format(
		-- 			tostring(val.constructor.name)
		-- 		)
		-- 	)
		-- )
		error("Asymmetric matcher does not implement toAsymmetricMatcher()")
		-- ROBLOX deviation END
	end

	return val:toAsymmetricMatcher()
end

local function test(val: any): boolean
	return typeof(val) == "table" and val ~= nil and val["$$typeof"] == asymmetricMatcher
end

return {
	serialize = serialize,
	test = test,
}
