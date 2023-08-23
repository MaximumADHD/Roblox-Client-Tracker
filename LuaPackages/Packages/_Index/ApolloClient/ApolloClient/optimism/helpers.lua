--[[
 * Copyright (c) 2016 Ben Newman
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/benjamn/optimism/blob/v0.16.1/src/helpers.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)

type Set<T> = LuauPolyfill.Set<T>
type Array<T> = LuauPolyfill.Array<T>

local helpersTypesModule = require(script.Parent.helpers_types)

local exports = {}
exports.hasOwnProperty = require(srcWorkspace.luaUtils.hasOwnProperty)

-- ROBLOX TODO: upstream was doing type erasure! contribute annotation this improvement upstream
local function toArray<T>(collection: Set<T>): Array<T>
	-- ROBLOX deviation START: try to reach into Set internals to optimize toArray
	if (collection :: any)._array then
		return table.clone((collection :: any)._array)
	end
	-- ROBLOX deviation END

	local array: Array<T> = {}
	collection:forEach(function(item)
		table.insert(array, item)
	end)
	return array
end

exports.toArray = toArray

export type Unsubscribable = helpersTypesModule.Unsubscribable

local function maybeUnsubscribe(entryOrDep: Unsubscribable)
	local unsubscribe = entryOrDep.unsubscribe
	-- ROBLOX deviation START: use type instead of typeof
	if type(unsubscribe) == "function" then
		-- ROBLOX deviation END
		entryOrDep.unsubscribe = nil;
		(unsubscribe :: any)()
	end
end
exports.maybeUnsubscribe = maybeUnsubscribe

return exports
