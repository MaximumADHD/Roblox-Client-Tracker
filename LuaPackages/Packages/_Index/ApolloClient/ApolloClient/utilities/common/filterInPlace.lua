--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/3161e31538c33f3aafb18f955fbee0e6e7a0b0c0/src/utilities/common/filterInPlace.ts

local rootWorkspace = script.Parent.Parent.Parent.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>

--[[
  ROBLOX deviation: no generic params for functions are supported.
  T_, is placeholder for generic T param
]]
type T_ = any

local exports = {}

local function filterInPlace(array: Array<T_>, test: (T_, _: number?, this: any?) -> boolean, context: any?): Array<T_>
	local target = 1
	Array.forEach(array, function(elem, i)
		if test(elem, i, array) then
			array[target] = elem
			target += 1
		end
	end, context)
	-- ROBLOX deviation: making the array shorter by setting the value after the last unfiltered value to nil
	array[target] = nil
	return array
end
exports.filterInPlace = filterInPlace

return exports
