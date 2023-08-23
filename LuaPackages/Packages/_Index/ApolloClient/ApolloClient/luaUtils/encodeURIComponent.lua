--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
local HttpService = game:GetService("HttpService")

-- ROBLOX TODO: include in LuauPolyfill
local function encodeURIComponent(value: string): string
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
