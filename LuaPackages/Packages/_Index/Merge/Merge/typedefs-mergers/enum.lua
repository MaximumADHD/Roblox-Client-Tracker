-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/enum.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types
-- local EnumTypeDefinitionNode = graphqlModule.EnumTypeDefinitionNode
-- local EnumTypeExtensionNode = graphqlModule.EnumTypeExtensionNode
type EnumTypeDefinitionNode = graphqlModule.EnumTypeDefinitionNode
type EnumTypeExtensionNode = graphqlModule.EnumTypeExtensionNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: fix imports
-- local mergeDirectives = require(script.Parent["directives.js"]).mergeDirectives
-- local mergeEnumValues = require(script.Parent["enum-values.js"]).mergeEnumValues
local mergeDirectives = require(script.Parent.directives).mergeDirectives
local mergeEnumValues = require(script.Parent["enum-values"]).mergeEnumValues
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["merge-typedefs.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
local function mergeEnum(
	e1: EnumTypeDefinitionNode | EnumTypeExtensionNode,
	e2: EnumTypeDefinitionNode | EnumTypeExtensionNode,
	config: Config?
): EnumTypeDefinitionNode | EnumTypeExtensionNode
	if Boolean.toJSBoolean(e2) then
		return {
			name = e1.name,
			-- ROBLOX deviation START: explicit cast
			-- description = Boolean.toJSBoolean(e1["description"]) and e1["description"]
			-- 	or e2["description"],
			description = if Boolean.toJSBoolean((e1 :: EnumTypeDefinitionNode).description)
				then (e1 :: EnumTypeDefinitionNode).description
				else (e2 :: EnumTypeDefinitionNode).description,
			-- ROBLOX deviation END
			-- ROBLOX deviation START: simplify to assert config is present
			-- kind = if Boolean.toJSBoolean((function()
			-- 	local ref = if typeof(config) == "table" then config.convertExtensions else nil
			-- 	local ref = Boolean.toJSBoolean(ref) and ref or e1.kind == "EnumTypeDefinition"
			-- 	return Boolean.toJSBoolean(ref) and ref or e2.kind == "EnumTypeDefinition"
			-- end)())
			kind = if (config and Boolean.toJSBoolean(config.convertExtensions))
					or e1.kind == "EnumTypeDefinition"
					or e2.kind == "EnumTypeDefinition"
				then "EnumTypeDefinition"
				else "EnumTypeExtension",
			-- ROBLOX deviation END
			loc = e1.loc,
			directives = mergeDirectives(e1.directives, e2.directives, config),
			values = mergeEnumValues(e1.values, e2.values, config),
		} :: any
	end
	-- ROBLOX deviation START: assert config is not nil
	-- return if Boolean.toJSBoolean(
	-- 	if typeof(config) == "table" then config.convertExtensions else nil
	-- )
	return if config and Boolean.toJSBoolean(config.convertExtensions)
		-- ROBLOX deviation END
		then Object.assign({}, e1, { kind = Kind.ENUM_TYPE_DEFINITION })
		else e1
end
exports.mergeEnum = mergeEnum
return exports
