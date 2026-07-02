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
local Status = newproxy(false)

type TaskStatus = number
export type Interval = { [typeof(Status)]: TaskStatus }

local SCHEDULED = 1
local CANCELLED = 3

return function(delayImpl)
	local function setInterval(callback, intervalTime: number, ...): Interval
		local args = { ... }
		local task = {
			[Status] = SCHEDULED,
		}

		-- delayTime is an optional parameter
		if intervalTime == nil then
			intervalTime = 0
		end

		-- To mimic the JS interface, we're expecting delayTime to be in ms
		local intervalTimeMs = intervalTime / 1000
		local delay_
		delay_ = function()
			delayImpl(intervalTimeMs, function()
				if task[Status] == SCHEDULED then
					callback(unpack(args))
					delay_()
				end
			end)
		end

		delay_()

		return task
	end

	local function clearInterval(task: Interval)
		if task == nil then
			return
		end

		if task[Status] == SCHEDULED then
			task[Status] = CANCELLED
		end
	end

	return {
		setInterval = setInterval,
		clearInterval = clearInterval,
	}
end
