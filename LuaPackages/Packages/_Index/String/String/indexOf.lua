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

-- excluding the `+` and `*` character, since findOr tests and graphql use them explicitly
local luaPatternCharacters = "([" .. ("$%^()-[].?"):gsub("(.)", "%%%1") .. "])"

-- Implements equivalent functionality to JavaScript's `String.indexOf`,
-- implementing the interface and behaviors defined at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/indexOf
return function(str: string, searchElement: string, fromIndex: number?): number
	local length = #str
	local fromIndex_ = if fromIndex ~= nil then if fromIndex < 1 then 1 else fromIndex :: number else 1

	if #searchElement == 0 then
		return if fromIndex_ > length then length else fromIndex_
	end

	if fromIndex_ > length then
		return -1
	end

	searchElement = searchElement:gsub(luaPatternCharacters, "%%%1")
	local searchElementLength = #searchElement

	for i = fromIndex_, length do
		if string.sub(str, i, i + searchElementLength - 1) == searchElement then
			return i
		end
	end

	return -1
end
