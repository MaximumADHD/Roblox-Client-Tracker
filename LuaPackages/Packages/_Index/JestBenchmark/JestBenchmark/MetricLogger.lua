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
local console = LuauPolyfill.console

export type metricLoggerFn = (metricName: string, value: any) -> ()

local function defaultMetricLogger(metricName: string, value: any)
	console.log(`{metricName}, {value}`)
end

local MetricLogger = {
	log = defaultMetricLogger,
}

MetricLogger.useCustomMetricLogger = function(customMetricLogger: metricLoggerFn)
	MetricLogger.log = customMetricLogger
end

MetricLogger.useDefaultMetricLogger = function()
	MetricLogger.log = defaultMetricLogger
end

return MetricLogger
