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
local function lastIndexOf(str: string, searchValue: string, fromIndex: number?): number
	local strLength = string.len(str)
	local calculatedFromIndex
	if fromIndex then
		calculatedFromIndex = fromIndex
	else
		calculatedFromIndex = strLength
	end
	if fromIndex and fromIndex < 1 then
		calculatedFromIndex = 1
	end
	if fromIndex and fromIndex > strLength then
		calculatedFromIndex = strLength
	end
	if searchValue == "" then
		-- FIXME: Luau DFA doesn't understand that
		return calculatedFromIndex :: number
	end

	local lastFoundStartIndex, foundStartIndex
	-- Luau FIXME: Luau doesn't look beyond assignment for type, it should infer number? from loop bound
	local foundEndIndex: number? = 0
	repeat
		lastFoundStartIndex = foundStartIndex
		-- Luau FIXME: DFA doesn't understand until clause means foundEndIndex is never nil within loop
		foundStartIndex, foundEndIndex = string.find(str, searchValue, foundEndIndex :: number + 1, true)
	until foundStartIndex == nil or foundStartIndex > calculatedFromIndex

	if lastFoundStartIndex == nil then
		return -1
	end
	-- Luau FIXME: Luau should see the predicate above and known the line below can only be a number
	return lastFoundStartIndex :: number
end

return lastIndexOf
