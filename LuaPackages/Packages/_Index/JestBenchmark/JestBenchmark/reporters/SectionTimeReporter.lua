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
local initializeReporter = reporterModule.initializeReporter
type Reporter = reporterModule.Reporter<number>

local function sectionTime(profilerStartTimes: { number })
	if #profilerStartTimes == 0 then
		return 0
	end

	return profilerStartTimes[#profilerStartTimes] - profilerStartTimes[1]
end

local function initializeSectionTimeReporter(): Reporter
	local reporter = initializeReporter("SectionTime", sectionTime)

	local function start(sectionName: string)
		reporter.start(sectionName)
		reporter.report(os.clock())
	end

	local function stop()
		reporter.report(os.clock())
		reporter.stop()
	end

	return {
		start = start,
		stop = stop,
		finish = reporter.finish,
		report = function(_: any)
			error(`Attempted to call SectionTimeReporter.report. This reporter handles reporting internally.`)
		end,
	}
end
exports.initializeSectionTimeReporter = initializeSectionTimeReporter

return exports
