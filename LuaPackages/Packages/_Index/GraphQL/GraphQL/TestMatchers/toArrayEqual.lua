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
local deepContains = require(script.Parent.Parent.luaUtils.deepContains)

local function toArrayEqual(arrA, arrB, looseEquals)
	local sameLength = #arrA == #arrB
	if not sameLength then
		return {
			pass = false,
			message = ("Expected array length %s / got length %s"):format(
				tostring(#arrA),
				tostring(#arrB)
			),
		}
	end

	for i = 1, #arrA do
		local success, innerMessage
		if looseEquals then
			success, innerMessage = deepContains(arrA[i], arrB[i])
			if success then
				continue
			end
		else
			success, innerMessage = deepEqual(arrA[i], arrB[i])
			if success then
				continue
			end
		end

		local message = innerMessage
			:gsub("{1}", ("{1}[%s]"):format(tostring(i)))
			:gsub("{2}", ("{2}[%s]"):format(tostring(i)))

		return {
			pass = false,
			message = message,
		}
	end

	return {
		pass = true,
		message = "",
	}
end

return toArrayEqual
