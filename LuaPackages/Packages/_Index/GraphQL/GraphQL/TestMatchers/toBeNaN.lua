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
local Number = require(script.Parent.Parent.Parent.LuauPolyfill).Number

local function toBeNaN(a)
	local success = Number.isNaN(a)
	if success then
		return { pass = success }
	end
	return {
		pass = false,
		message = ('expected: NaN (number), got: "%s" (%s) instead'):format(tostring(a), typeof(a)),
	}
end

return toBeNaN
