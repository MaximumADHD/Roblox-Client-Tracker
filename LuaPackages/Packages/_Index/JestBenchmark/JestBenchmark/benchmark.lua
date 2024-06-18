--!strict
--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
-- ROBLOX NOTE: no upstream

local Packages = script:FindFirstAncestor("JestBenchmark").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local test = require(script.Parent.testModule)

local profilerModule = require(script.Parent.Profiler)
local initializeProfiler = profilerModule.initializeProfiler
type Profiler = profilerModule.Profiler

local reporterModule = require(script.Parent.reporters.Reporter)
type Reporter<T = any> = reporterModule.Reporter<T>
local sectionTimeReporterModule = require(script.Parent.reporters.SectionTimeReporter)
local initializeSectionTimeReporter = sectionTimeReporterModule.initializeSectionTimeReporter
local fpsReporterModule = require(script.Parent.reporters.FpsReporter)
local initializeFpsReporter = fpsReporterModule.initializeFpsReporter

local MetricLogger = require(script.Parent.MetricLogger)
type metricLoggerFn = MetricLogger.metricLoggerFn

local CustomReporters = require(script.Parent.CustomReporters)

local exports = {}

type ReporterMap = { [string]: Reporter }

local typesModule = require(Packages.JestTypes)
type Circus_TestName = typesModule.Circus_TestName
type BenchFn = (profiler: Profiler, reporters: ReporterMap) -> ()

export type setupBenchFn = () -> { [string]: Reporter }
export type outputFn = (metricName: string, value: any) -> ()

local function wrapBenchFnInProfiler(testName: Circus_TestName, benchFn: BenchFn)
	local sectionTimeReporter = initializeSectionTimeReporter()
	local fpsReporter = initializeFpsReporter()

	return function()
		local combinedReporters = Object.assign({
			SectionTime = sectionTimeReporter,
			FPS = fpsReporter,
		}, CustomReporters.customReporters) :: ReporterMap

		local reporterList = {}

		for _, value in combinedReporters do
			table.insert(reporterList, value)
		end

		local Profiler = initializeProfiler(reporterList, MetricLogger.log, testName)
		Profiler.start("total")
		benchFn(Profiler, combinedReporters)
		Profiler.stop()

		Profiler.finish()
	end
end

local benchmark = setmetatable({}, {
	__call = function(_self: any, testName: Circus_TestName, benchFn: BenchFn, timeout: number?)
		local testFn = wrapBenchFnInProfiler(testName, benchFn)
		return test(testName, testFn, timeout)
	end,
})

benchmark.only = function(testName: Circus_TestName, benchFn: BenchFn, timeout: number?)
	local testFn = wrapBenchFnInProfiler(testName, benchFn)
	return test.only(testName, testFn, timeout)
end

benchmark.skip = function(testName: Circus_TestName, benchFn: BenchFn, timeout: number?)
	local testFn = wrapBenchFnInProfiler(testName, benchFn)
	return test.skip(testName, testFn, timeout)
end

exports.benchmark = benchmark

return exports
