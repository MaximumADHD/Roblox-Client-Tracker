-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-diff/src/normalizeDiffOptions.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Number = LuauPolyfill.Number
local Object = LuauPolyfill.Object

local chalk = require(Packages.ChalkLua)
-- ROBLOX TODO: fix PrettyFormat types imports
type CompareKeys = ((a: string, b: string) -> number) | nil

local Types = require(CurrentModule.types)
type DiffOptions = Types.DiffOptions
type DiffOptionsNormalized = Types.DiffOptionsNormalized

local function noColor(s): string
	return s
end

local DIFF_CONTEXT_DEFAULT = 5

local OPTIONS_DEFAULT = {
	aAnnotation = "Expected",
	aColor = chalk.green,
	aIndicator = "-",
	bAnnotation = "Received",
	bColor = chalk.red,
	bIndicator = "+",
	changeColor = chalk.inverse,
	changeLineTrailingSpaceColor = noColor,
	commonColor = chalk.dim,
	commonIndicator = " ",
	commonLineTrailingSpaceColor = noColor,
	-- ROBLOX deviation: using Object.None instead of nil because assigning nil is no different from not assigning value at all
	compareKeys = Object.None,
	contextLines = DIFF_CONTEXT_DEFAULT,
	emptyFirstOrLastLinePlaceholder = "",
	expand = true,
	includeChangeCounts = false,
	omitAnnotationLines = false,
	patchColor = chalk.yellow,
}

local function getCompareKeys(compareKeys: CompareKeys?): CompareKeys
	return if compareKeys and typeof(compareKeys) == "function" then compareKeys else OPTIONS_DEFAULT.compareKeys
end

local function getContextLines(contextLines: number?): number
	if typeof(contextLines) == "number" and Number.isSafeInteger(contextLines) and contextLines >= 0 then
		return contextLines
	end
	return DIFF_CONTEXT_DEFAULT
end

-- Pure function returns options with all properties.
local function normalizeDiffOptions(options_: DiffOptions?): DiffOptionsNormalized
	-- ROBLOX FIXME Luau: needs a normalization fix to avoid Key 'compareKeys' is missing from '{  }' in the type 'DiffOptions | {  }'
	local options = if options_ then options_ else {} :: DiffOptions
	return Object.assign({}, OPTIONS_DEFAULT, options, {
		compareKeys = getCompareKeys(options.compareKeys),
		contextLines = getContextLines(options.contextLines),
	}) :: DiffOptionsNormalized
end

return {
	noColor = noColor,
	normalizeDiffOptions = normalizeDiffOptions,
}
