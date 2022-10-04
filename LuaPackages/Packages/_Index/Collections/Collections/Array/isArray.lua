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
return function(value: any): boolean
	if typeof(value) ~= "table" then
		return false
	end
	if next(value) == nil then
		-- an empty table is an empty array
		return true
	end

	local length = #value

	if length == 0 then
		return false
	end

	local count = 0
	local sum = 0
	for key in pairs(value) do
		if typeof(key) ~= "number" then
			return false
		end
		if key % 1 ~= 0 or key < 1 then
			return false
		end
		count += 1
		sum += key
	end

	return sum == (count * (count + 1) / 2)
end
