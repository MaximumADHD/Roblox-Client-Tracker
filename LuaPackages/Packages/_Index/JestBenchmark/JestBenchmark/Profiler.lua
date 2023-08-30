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

local exports = {}

local reporterModule = require(script.Parent.reporters.Reporter)
type Reporter<T = any> = reporterModule.Reporter<T>

local metricLoggerModule = require(script.Parent.MetricLogger)
type metricLoggerFn = metricLoggerModule.metricLoggerFn

export type Profiler = {
	start: (profileSectionName: string) -> (),
	stop: () -> (),
	finish: () -> (),
}

local function initializeProfiler(reporters: { Reporter }, outputFn: metricLoggerFn, prefix: string?): Profiler
	if #reporters == 0 then
		error("Profiler must be initialized with at least one Reporter")
	end

	local stackSize = 0

	local function start(profileSectionName: string)
		for _, reporter in reporters do
			reporter.start(profileSectionName)
		end
		stackSize += 1
	end

	-- Generate data.
	local function stop()
		if stackSize == 0 then
			error("Profiler.stop() called without a corresponding Profiler.start()")
		end

		for _, reporter in reporters do
			reporter.stop()
		end
		stackSize -= 1
	end

	-- Printing to output can impact performance, so print after test finishes.
	local function finish()
		if stackSize > 0 then
			error("Profiling finished without closing all Profiler.start() sections with a Profiler.stop() call")
		end

		for _, reporter in reporters do
			local sectionNames, collectedValues = reporter.finish()
			for j, value in collectedValues do
				local sectionName = if prefix then `{prefix}_{sectionNames[j]}` else sectionNames[j]
				outputFn(sectionName, value)
			end
		end
	end

	return {
		start = start,
		stop = stop,
		finish = finish,
	}
end

exports.initializeProfiler = initializeProfiler

return exports
