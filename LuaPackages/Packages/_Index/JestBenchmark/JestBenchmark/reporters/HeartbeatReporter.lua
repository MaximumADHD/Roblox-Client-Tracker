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

local reporterModule = require(script.Parent.Reporter)
type Reporter<T> = reporterModule.Reporter<T>
type CollectorFn<T> = reporterModule.CollectorFn<T>
local initializeReporter = reporterModule.initializeReporter
local heartbeat = require(script.Parent.Parent.heartbeatModule)

local function initializeHeartbeatReporter(metricName: string, collectorFn: CollectorFn<number>): Reporter<number>
	local reporter = initializeReporter(metricName, collectorFn)
	local hasStarted = false
	local heartbeatConnection = nil
	local activeSections = 0

	local function start(sectionName: string)
		reporter.start(sectionName)
		activeSections += 1
		if not hasStarted then
			hasStarted = true
			heartbeatConnection = heartbeat:Connect(function(deltaTime)
				if activeSections > 0 then
					reporter.report(deltaTime)
				end
			end)
		end
	end

	local function stop()
		activeSections -= 1
		reporter.stop()
	end

	local function finish()
		if heartbeatConnection then
			heartbeatConnection:Disconnect()
		end
		return reporter.finish()
	end

	return {
		start = start,
		stop = stop,
		finish = finish,
		-- Reporting is handled internally
		report = function(_)
			error(`Attempted to call {metricName}Reporter.report. This reporter handles reporting internally.`)
		end,
	}
end
exports.initializeHeartbeatReporter = initializeHeartbeatReporter

return exports
