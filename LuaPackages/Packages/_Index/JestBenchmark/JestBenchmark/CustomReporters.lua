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
local Object = require(Packages.LuauPolyfill).Object

local reporterModule = require(script.Parent.reporters.Reporter)
type Reporter<T = any> = reporterModule.Reporter<T>
type ReporterMap = { [string]: Reporter }

local exports = {}

local customReporters: ReporterMap = {}
exports.customReporters = customReporters

local function useCustomReporters(reporters: ReporterMap)
	Object.assign(exports.customReporters, reporters)
end
exports.useCustomReporters = useCustomReporters

local function useDefaultReporters()
	table.clear(exports.customReporters)
end
exports.useDefaultReporters = useDefaultReporters

return exports
