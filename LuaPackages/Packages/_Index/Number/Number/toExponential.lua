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
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/toExponential
return function(value: string | number, fractionDigits: number?): string | nil
	local num = value
	if typeof(value) == "string" then
		-- ROBLOX FIXME: add parseInt to encapsulate this logic and use it here
		local NaN = 0 / 0
		num = tonumber(value) or NaN -- works because 0 is truthy in Lua
	end
	-- returns nil for invalid input instead of nan to be more lua-native
	if typeof(num) ~= "number" then
		return "nan"
	end

	if fractionDigits ~= nil then
		if typeof(fractionDigits) ~= "number" then
			error("TypeError: fractionDigits must be a number between 0 and 100")
		end
		if fractionDigits < 0 or fractionDigits > 100 then
			error("RangeError: fractionDigits must be between 0 and 100")
		end
	end

	local formatString
	if fractionDigits == nil then
		formatString = "%e"
	else
		formatString = "%." .. tostring(fractionDigits) .. "e"
	end

	local retval = string.format(formatString, num):gsub("%+0", "+"):gsub("%-0", "-"):gsub("0*e", "e")

	return retval
end
