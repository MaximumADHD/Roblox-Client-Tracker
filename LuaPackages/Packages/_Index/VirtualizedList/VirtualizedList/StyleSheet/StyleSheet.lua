-- ROBLOX note: no upstream
-- ROBLOX comment: Partially converted from https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/StyleSheet/StyleSheet.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow
 * @format
 ]]
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type ReadOnly<T> = T
type ReadOnlyArray<T> = Array<T>

local exports = {}
local function compose<T>(style1: T?, style2: T?): T | ReadOnlyArray<T> | nil
	if style1 ~= nil and style2 ~= nil then
		return { style1, style2 } :: ReadOnlyArray<T>
	else
		return if style1 ~= nil then style1 else style2
	end
end
exports.compose = compose

local function create(obj: Object): ReadOnly<Object>
	-- TODO: This should return S as the return type. But first,
	-- we need to codemod all the callsites that are typing this
	-- return value as a number (even though it was opaque).
	if _G.__DEV__ then
		Array.forEach(Object.keys(obj), function(key)
			if obj[key] then
				Object.freeze(obj[key])
			end
		end)
	end
	return obj
end
exports.create = create

return exports
