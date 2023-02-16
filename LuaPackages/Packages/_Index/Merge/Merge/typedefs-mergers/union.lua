-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/union.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type
-- local UnionTypeDefinitionNode = graphqlModule.UnionTypeDefinitionNode
-- local UnionTypeExtensionNode = graphqlModule.UnionTypeExtensionNode
type UnionTypeDefinitionNode = graphqlModule.UnionTypeDefinitionNode
type UnionTypeExtensionNode = graphqlModule.UnionTypeExtensionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local mergeDirectives = require(script.Parent["directives.js"]).mergeDirectives
-- local mergeNamedTypeArray = require(script.Parent["merge-named-type-array.js"]).mergeNamedTypeArray
local mergeDirectives = require(script.Parent.directives).mergeDirectives
local mergeNamedTypeArray = require(script.Parent["merge-named-type-array"]).mergeNamedTypeArray
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["merge-typedefs.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
local function mergeUnion(
	first: UnionTypeDefinitionNode | UnionTypeExtensionNode,
	second: UnionTypeDefinitionNode | UnionTypeExtensionNode,
	config: Config?
): UnionTypeDefinitionNode | UnionTypeExtensionNode
	-- ROBLOX deviation START: requires assertion
	-- if Boolean.toJSBoolean(second) then
	if second then
		-- ROBLOX deviation END
		return {
			name = first.name,
			-- ROBLOX deviation START: cast
			-- description = Boolean.toJSBoolean(first["description"]) and first["description"]
			-- 	or second["description"],
			description = if Boolean.toJSBoolean((first :: any).description)
				then (first :: any).description
				else (second :: any).description,
			-- ROBLOX deviation END
			-- ConstXNode has been introduced in v16 but it is not compatible with XNode so we do `as any` for backwards compatibility
			directives = mergeDirectives(first.directives, second.directives, config) :: any,
			-- ROBLOX deviation START: assert config, fix shadowed variable
			-- kind = if Boolean.toJSBoolean((function()
			-- 	local ref = if typeof(config) == "table" then config.convertExtensions else nil
			-- 	local ref = Boolean.toJSBoolean(ref) and ref
			-- 		or first.kind == "UnionTypeDefinition"
			-- 	return Boolean.toJSBoolean(ref) and ref or second.kind == "UnionTypeDefinition"
			-- end)())
			kind = if (config and Boolean.toJSBoolean(config.convertExtensions))
					or first.kind == "UnionTypeDefinition"
					or second.kind == "UnionTypeDefinition"
				-- ROBLOX deviation END
				then Kind.UNION_TYPE_DEFINITION
				else Kind.UNION_TYPE_EXTENSION,
			loc = first.loc,
			types = mergeNamedTypeArray(first.types, second.types, config),
			-- ROBLOX deviation START: explicit cast
			-- }
		} :: any
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: assert config
	-- if typeof(config) == "table" then config.convertExtensions else nil
	return if config and Boolean.toJSBoolean(config.convertExtensions)
		-- ROBLOX deviation END
		then Object.assign({}, first, { kind = Kind.UNION_TYPE_DEFINITION })
		else first
end
exports.mergeUnion = mergeUnion
return exports
