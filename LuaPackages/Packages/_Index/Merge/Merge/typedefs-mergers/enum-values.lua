-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/enum-values.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Map = LuauPolyfill.Map
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: add unavailable type
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type
-- local EnumValueDefinitionNode = require(Packages.GraphQL).EnumValueDefinitionNode
local graphQLModule = require(Packages.GraphQL)
type EnumValueDefinitionNode = graphQLModule.EnumValueDefinitionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local mergeDirectives = require(script.Parent["directives.js"]).mergeDirectives
local mergeDirectives = require(script.Parent.directives).mergeDirectives
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["merge-typedefs.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local compareNodes = require(Packages["@graphql-tools"].utils).compareNodes
local compareNodes = require(Packages.Utils).compareNodes
-- ROBLOX deviation END
local function mergeEnumValues(
	first: ReadonlyArray<EnumValueDefinitionNode> | nil,
	second: ReadonlyArray<EnumValueDefinitionNode> | nil,
	config: Config?
): Array<EnumValueDefinitionNode>
	if Boolean.toJSBoolean(if typeof(config) == "table" then config.consistentEnumMerge else nil) then
		local reversed: Array<EnumValueDefinitionNode> = {}
		if Boolean.toJSBoolean(first) then
			-- ROBLOX deviation START: fix trying to insert multiple element with table.insert
			-- table.insert(
			-- 	reversed,
			-- 	error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...first ]]
			-- )
			reversed = Array.concat(reversed, first)
			-- ROBLOX deviation END
		end
		first = second
		second = reversed
	end
	local enumValueMap = Map.new()
	-- ROBLOX deviation START: removed toJSBoolean, required to assert is not nil
	-- if Boolean.toJSBoolean(first) then
	if first then
		-- ROBLOX deviation END
		for _, firstValue in first do
			enumValueMap:set(firstValue.name.value, firstValue)
		end
	end
	-- ROBLOX deviation START: remove toJSBoolean, required
	-- if Boolean.toJSBoolean(first) then
	if second then
		-- ROBLOX deviation END
		for _, secondValue in second do
			local enumValue = secondValue.name.value
			if Boolean.toJSBoolean(enumValueMap:has(enumValue)) then
				local firstValue: any = enumValueMap:get(enumValue)
				firstValue.description = Boolean.toJSBoolean(secondValue.description) and secondValue.description
					or firstValue.description
				firstValue.directives = mergeDirectives(secondValue.directives, firstValue.directives)
			else
				enumValueMap:set(enumValue, secondValue)
			end
		end
	end
	-- ROBLOX deviation START: remove array.spread
	-- local result = Array.concat({}, Array.spread(enumValueMap:values()))
	local result = Array.concat({}, enumValueMap:values())
	-- ROBLOX deviation END
	-- ROBLOX deviation START: simplify, need to assert config is not nil
	-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(config) then config.sort else config) then
	if config and Boolean.toJSBoolean(config.sort) then
		-- ROBLOX deviation END
		Array.sort(result, compareNodes)
	end
	return result
end
exports.mergeEnumValues = mergeEnumValues
return exports
