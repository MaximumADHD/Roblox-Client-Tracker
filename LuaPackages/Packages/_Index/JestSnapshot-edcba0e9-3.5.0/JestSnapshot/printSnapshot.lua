-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-snapshot/src/printSnapshot.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
local instanceof = LuauPolyfill.instanceof
local String = LuauPolyfill.String

type Array<T> = LuauPolyfill.Array<T>

local chalk = (require(Packages.ChalkLua) :: any) :: Chalk

local getObjectSubset = require(Packages.RobloxShared).expect.getObjectSubset

local JestDiff = require(Packages.JestDiff)
local DIFF_DELETE = JestDiff.DIFF_DELETE
local DIFF_EQUAL = JestDiff.DIFF_EQUAL
local DIFF_INSERT = JestDiff.DIFF_INSERT
type Diff = JestDiff.Diff
type DiffOptionsColor = JestDiff.DiffOptionsColor
local diffLinesUnified = JestDiff.diffLinesUnified
local diffLinesUnified2 = JestDiff.diffLinesUnified2
local diffStringsRaw = JestDiff.diffStringsRaw
local diffStringsUnified = JestDiff.diffStringsUnified

local JestGetType = require(Packages.JestGetType)
local getType = JestGetType.getType
local isPrimitive = JestGetType.isPrimitive

local JestMatcherUtils = require(Packages.JestMatcherUtils)
local BOLD_WEIGHT = JestMatcherUtils.BOLD_WEIGHT
local EXPECTED_COLOR = JestMatcherUtils.EXPECTED_COLOR
local INVERTED_COLOR = JestMatcherUtils.INVERTED_COLOR
type MatcherHintOptions = JestMatcherUtils.MatcherHintOptions
local RECEIVED_COLOR = JestMatcherUtils.RECEIVED_COLOR
local getLabelPrinter = JestMatcherUtils.getLabelPrinter
local matcherHint = JestMatcherUtils.matcherHint

local prettyFormat = require(Packages.PrettyFormat).format

local colors = require(CurrentModule.colors)
local aBackground2 = colors.aBackground2
local aBackground3 = colors.aBackground3
local aForeground2 = colors.aForeground2
local aForeground3 = colors.aForeground3
local bBackground2 = colors.bBackground2
local bBackground3 = colors.bBackground3
local bForeground2 = colors.bForeground2
local bForeground3 = colors.bForeground3

local dedentLines = require(CurrentModule.dedentLines)
local types = require(CurrentModule.types)
type MatchSnapshotConfig = types.MatchSnapshotConfig

local utils = require(CurrentModule.utils)
local deserializeString = utils.deserializeString
local minify = utils.minify
local serialize = utils.serialize

-- ROBLOX deviation: omitted chalk type

-- ROBLOX deviation: omitted Chalk and DiffOptionsColor types
export type Chalk = any

-- ROBLOX FIXME: these *should* return a function, but they don't. we're misaligned on types and implementation here
local function getSnapshotColorForChalkInstance(chalkInstance: Chalk): any --: DiffOptionsColor
	-- return function(_: string): string
	local level = chalkInstance.level

	if level == 3 then
		return chalkInstance.rgb(aForeground3[1], aForeground3[2], aForeground3[3])
			.. chalkInstance.bgRgb(aBackground3[1], aBackground3[2], aBackground3[3])
	end

	if level == 2 then
		return chalkInstance.ansi256(aForeground2) .. chalkInstance.bgAnsi256(aBackground2)
	end

	return chalkInstance.magenta .. chalk.bgYellowBright
	-- end
end

-- ROBLOX FIXME: these *should* return a function, but they don't. we're misaligned on types and implementation here
local function getReceivedColorForChalkInstance(chalkInstance: Chalk): any --: DiffOptionsColor
	-- return function(_: string): string
	local level = chalkInstance.level

	if level == 3 then
		return chalkInstance.rgb(bForeground3[1], bForeground3[2], bForeground3[3])
			.. chalkInstance.bgRgb(bBackground3[1], bBackground3[2], bBackground3[3])
	end

	if level == 2 then
		return chalkInstance.ansi256(bForeground2) .. chalkInstance.bgAnsi256(bBackground2)
	end

	return chalkInstance.cyan .. chalk.bgWhiteBright -- also known as teal
	-- end
end

local aSnapshotColor = getSnapshotColorForChalkInstance(chalk)
local bReceivedColor = getReceivedColorForChalkInstance(chalk)

local function noColor(string_: string)
	return string_
end

local HINT_ARG = "hint"
local SNAPSHOT_ARG = "snapshot"
local PROPERTIES_ARG = "properties"

local function matcherHintFromConfig(matchSnapshotConfig: MatchSnapshotConfig, isUpdatable: boolean): string
	local context = matchSnapshotConfig.context
	local hint = matchSnapshotConfig.hint
	local inlineSnapshot = matchSnapshotConfig.inlineSnapshot
	local matcherName = matchSnapshotConfig.matcherName
	local properties = matchSnapshotConfig.properties

	local options: MatcherHintOptions = {
		isNot = context.isNot,
		promise = context.promise,
	}
	if isUpdatable then
		options.receivedColor = bReceivedColor
	end

	local expectedArgument = ""

	if typeof(properties) == "table" then
		expectedArgument = PROPERTIES_ARG
		if isUpdatable then
			options.expectedColor = noColor
		end

		if typeof(hint) == "string" and #hint ~= 0 then
			options.secondArgument = HINT_ARG
			options.secondArgumentColor = BOLD_WEIGHT
		elseif typeof(inlineSnapshot) == "string" then
			options.secondArgument = SNAPSHOT_ARG
			if isUpdatable then
				options.secondArgumentColor = aSnapshotColor
			else
				options.secondArgumentColor = noColor
			end
		end
	else
		if typeof(hint) == "string" and #hint ~= 0 then
			expectedArgument = HINT_ARG
			options.expectedColor = BOLD_WEIGHT
		elseif typeof(inlineSnapshot) == "string" then
			expectedArgument = SNAPSHOT_ARG
			if isUpdatable then
				options.expectedColor = aSnapshotColor
			end
		end
	end

	return matcherHint(matcherName, nil, expectedArgument, options)
end

-- Given array of diffs, return string:
-- * include common substrings
-- * exclude change substrings which have opposite op
-- * include change substrings which have argument op
--   with change color only if there is a common substring
local function joinDiffs(
	-- ROBLOX deviation: changed Array<Diff> to Array<any>
	diffs: Array<any>,
	op: number,
	hasCommon: boolean
): string
	return Array.reduce(
		diffs,
		-- ROBLOX deviation: Diff changed to any
		function(reduced: string, diff: Diff): string
			local retval = reduced
			if diff[1] == DIFF_EQUAL then
				retval = reduced .. diff[2]
			else
				if diff[1] == op then
					if hasCommon then
						retval = retval .. INVERTED_COLOR(diff[2])
					else
						retval = retval .. diff[2]
					end
				end
			end
			return retval
		end,
		""
	)
end

local function isLineDiffable(received: any): boolean
	local receivedType = getType(received)

	if isPrimitive(received) then
		return typeof(received) == "string"
	end

	-- ROBLOX deviation: type changed from "date" to "DateTime"
	if receivedType == "DateTime" or receivedType == "function" or receivedType == "regexp" then
		return false
	end

	if instanceof(received, Error) then
		return false
	end

	if receivedType == "table" and typeof(received.asymmetricMatch) == "function" then
		return false
	end

	return true
end

local function printExpected(val: any): string
	return EXPECTED_COLOR(minify(val))
end

local function printReceived(val: any): string
	return RECEIVED_COLOR(minify(val))
end

local function printPropertiesAndReceived(
	properties: any,
	received: any,
	expand: boolean -- CLI options: true if `--expand` or false if `--no-expand`
): string
	local aAnnotation = "Expected properties"
	local bAnnotation = "Received value"

	if isLineDiffable(properties) and isLineDiffable(received) then
		return diffLinesUnified(
			serialize(properties):split("\n"),
			serialize(getObjectSubset(received, properties)):split("\n"),
			{
				aAnnotation = aAnnotation,
				aColor = EXPECTED_COLOR,
				bAnnotation = bAnnotation,
				bColor = RECEIVED_COLOR,
				-- ROBLOX FIXME: our types and implementation are seriously misaligned
				changeLineTrailingSpaceColor = chalk.bgYellow :: any,
				commonLineTrailingSpaceColor = chalk.bgYellow :: any,
				emptyFirstOrLastLinePlaceholder = utf8.char(8629), -- U+21B5
				expand = expand,
				includeChangeCounts = true,
			}
		)
	end

	local printLabel = getLabelPrinter(aAnnotation, bAnnotation)
	return printLabel(aAnnotation)
		.. printExpected(properties)
		.. "\n"
		.. printLabel(bAnnotation)
		.. printReceived(received)
end

local MAX_DIFF_STRING_LENGTH = 20000

local function printSnapshotAndReceived(
	a: string, -- snapshot without extra line breaks
	b: string, -- received serialized but without extra line breaks
	received: any,
	expand: boolean -- CLI options: true if `--expand` or false if `--no-expand`
): string
	local aAnnotation = "Snapshot"
	local bAnnotation = "Received"
	local aColor = aSnapshotColor
	local bColor = bReceivedColor
	local options = {
		aAnnotation = aAnnotation,
		aColor = aColor,
		bAnnotation = bAnnotation,
		bColor = bColor,
		-- ROBLOX FIXME: our types and implementation are seriously misaligned
		changeLineTrailingSpaceColor = noColor :: any,
		commonLineTrailingSpaceColor = chalk.bgYellow :: any,
		emptyFirstOrLastLinePlaceholder = utf8.char(8629), -- U+21B5
		expand = expand,
		includeChangeCounts = true,
	}

	if typeof(received) == "string" then
		if #a >= 2 and String.startsWith(a, '"') and String.endsWith(a, '"') and b == prettyFormat(received) then
			-- If snapshot looks like default serialization of a string
			-- and received is string which has default serialization.
			if not a:find("\n") and not b:find("\n") then
				-- If neither string is multiline,
				-- display as labels and quoted strings.
				local aQuoted = a
				local bQuoted = b

				if #a - 2 <= MAX_DIFF_STRING_LENGTH and #b - 2 <= MAX_DIFF_STRING_LENGTH then
					local diffs = diffStringsRaw(string.sub(a, 2, -2), string.sub(b, 2, -2), true)
					local hasCommon = Array.some(diffs, function(diff)
						return diff[1] == DIFF_EQUAL
					end)
					aQuoted = '"' .. joinDiffs(diffs, DIFF_DELETE, hasCommon) .. '"'
					bQuoted = '"' .. joinDiffs(diffs, DIFF_INSERT, hasCommon) .. '"'
				end

				local printLabel = getLabelPrinter(aAnnotation, bAnnotation)
				return printLabel(aAnnotation) .. aColor(aQuoted) .. "\n" .. printLabel(bAnnotation) .. bColor(bQuoted)
			end

			-- Else either string is multiline, so display as unquoted strings.
			a = deserializeString(a) -- hypothetical expected string
			b = received -- not serialized
		end

		-- Else expected had custom serialization or was not a string
		-- or received has custom serialization.
		if #a <= MAX_DIFF_STRING_LENGTH and #b <= MAX_DIFF_STRING_LENGTH then
			return diffStringsUnified(a, b, options)
		else
			return diffLinesUnified(a:split("\n"), b:split("\n"), options)
		end
	end

	if isLineDiffable(received) then
		local aLines2 = a:split("\n")
		local bLines2 = b:split("\n")

		-- Fall through to fix a regression for custom serializers
		-- like jest-snapshot-serializer-raw that ignore the indent option.
		local b0 = serialize(received, 0)
		if b0 ~= b then
			local aLines0 = dedentLines(aLines2)

			if aLines0 ~= nil then
				-- Compare lines without indentation.
				local bLines0 = b0:split("\n")

				return diffLinesUnified2(aLines2, bLines2, aLines0, bLines0, options)
			end
		end

		-- Fall back because:
		-- * props include a multiline string
		-- * text has more than one adjacent line
		-- * markup does not close
		return diffLinesUnified(aLines2, bLines2, options)
	end

	local printLabel = getLabelPrinter(aAnnotation, bAnnotation)
	return printLabel(aAnnotation) .. aColor(a) .. "\n" .. printLabel(bAnnotation) .. bColor(b)
end

return {
	getSnapshotColorForChalkInstance = getSnapshotColorForChalkInstance,
	getReceivedColorForChalkInstance = getReceivedColorForChalkInstance,
	aSnapshotColor = aSnapshotColor,
	bReceivedColor = bReceivedColor,
	noColor = noColor,
	HINT_ARG = HINT_ARG,
	SNAPSHOT_ARG = SNAPSHOT_ARG,
	PROPERTIES_ARG = PROPERTIES_ARG,
	matcherHintFromConfig = matcherHintFromConfig,
	printExpected = printExpected,
	printReceived = printReceived,
	printPropertiesAndReceived = printPropertiesAndReceived,
	printSnapshotAndReceived = printSnapshotAndReceived,
}
