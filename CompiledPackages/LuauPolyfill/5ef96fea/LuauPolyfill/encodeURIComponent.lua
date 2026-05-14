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
-- reference documentation: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent
local HttpService = game:GetService("HttpService")

local root = script.Parent
local Packages = root.Parent

local String = require(Packages.String)
local charCodeAt = String.charCodeAt
local Error = require(script.Parent.Error)

local function encodeURIComponent(value: string): string
	local valueLength = utf8.len(value)
	if valueLength == 0 or valueLength == nil then
		return ""
	end
	-- we don't exhaustively test the whole string for invalid characters like ECMA-262 15.1.3 says
	local check = charCodeAt(value, 1)
	if valueLength == 1 then
		if check == 0xD800 then
			error(Error.new("URI malformed"))
		end
		if check == 0xDFFF then
			error(Error.new("URI malformed"))
		end
	end
	if check >= 0xDC00 and check < 0xDFFF then
		error(Error.new("URI malformed"))
	end
	local encoded = HttpService:UrlEncode(value)
	-- reverting encoded chars which are not encoded by JS
	local result = encoded
		:gsub("%%2D", "-")
		:gsub("%%5F", "_")
		:gsub("%%2E", ".")
		:gsub("%%21", "!")
		:gsub("%%7E", "~")
		:gsub("%%2A", "*")
		:gsub("%%27", "'")
		:gsub("%%28", "(")
		:gsub("%%29", ")")
	return result
end

return encodeURIComponent
