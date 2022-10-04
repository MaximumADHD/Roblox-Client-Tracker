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
--!strict
local Packages = script.Parent

local Object = require(Packages.Collections).Object

local makeTimerImpl = require(script.makeTimerImpl)
local makeIntervalImpl = require(script.makeIntervalImpl)

export type Timeout = makeTimerImpl.Timeout
export type Interval = makeIntervalImpl.Interval

return Object.assign({}, makeTimerImpl(task.delay), makeIntervalImpl(task.delay))
