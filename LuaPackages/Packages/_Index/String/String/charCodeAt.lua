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
local String = script.Parent
local Packages = String.Parent
local Number = require(Packages.Number)

local NaN = Number.NaN

-- js  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt
-- lua http://www.lua.org/manual/5.4/manual.html#pdf-utf8.codepoint
return function(str: string, index: number): number
	if typeof(index) ~= "number" then
		index = 1
	end

	local strLen, invalidBytePosition = utf8.len(str)
	assert(strLen ~= nil, ("string `%s` has an invalid byte at position %s"):format(str, tostring(invalidBytePosition)))
	if index > strLen or index < 1 then
		return NaN
	end

	local offset = utf8.offset(str, index)
	local value = utf8.codepoint(str, offset, offset)

	if value == nil then
		return NaN
	end

	return value
end
