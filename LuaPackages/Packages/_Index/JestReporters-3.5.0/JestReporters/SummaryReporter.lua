-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-reporters/src/SummaryReporter.ts
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
local Set = LuauPolyfill.Set
type Set<T> = LuauPolyfill.Set<T>

local exports = {}

local chalk = require(Packages.ChalkLua)

local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type SnapshotSummary = testResultModule.SnapshotSummary

local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig
type Config_Path = jestTypesModule.Config_Path

local BaseReporter = require(CurrentModule.BaseReporter).default
local getResultHeader = require(CurrentModule.getResultHeader).default
local getSnapshotSummary = require(CurrentModule.getSnapshotSummary).default
local typesModule = require(CurrentModule.types)
type Context = typesModule.Context
type ReporterOnStartOptions = typesModule.ReporterOnStartOptions

local getSummary = require(CurrentModule.utils).getSummary

local TEST_SUMMARY_THRESHOLD = 20
local NPM_EVENTS = Set.new({
	"prepublish",
	"publish",
	"postpublish",
	"preinstall",
	"install",
	"postinstall",
	"preuninstall",
	"uninstall",
	"postuninstall",
	"preversion",
	"version",
	"postversion",
	"pretest",
	"test",
	"posttest",
	"prestop",
	"stop",
	"poststop",
	"prestart",
	"start",
	"poststart",
	"prerestart",
	"restart",
	"postrestart",
})

-- ROBLOX DEVIATION: These are assigned in the constructor for testing
local npm_config_user_agent, npm_lifecycle_event, npm_lifecycle_script

export type SummaryReporter = {
	onRunStart: (self: SummaryReporter, aggregatedResults: AggregatedResult, options: ReporterOnStartOptions) -> (),
	onRunComplete: (self: SummaryReporter, contexts: Set<Context>, aggregatedResults: AggregatedResult) -> (),
}

type SummaryReporterPrivate = SummaryReporter & {
	_globalConfig: Config_GlobalConfig,
	_estimatedTime: number,
}

local SummaryReporter = setmetatable({}, { __index = BaseReporter }) :: any

SummaryReporter.__index = SummaryReporter
SummaryReporter.filename = "SummaryReporter"

function SummaryReporter.new(globalConfig: Config_GlobalConfig, _process: any?): SummaryReporter
	local self = setmetatable((BaseReporter.new(_process) :: any) :: SummaryReporterPrivate, SummaryReporter)

	-- ROBLOX deviation START: _process can be nil
	if _process then
		npm_lifecycle_script = _process.env.npm_lifecycle_script
		npm_lifecycle_event = _process.env.npm_lifecycle_event
		npm_config_user_agent = _process.env.npm_config_user_agent
	end
	-- ROBLOX deviation END
	self._globalConfig = globalConfig
	self._estimatedTime = 0

	return (self :: any) :: SummaryReporter
end

-- If we write more than one character at a time it is possible that
-- Node.js exits in the middle of printing the result. This was first observed
-- in Node.js 0.10 and still persists in Node.js 6.7+.
-- Let's print the test failure summary character by character which is safer
-- when hundreds of tests are failing.
function SummaryReporter:_write(string_: string)
	-- ROBLOX deviation START: print whole string at once
	self._process.stderr:write(string_)
	-- local i = 1
	-- local strLen = utf8.len(string_)
	-- assert(strLen ~= nil)
	-- while i < strLen do
	-- 	self._process.stderr:write(String.charCodeAt(string_, i))
	-- 	i += 1
	-- end
	-- ROBLOX deviation END
end

function SummaryReporter:onRunStart(aggregatedResults: AggregatedResult, options: ReporterOnStartOptions)
	BaseReporter.onRunStart(self, aggregatedResults, options)
	self._estimatedTime = options.estimatedTime
end

function SummaryReporter:onRunComplete(contexts: Set<Context>, aggregatedResults: AggregatedResult)
	local numTotalTestSuites, testResults, wasInterrupted =
		aggregatedResults.numTotalTestSuites, aggregatedResults.testResults, aggregatedResults.wasInterrupted
	if Boolean.toJSBoolean(numTotalTestSuites) then
		local lastResult = testResults[#testResults]
		-- Print a newline if the last test did not fail to line up newlines
		-- similar to when an error would have been thrown in the test.
		if
			Boolean.toJSBoolean(self._globalConfig.verbose)
			and Boolean.toJSBoolean(lastResult)
			and not Boolean.toJSBoolean(lastResult.numFailingTests)
			and not Boolean.toJSBoolean(lastResult.testExecError)
		then
			self:log("")
		end
		self:_printSummary(aggregatedResults, self._globalConfig)
		self:_printSnapshotSummary(aggregatedResults.snapshot, self._globalConfig)
		if Boolean.toJSBoolean(numTotalTestSuites) then
			local message = getSummary(aggregatedResults, { estimatedTime = self._estimatedTime })
			if not Boolean.toJSBoolean(self._globalConfig.silent) then
				message ..= "\n" .. if Boolean.toJSBoolean(wasInterrupted)
					then chalk.bold(chalk.red("Test run was interrupted."))
					else self:_getTestSummary(contexts, self._globalConfig)
			end
			self:log(message)
		end
	end
end

function SummaryReporter:_printSnapshotSummary(snapshots: SnapshotSummary, globalConfig: Config_GlobalConfig)
	if
		Boolean.toJSBoolean(snapshots.added)
		or Boolean.toJSBoolean(snapshots.filesRemoved)
		or Boolean.toJSBoolean(snapshots.unchecked)
		or Boolean.toJSBoolean(snapshots.unmatched)
		or Boolean.toJSBoolean(snapshots.updated)
	then
		local updateCommand
		local event = Boolean.toJSBoolean(npm_lifecycle_event) and npm_lifecycle_event or ""
		local prefix = Boolean.toJSBoolean(NPM_EVENTS:has(event)) and "" or "run "
		local isYarn = typeof(npm_config_user_agent) == "string"
			and string.match(npm_config_user_agent or "", "yarn") ~= nil
		local client = if Boolean.toJSBoolean(isYarn) then "yarn" else "npm"
		local scriptUsesJest = typeof(npm_lifecycle_script) == "string"
			and Boolean.toJSBoolean(string.match(npm_lifecycle_script or "", "jest"))
		-- ROBLOX deviation START: not supported
		-- if globalConfig.watch or globalConfig.watchAll then
		-- 	updateCommand = "press `u`"
		-- else
		-- ROBLOX deviation END
		if Boolean.toJSBoolean(event) and scriptUsesJest then
			updateCommand = ("run `%s -u`"):format(client .. " " .. prefix .. event .. (isYarn and "" or " --"))
		else
			updateCommand = "re-run jest with `-u`"
		end
		local snapshotSummary = getSnapshotSummary(snapshots, globalConfig, updateCommand)
		Array.forEach(snapshotSummary, function(summary)
			self:log(summary)
		end)
		self:log("") -- print empty line
	end
end

function SummaryReporter:_printSummary(aggregatedResults: AggregatedResult, globalConfig: Config_GlobalConfig)
	-- If there were any failing tests and there was a large number of tests
	-- executed, re-print the failing results at the end of execution output.
	local failedTests = aggregatedResults.numFailedTests or 0
	local runtimeErrors = aggregatedResults.numRuntimeErrorTestSuites or 0
	if failedTests + runtimeErrors > 0 and aggregatedResults.numTotalTestSuites > TEST_SUMMARY_THRESHOLD then
		self:log(chalk.bold("Summary of all failing tests"))
		Array.forEach(aggregatedResults.testResults, function(testResult)
			local failureMessage = testResult.failureMessage
			if Boolean.toJSBoolean(failureMessage) then
				self:_write(getResultHeader(testResult, globalConfig) .. "\n" .. failureMessage .. "\n")
			end
		end)
		self:log("") -- print empty line
	end
end

function SummaryReporter:_getTestSummary(contexts: Set<Context>, globalConfig: Config_GlobalConfig)
	local function getMatchingTestsInfo()
		-- ROBLOX deviation START: not supported: findRelatedTests
		-- local prefix = Boolean.toJSBoolean(globalConfig.findRelatedTests) and " related to files matching "
		-- 	or " matching "
		local prefix = " matching"
		-- ROBLOX deviation END
		-- ROBLOX deviation START: testPathPatternToRegExp not implemented (and not needed I don't think)
		return chalk.dim(prefix)
		-- ROBLOX deviation END
	end
	local testInfo = ""
	if globalConfig.runTestsByPath then
		testInfo = chalk.dim(" within paths")
		-- ROBLOX deviation START: not supported
		-- elseif Boolean.toJSBoolean(globalConfig.onlyChanged) then
		-- 	testInfo = chalk.dim(" related to changed files")
		-- ROBLOX deviation END
	elseif Boolean.toJSBoolean(globalConfig.testPathPattern) then
		testInfo = getMatchingTestsInfo()
	end
	local nameInfo = ""
	if globalConfig.runTestsByPath then
		nameInfo = " "
			.. Array.join(
				Array.map(globalConfig.nonFlagArgs, function(p)
					return ('"%s"'):format(p)
				end),
				", "
			)
	elseif globalConfig.testNamePattern ~= nil then
		nameInfo = chalk.dim(" with tests matching ") .. ('"%s"'):format(globalConfig.testNamePattern)
	end
	local contextInfo = if contexts.size > 1
		then chalk.dim(" in ") .. tostring(contexts.size) .. chalk.dim(" projects")
		else ""
	return chalk.dim("Ran all test suites") .. testInfo .. nameInfo .. contextInfo .. chalk.dim(".")
end

exports.default = SummaryReporter

return exports
