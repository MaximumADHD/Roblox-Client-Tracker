--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/Path.js
local rootWorkspace = script.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>

export type Path = {
	prev: Path?,
	key: string | number,
	typename: string?,
}

local exports = {}

function exports.addPath(prev: Path | nil, key: string | number, typename: string?): Path
	return {
		prev = prev,
		key = key,
		typename = typename,
	}
end

function exports.pathToArray(path: Path?): Array<string | number>
	local flattened = {}
	local curr = path
	while curr do
		table.insert(flattened, curr.key)
		curr = curr.prev
	end
	return Array.reverse(flattened)
end

return exports
