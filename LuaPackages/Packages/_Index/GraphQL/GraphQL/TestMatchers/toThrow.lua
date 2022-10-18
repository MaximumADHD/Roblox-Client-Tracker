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
-- FIXME: Replace this with jest-roblox builtins
local function toThrow(fn: () -> any, errorString: string?, isPattern: boolean?)
	local ok, result = pcall(fn)

	if not ok then
		-- Luau isn't able to narrow the type here for some reason if we check
		-- for ~= nil, so we just check that the type is string
		if typeof(errorString) == "string" then
			local resultErrorString = nil
			if typeof(result) == "string" then
				resultErrorString = result
			elseif typeof(result) == "table" and typeof(result.message) == "string" then
				resultErrorString = result.message
			end

			if resultErrorString == nil then
				return {
					pass = false,
					message = string.format(
						"Matcher Error:\n"
							.. "Expected function to throw a string or an Error "
							.. "object, but it threw an error of type '%s'.\nYou "
							.. "may wish to use `pcall` instead and run custom "
							.. "expectations on the returned error",
						typeof(result)
					),
				}
			end
			if resultErrorString:find(errorString, 1, not isPattern) ~= nil then
				return {
					pass = true,
					message = string.format(
						"Expected function not to throw with '%s'",
						errorString
					),
				}
			end

			return {
				pass = false,
				message = string.format(
					"Expected function to throw with\n'%s'\nbut threw\n'%s'\ninstead",
					errorString,
					resultErrorString
				),
			}
		end

		return {
			pass = true,
			message = "Expected function not to throw",
		}
	end

	return {
		pass = false,
		message = "Expected function to throw",
	}
end

return toThrow
