-- ROBLOX upstream: no upstream
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
local circusModule = require(script.circus)

local exports = circusModule

export type Event = circusModule.Event
export type State = circusModule.State

-- ROBLOX deviation: exporting runner alongside the main entry point
local runner = require(script.runner);
(exports :: any).runner = runner

return exports :: typeof(circusModule) & { runner: typeof(runner) }
