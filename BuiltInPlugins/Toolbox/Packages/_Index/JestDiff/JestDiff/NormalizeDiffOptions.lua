-- upstream: https://github.com/facebook/jest/blob/v27.2.5/packages/jest-diff/src/normalizeDiffOptions.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local Number = require(Packages.LuauPolyfill).Number

local chalk = require(Packages.ChalkLua)

local Types = require(CurrentModule.types)
type DiffOptions = Types.DiffOptions
type DiffOptionsNormalized = Types.DiffOptionsNormalized

local function noColor(s): string
	return s
end

local DIFF_CONTEXT_DEFAULT = 5

local OPTIONS_DEFAULT = {
	aAnnotation = 'Expected',
	aColor = chalk.green,
	aIndicator = '-',
	bAnnotation = 'Received',
	bColor = chalk.red,
	bIndicator = '+',
	changeColor = chalk.inverse,
	changeLineTrailingSpaceColor = noColor,
	commonColor = chalk.dim,
	commonIndicator = ' ',
	commonLineTrailingSpaceColor = noColor,
	contextLines = DIFF_CONTEXT_DEFAULT,
	emptyFirstOrLastLinePlaceholder = '',
	expand = true,
	includeChangeCounts = false,
	omitAnnotationLines = false,
	patchColor = chalk.yellow,
}

-- omitting return type due to CLI-37948
-- (E001) Type 'nil | number' could not be converted to 'number'
local function getContextLines(contextLines: number?)
	if typeof(contextLines) == 'number' and
		Number.isSafeInteger(contextLines) and
		contextLines >= 0
	then
		return contextLines
	end
	return DIFF_CONTEXT_DEFAULT
end

-- // Pure function returns options with all properties.
local function normalizeDiffOptions(
	options: DiffOptions
): DiffOptionsNormalized
	local ret_options = {}
	for key, value in pairs(OPTIONS_DEFAULT) do
		ret_options[key] = value
	end
	if typeof(options) == 'table' then
		for key, value in pairs(options) do
			ret_options[key] = value
		end
		ret_options['contextLines'] = getContextLines(options.contextLines)
	end
	return (ret_options :: DiffOptionsNormalized)
end

return {
	noColor = noColor,
	normalizeDiffOptions = normalizeDiffOptions,
}