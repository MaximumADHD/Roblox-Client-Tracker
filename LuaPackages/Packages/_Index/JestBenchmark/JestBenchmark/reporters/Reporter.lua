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

export type Reporter<T> = {
	start: (sectionName: string) -> (),
	stop: () -> (),
	report: (T | ((T?, number?) -> T)) -> (),
	finish: () -> ({ string }, { T }),
}

export type CollectorFn<T> = ({ T }) -> T

local function initializeReporter<T>(metricName: string, collectorFn: CollectorFn<T>): Reporter<T>
	-- Stacks for tracking section start/end
	local startIdxStack: { number } = {}
	local sectionNameStack: { string } = {}

	-- Lists for tracking section start/stop pairs
	local startIdxs: { number } = {}
	local stopIdxs: { number } = {}
	local sectionNames: { string } = {}

	-- reported Values
	local values: { T } = {}

	-- Reporter State
	local reportCount = 0
	local lastReportTime: number? = nil

	-- Collects a value to be reported
	local function report(valueOrFn: T | ((T?, number?) -> T))
		if #sectionNameStack == 0 then
			error("Began reporting values before calling Reporter.start")
		end

		local currentReportTime = os.clock()
		if type(valueOrFn) == "function" then
			local timeDelta = if lastReportTime then currentReportTime - lastReportTime else nil
			table.insert(values, valueOrFn(values[reportCount], timeDelta))
		else
			table.insert(values, valueOrFn)
		end
		lastReportTime = currentReportTime
		reportCount += 1
	end

	-- Begin reporting values for a section
	local function start(sectionName: string)
		table.insert(startIdxStack, reportCount + 1)
		table.insert(sectionNameStack, sectionName)
	end

	-- Stop recording values for a section
	local function stop()
		local startIdx = table.remove(startIdxStack)
		local sectionName = table.remove(sectionNameStack)
		if not startIdx or not sectionName then
			error("Reporter.stop() called without a corresponding Reporter.start()")
		end

		table.insert(sectionNames, sectionName :: string)
		table.insert(startIdxs, startIdx :: number)
		table.insert(stopIdxs, reportCount)
	end

	local function finish(): ({ string }, { T })
		if #startIdxStack > 0 or #sectionNameStack > 0 then
			error("Reporting finished without closing all Reporter.start() sections with a Reporter.stop() call")
		end

		local mergedSectionNames: { string } = table.create(#sectionNames)
		local collectedValues: { T } = table.create(#startIdxs)
		for i, startIdx in startIdxs do
			local stopIdx = stopIdxs[i]
			local valueSlice = table.create((stopIdx - startIdx) + 1)
			table.move(values, startIdx, stopIdx, 1, valueSlice)
			collectedValues[i] = collectorFn(valueSlice)
			mergedSectionNames[i] = metricName .. "_" .. sectionNames[i]
		end
		return mergedSectionNames, collectedValues
	end

	return {
		start = start,
		stop = stop,
		report = report,
		finish = finish,
	}
end
exports.initializeReporter = initializeReporter

return exports
