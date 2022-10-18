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
local srcWorkspace = script.Parent.Parent
local Packages = srcWorkspace.Parent
local inspect = require(Packages.LuauPolyfill).util.inspect
local arrayContains = require(script.Parent.Parent.luaUtils.arrayContains)

local function toHaveSameMembers(arrA, arrB, looseEquals)
	local sameLength = #arrA == #arrB
	if not sameLength then
		return {
			pass = false,
			message = ("Received array length %s / expected length %s"):format(
				tostring(#arrA),
				tostring(#arrB)
			),
		}
	end

	for _, itemB in ipairs(arrB) do
		local foundItem = arrayContains(arrA, itemB, looseEquals)
		if not foundItem then
			return {
				pass = false,
				message = ("Expected item %s to be in Array %s"):format(
					inspect(itemB),
					inspect(arrA)
				),
			}
		end
	end

	return {
		pass = true,
		message = "",
	}
end

return toHaveSameMembers
