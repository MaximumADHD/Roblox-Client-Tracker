-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/merge-named-type-array.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: add additional types
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type
-- local NamedTypeNode = require(Packages.GraphQL).NamedTypeNode
local graphQLModule = require(Packages.GraphQL)
type NamedTypeNode = graphQLModule.NamedTypeNode
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["index.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local compareNodes = require(Packages["@graphql-tools"].utils).compareNodes
local compareNodes = require(Packages.Utils).compareNodes
-- ROBLOX deviation END
local function alreadyExists(arr: ReadonlyArray<NamedTypeNode>, other: NamedTypeNode): boolean
	return not not Boolean.toJSBoolean(Array.find(arr, function(i)
		return i.name.value == other.name.value
	end) --[[ ROBLOX CHECK: check if 'arr' is an Array ]])
end
local function mergeNamedTypeArray(
	first_: ReadonlyArray<NamedTypeNode>?,
	second_: ReadonlyArray<NamedTypeNode>?,
	config_: Config?
): Array<NamedTypeNode>
	local first: ReadonlyArray<NamedTypeNode> = if first_ ~= nil then first_ else {}
	local second: ReadonlyArray<NamedTypeNode> = if second_ ~= nil then second_ else {}
	local config: Config = if config_ ~= nil then config_ else {}
	local result = Array.concat(
		{},
		-- ROBLOX deviation START: remove array spread
		-- Array.spread(second),
		-- Array.spread(Array.filter(first, function(d)
		second,
		Array.filter(first, function(d)
			-- ROBLOX deviation END
			return not Boolean.toJSBoolean(alreadyExists(second, d))
		end) --[[ ROBLOX CHECK: check if 'first' is an Array ]]
	)
	-- ROBLOX deviation START: assert config is truthy
	-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(config) then config.sort else config) then
	if config and Boolean.toJSBoolean(config.sort) then
		-- ROBLOX deviation END
		Array.sort(result, compareNodes) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
	end
	return result
end
exports.mergeNamedTypeArray = mergeNamedTypeArray
return exports
