-- ROBLOX upstream: https://github.com/jestjs/jest/blob/v28.0.0/packages/jest-reporters/src/GitHubActionsReporter.ts
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
type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>

local RegExp = require(Packages.RegExp)

local testResultModule = require(Packages.JestTestResult)
type AggregatedResult = testResultModule.AggregatedResult
type TestContext = testResultModule.TestContext
type TestResult = testResultModule.TestResult

local RobloxShared = require(Packages.RobloxShared)
local stripAnsi = RobloxShared.stripAnsi

local exports = {}

local BaseReporter = require(script.Parent.BaseReporter).default

export type GitHubActionsReporter = {
	onRunComplete: (
		self: GitHubActionsReporter,
		_testContexts: Set<TestContext>?,
		aggregatedResults: AggregatedResult?
	) -> (),
}

local lineInStackTrace = RegExp("^.*?:([0-9]+).*$")

local GitHubActionsReporter = setmetatable({}, { __index = BaseReporter }) :: any
GitHubActionsReporter.__index = GitHubActionsReporter
GitHubActionsReporter.filename = "GithubActionsReporter"

function GitHubActionsReporter.new(globalConfig, _process: any?): GitHubActionsReporter
	local self = setmetatable(BaseReporter.new(_process) :: any, GitHubActionsReporter)
	self._globalConfig = globalConfig
	return (self :: any) :: GitHubActionsReporter
end

local function replaceEntities(s: string): string
	local substitutions = {
		{ "%%", "%%25" },
		{ "\r", "%%0D" },
		{ "\n", "%%0A" },
		{ "\t", "    " },
	}

	for _, sub in ipairs(substitutions) do
		s = s:gsub(sub[1], sub[2])
	end

	return s
end

local function getMessages(results: Array<TestResult>?): Array<string>
	if results == nil then
		return {}
	end

	return Array.flatMap(results, function(result)
		local testFilePath = result.testFilePath
		local testResults = result.testResults

		return Array.flatMap(
			Array.filter(testResults, function(r)
				return r.status == "failed"
			end),
			function(r)
				return Array.map(
					Array.map(
						Array.map(
							Array.map(r.failureMessages, function(m)
								return stripAnsi(m)
							end),
							function(m)
								return replaceEntities(m)
							end
						),
						function(m)
							return lineInStackTrace:exec(m)
						end
					),
					function(m)
						if m ~= nil then
							local message, line = m[1], tostring(m[2])
							return ("::error file=%s,line=%s::%s"):format(testFilePath, line, message)
						end
						return ""
					end
				)
			end
		)
	end) :: any
end

function GitHubActionsReporter:onRunComplete(_testContexts: Set<TestContext>?, aggregatedResults: AggregatedResult?)
	local messages = getMessages(if typeof(aggregatedResults) == "table" then aggregatedResults.testResults else nil)
	for _, message in messages do
		self:log(message)
	end
end

exports.default = GitHubActionsReporter

return exports
