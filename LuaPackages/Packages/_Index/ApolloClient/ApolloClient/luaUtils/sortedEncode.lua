--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
local rootWorkspace = script.Parent.Parent.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local HttpService = game:GetService("HttpService")

function sortedEncode(toEncode: any)
	if not Array.isArray(toEncode) and typeof(toEncode) == "table" then
		local encodedKeyValues = Array.map(Array.sort(Object.keys(toEncode)), function(key)
			return HttpService:JSONEncode(key) .. ":" .. sortedEncode(toEncode[key])
		end)
		return "{" .. Array.join(encodedKeyValues, ",") .. "}"
	end
	return HttpService:JSONEncode(toEncode)
end

return {
	sortedEncode = sortedEncode,
}
