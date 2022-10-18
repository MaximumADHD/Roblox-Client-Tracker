--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/printPathArray.js
local rootWorkspace = script.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>

--[[
 * Build a string describing the path.
 ]]
local function printPathArray(path: Array<string | number>): string
	local keys = {}
	for i = 1, #path do
		local key = path[i]
		keys[i] = typeof(key) == "number" and "[" .. tostring(key) .. "]" or "." .. key
	end
	return table.concat(keys, "")
end

return {
	printPathArray = printPathArray,
}
