--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX comment: no upstream
-- ROBLOX TODO: replace when added to LuauPolyfill
local exports = {}

local function stringIndexOf(s: string, substring: string)
	local start, _end = string.find(s, substring)

	if start == nil then
		return -1
	else
		return start
	end
end

exports.stringIndexOf = stringIndexOf

return exports
