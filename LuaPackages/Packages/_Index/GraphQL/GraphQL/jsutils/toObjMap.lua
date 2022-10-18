--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/toObjMap.js
local ObjMapModule = require(script.Parent.ObjMap)
type ReadOnlyObjMap<T> = ObjMapModule.ReadOnlyObjMap<T>
type ReadOnlyObjMapLike<T> = ObjMapModule.ReadOnlyObjMapLike<T>

local function toObjMap<T>(obj: ReadOnlyObjMapLike<T>): ReadOnlyObjMap<T>
	local map = {}
	-- ROBLOX FIXME Luau: luau doesn't narrow obj to non-nil based on return above
	for key, value in pairs(obj :: ReadOnlyObjMap<T>) do
		map[key] = value
	end

	return map
end

return {
	toObjMap = toObjMap,
}
