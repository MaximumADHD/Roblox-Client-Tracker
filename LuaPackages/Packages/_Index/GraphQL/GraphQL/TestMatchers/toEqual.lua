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
local deepEqual = require(script.Parent.Parent.luaUtils.deepEqual)

local function toEqual(a: any, b: any)
	local success, innerMessageTemplate = deepEqual(a, b)

	local message
	if not success then
		message = innerMessageTemplate:gsub("{1}", "received"):gsub("{2}", "expected")
	else
		message = ("expected: not %s\nreceived:     %s"):format(tostring(b), tostring(a))
	end

	return {
		pass = success,
		message = message,
	}
end

return toEqual
