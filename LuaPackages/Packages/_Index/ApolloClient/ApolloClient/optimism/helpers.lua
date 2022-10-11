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
	if typeof(unsubscribe) == "function" then
		entryOrDep.unsubscribe = nil;
		(unsubscribe :: any)()
	end
end
exports.maybeUnsubscribe = maybeUnsubscribe

return exports
