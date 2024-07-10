-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-reporters/src/utils.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>

local exports = {}

local path = require(Packages.Path).path
local chalk = require(Packages.ChalkLua)

-- ROBLOX deviation START: not supporting windows path separator
-- local slash = require(Packages.slash)
local slash = function(path_: string): string
	return path_:gsub("\\", "/")
end
-- ROBLOX deviation END

local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type TestCaseResult = testResultModule.TestCaseResult

local jestTypesModule = require(Packages.JestTypes)
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_Path = jestTypesModule.Config_Path

local jestUtilModule = require(Packages.JestUtil)
local formatTime = jestUtilModule.formatTime
local pluralize = jestUtilModule.pluralize

local typesModule = require(CurrentModule.types)
type SummaryOptions = typesModule.SummaryOptions
type Test = typesModule.Test

local relativePath
local renderTime

local PROGRESS_BAR_WIDTH = 40

local function printDisplayName(config: Config_ProjectConfig): string
	local displayName = config.displayName

	-- ROBLOX deviation: Lua Chalk doesn't support chaining. Using nested calls
	local white = function(...)
		return chalk.reset(chalk.inverse(chalk.white(...)))
	end
	if not Boolean.toJSBoolean(displayName) then
		return ""
	end

	local name, color
	if displayName ~= nil then
		name, color = displayName.name, displayName.color
	end
	local chosenColor = function(...)
		if Boolean.toJSBoolean(color) and chalk[color] ~= nil then
			return chalk.reset(chalk.inverse(chalk[color](...)))
		else
			return white(...)
		end
	end

	-- ROBLOX deviation: chalk.supportsColor isn't defined so we'll assume
	-- it supports colors unless it is explicitly set to false
	return if chalk.supportsColor == nil or chalk.supportsColor == true
		then chosenColor((" %s "):format(name))
		else name
end
exports.printDisplayName = printDisplayName

local function trimAndFormatPath(
	pad: number,
	config: Config_ProjectConfig | Config_GlobalConfig,
	testPath: string,
	columns: number
): string
	local maxLength = columns - pad
	local relative = relativePath(config, testPath)
	local basename = relative.basename
	local dirname = relative.dirname

	-- ROBLOX deviation START: assert pathLength is valid
	-- length is ok
	local pathLength = utf8.len(dirname .. path.sep .. basename)
	assert(pathLength ~= nil)
	if pathLength <= maxLength then
		-- ROBLOX deviation END
		return slash(chalk.dim(dirname .. path.sep) .. chalk.bold(basename))
	end

	-- ROBLOX deviation START: assert basenameLength is valid
	-- we can fit trimmed dirname and full basename
	local basenameLength = utf8.len(basename)
	assert(basenameLength)
	if basenameLength + 4 < maxLength then
		local dirnameLength = maxLength - 4 - basenameLength
		dirname = "..."
			.. String.slice(
				dirname,
				(utf8.len(dirname) :: number) - dirnameLength + 1,
				(utf8.len(dirname) :: number) + 1
			)
		return slash(chalk.dim(dirname .. path.sep) .. chalk.bold(basename))
	end

	if basenameLength + 4 == maxLength then
		return slash(chalk.dim("..." .. path.sep) .. chalk.bold(basename))
	end

	-- can't fit dirname, but can fit trimmed basename
	return slash(chalk.bold("..." .. String.slice(basename, basenameLength - maxLength - 4, basenameLength + 1)))
	-- ROBLOX deviation END
end
exports.trimAndFormatPath = trimAndFormatPath

local function formatTestPath(config: Config_GlobalConfig | Config_ProjectConfig, testPath: Config_Path): string
	local ref = relativePath(config, testPath)
	local dirname, basename = ref.dirname, ref.basename
	return slash(chalk.dim(dirname .. path.sep) .. chalk.bold(basename))
end
exports.formatTestPath = formatTestPath

function relativePath(
	config: Config_GlobalConfig | Config_ProjectConfig,
	testPath: string
): { basename: string, dirname: string }
	-- this function can be called with ProjectConfigs or GlobalConfigs. GlobalConfigs
	-- do not have config.cwd, only config.rootDir. Try using config.cwd, fallback
	-- to config.rootDir. (Also, some unit just use config.rootDir, which is ok)
	-- ROBLOX FIXME START
	testPath = testPath
	-- path:relative(
	-- 	Boolean.toJSBoolean((config :: Config_ProjectConfig).cwd) and (config :: Config_ProjectConfig).cwd
	-- 		or config.rootDir,
	-- 	testPath
	-- )
	-- ROBLOX FIXME END
	local dirname = path:dirname(testPath) :: string
	local basename = path:basename(testPath) :: string
	return { basename = basename, dirname = dirname }
end
exports.relativePath = relativePath

local function getValuesCurrentTestCases(currentTestCases: Array<{ test: Test, testCaseResult: TestCaseResult }>?)
	if currentTestCases == nil then
		currentTestCases = {}
	end
	local numFailingTests = 0
	local numPassingTests = 0
	local numPendingTests = 0
	local numTodoTests = 0
	local numTotalTests = 0
	Array.forEach(currentTestCases :: Array<{ test: Test, testCaseResult: TestCaseResult }>, function(testCase)
		local condition_ = testCase.testCaseResult.status
		if condition_ == "failed" then
			numFailingTests = numFailingTests + 1
		elseif condition_ == "passed" then
			numPassingTests = numPassingTests + 1
		elseif condition_ == "skipped" then
			numPendingTests = numPendingTests + 1
		elseif condition_ == "todo" then
			numTodoTests = numTodoTests + 1
		end
		numTotalTests += 1
	end)

	return {
		numFailingTests = numFailingTests,
		numPassingTests = numPassingTests,
		numPendingTests = numPendingTests,
		numTodoTests = numTodoTests,
		numTotalTests = numTotalTests,
	}
end

local function getSummary(aggregatedResults: AggregatedResult, options: SummaryOptions?): string
	local runTime = (DateTime.now().UnixTimestampMillis - aggregatedResults.startTime) / 1000
	if options ~= nil and options.roundTime then
		runTime = math.floor(runTime)
	end

	local valuesForCurrentTestCases =
		getValuesCurrentTestCases(if options ~= nil then options.currentTestCases else nil)

	local estimatedTime = options ~= nil and options.estimatedTime or 0
	local snapshotResults = aggregatedResults.snapshot
	local snapshotsAdded = snapshotResults.added
	local snapshotsFailed = snapshotResults.unmatched
	local snapshotsOutdated = snapshotResults.unchecked
	local snapshotsFilesRemoved = snapshotResults.filesRemoved
	local snapshotsDidUpdate = snapshotResults.didUpdate
	local snapshotsPassed = snapshotResults.matched
	local snapshotsTotal = snapshotResults.total
	local snapshotsUpdated = snapshotResults.updated
	local suitesFailed = aggregatedResults.numFailedTestSuites or 0
	local suitesPassed = aggregatedResults.numPassedTestSuites or 0
	local suitesPending = aggregatedResults.numPendingTestSuites or 0
	local suitesRun = suitesFailed + suitesPassed
	local suitesTotal = aggregatedResults.numTotalTestSuites or 0
	local testsFailed = aggregatedResults.numFailedTests or 0
	local testsPassed = aggregatedResults.numPassedTests or 0
	local testsPending = aggregatedResults.numPendingTests or 0
	local testsTodo = aggregatedResults.numTodoTests or 0
	local testsTotal = aggregatedResults.numTotalTests or 0
	local width = options ~= nil and options.width or 0

	local suites = chalk.bold("Test Suites: ")
		.. (if suitesFailed > 0 then chalk.bold(chalk.red(("%d failed"):format(suitesFailed))) .. ", " else "")
		.. (if suitesPending > 0 then chalk.bold(chalk.yellow(("%d skipped"):format(suitesPending))) .. ", " else "")
		.. (if suitesPassed > 0 then chalk.bold(chalk.green(("%d passed"):format(suitesPassed))) .. ", " else "")
		.. (if suitesRun ~= suitesTotal
			then tostring(suitesRun) .. " of " .. tostring(suitesTotal)
			else tostring(suitesTotal))
		.. " total"

	local updatedTestsFailed = testsFailed + valuesForCurrentTestCases.numFailingTests
	local updatedTestsPending = testsPending + valuesForCurrentTestCases.numPendingTests
	local updatedTestsTodo = testsTodo + valuesForCurrentTestCases.numTodoTests
	local updatedTestsPassed = testsPassed + valuesForCurrentTestCases.numPassingTests
	local updatedTestsTotal = testsTotal + valuesForCurrentTestCases.numTotalTests

	local tests = chalk.bold("Tests:       ")
		.. (if updatedTestsFailed > 0
			then chalk.bold(chalk.red(("%d failed"):format(updatedTestsFailed))) .. ", "
			else "")
		.. (if updatedTestsPending > 0
			then chalk.bold(chalk.yellow(("%d skipped"):format(updatedTestsPending))) .. ", "
			else "")
		.. (if updatedTestsTodo > 0 then chalk.bold(chalk.magenta(("%d todo"):format(updatedTestsTodo))) .. ", " else "")
		.. (if updatedTestsPassed > 0
			then chalk.bold(chalk.green(("%d passed"):format(updatedTestsPassed))) .. ", "
			else "")
		.. ("%d total"):format(updatedTestsTotal)

	local snapshots = chalk.bold("Snapshots:   ")
		.. (if snapshotsFailed > 0 then chalk.bold(chalk.red(("%d failed"):format(snapshotsFailed))) .. ", " else "")
		.. (if Boolean.toJSBoolean(snapshotsOutdated) and not snapshotsDidUpdate
			then chalk.bold(chalk.yellow(("%d obsolete"):format(snapshotsOutdated))) .. ", "
			else "")
		.. (if Boolean.toJSBoolean(snapshotsOutdated) and snapshotsDidUpdate
			then chalk.bold(chalk.green(("%d removed"):format(snapshotsOutdated))) .. ", "
			else "")
		.. (if Boolean.toJSBoolean(snapshotsFilesRemoved) and not snapshotsDidUpdate
			then chalk.bold(chalk.yellow((pluralize("file", snapshotsFilesRemoved)) .. " obsolete")) .. ", "
			else "")
		.. (if Boolean.toJSBoolean(snapshotsFilesRemoved) and snapshotsDidUpdate
			then chalk.bold(chalk.green((pluralize("file", snapshotsFilesRemoved)) .. " removed")) .. ", "
			else "")
		.. (if Boolean.toJSBoolean(snapshotsUpdated)
			then chalk.bold(chalk.green(("%d updated"):format(snapshotsUpdated))) .. ", "
			else "")
		.. (if Boolean.toJSBoolean(snapshotsAdded)
			then chalk.bold(chalk.green(("%d written"):format(snapshotsAdded))) .. ", "
			else "")
		.. (if Boolean.toJSBoolean(snapshotsPassed)
			then chalk.bold(chalk.green(("%d passed"):format(snapshotsPassed))) .. ", "
			else "")
		.. ("%d total"):format(snapshotsTotal)

	local time = renderTime(runTime, estimatedTime, width)
	return Array.join({ suites, tests, snapshots, time }, "\n")
end
exports.getSummary = getSummary

function renderTime(runTime: number, estimatedTime: number, width: number)
	-- If we are more than one second over the estimated time, highlight it.
	local renderedTime = if Boolean.toJSBoolean(estimatedTime) and runTime >= estimatedTime + 1
		then chalk.bold(chalk.yellow(formatTime(runTime, 0)))
		else formatTime(runTime, 0)

	local time = chalk.bold("Time:") .. ("        %s"):format(renderedTime)

	if runTime < estimatedTime then
		time ..= (", estimated %s"):format(formatTime(estimatedTime, 0))
	end

	-- Only show a progress bar if the test run is actually going to take
	-- some time.
	if Boolean.toJSBoolean(estimatedTime > 2 and runTime < estimatedTime and width) then
		local availableWidth = math.min(PROGRESS_BAR_WIDTH, width)
		local length = math.min(math.floor(runTime / estimatedTime * availableWidth), availableWidth)

		if availableWidth >= 2 then
			time ..= "\n" .. chalk.green("\u{2588}"):rep(length) .. tostring(
				chalk.white("\u{2588}"):rep(availableWidth - length)
			)
		end
	end

	return time
end

-- ROBLOX deviation START: We don't need to wrap lines so return the string as-is.
-- word-wrap a string that contains ANSI escape sequences.
-- ANSI escape sequences do not add to the string length.
local function wrapAnsiString(string: string, terminalWidth: number): string
	return string
end
exports.wrapAnsiString = wrapAnsiString
-- ROBLOX deviation END

return exports
