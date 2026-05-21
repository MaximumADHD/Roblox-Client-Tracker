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

local function includes(str: string, substring: string, position: (string | number)?): boolean
	local strLen, invalidBytePosition = utf8.len(str)
	assert(strLen ~= nil, ("string `%s` has an invalid byte at position %s"):format(str, tostring(invalidBytePosition)))
	if strLen == 0 then
		return false
	end

	if #substring == 0 then
		return true
	end

	local startIndex = 1
	if position ~= nil then
		startIndex = tonumber(position) or 1
		if startIndex > strLen then
			return false
		end
	end

	if startIndex < 1 then
		startIndex = 1
	end

	local init = utf8.offset(str, startIndex)
	local value = substring:gsub(luaPatternCharacters, "%%%1")
	local iStart, _ = string.find(str, value, init)
	return iStart ~= nil
end

return includes
