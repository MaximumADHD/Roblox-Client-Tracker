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

local initializeHeartbeatReporter = require(script.Parent.HeartbeatReporter).initializeHeartbeatReporter

local function averageFps(deltaTimeList: { number })
	if #deltaTimeList == 0 then
		return math.huge
	end

	local sum = 0
	for _, deltaTime in deltaTimeList do
		sum += deltaTime
	end
	local averageDeltaTime = sum / #deltaTimeList
	return 1 / averageDeltaTime
end

local function initializeFpsReporter()
	return initializeHeartbeatReporter("FPS", averageFps)
end
exports.initializeFpsReporter = initializeFpsReporter

return exports
