-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/scalar.ts
local Packages = script.Parent.Parent.Parent--[[ ROBLOX comment: must define Packages module ]]
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local Kind = graphqlModule.Kind
-- ROBLOX deviation START:
-- local ScalarTypeDefinitionNode = graphqlModule.ScalarTypeDefinitionNode
-- local ScalarTypeExtensionNode = graphqlModule.ScalarTypeExtensionNode
type ScalarTypeDefinitionNode = graphqlModule.ScalarTypeDefinitionNode
type ScalarTypeExtensionNode = graphqlModule.ScalarTypeExtensionNode
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
local function mergeScalar(
	node: ScalarTypeDefinitionNode | ScalarTypeExtensionNode,
	existingNode: ScalarTypeDefinitionNode | ScalarTypeExtensionNode,
	config: Config?
): ScalarTypeDefinitionNode | ScalarTypeExtensionNode
	-- ROBLOX deviation START: assert existence
	-- if Boolean.toJSBoolean(existingNode) then
	if existingNode then
		-- ROBLOX deviation END
		return {
			name = node.name,
			-- ROBLOX deviation START: explicit cast, assert config existence, fix shadowed variable
			-- description = Boolean.toJSBoolean(node["description"]) and node["description"]
			-- 	or existingNode["description"],
			-- kind = if Boolean.toJSBoolean((function()
			-- 		local ref = if typeof(config) == "table" then config.convertExtensions else nil
			-- 		local ref = Boolean.toJSBoolean(ref) and ref
			-- 			or node.kind == "ScalarTypeDefinition"
			-- 		return Boolean.toJSBoolean(ref) and ref
			-- 			or existingNode.kind == "ScalarTypeDefinition"
			-- 	end)())
			description = if Boolean.toJSBoolean((node :: any).description)
				then (node :: any).description
				else (existingNode :: any).description,
			kind = if (config and Boolean.toJSBoolean(config.convertExtensions))
					or node.kind == "ScalarTypeDefinition"
					or existingNode.kind == "ScalarTypeDefinition"
				-- ROBLOX deviation END
				then "ScalarTypeDefinition"
				else "ScalarTypeExtension",
			loc = node.loc,
			directives = mergeDirectives(node.directives, existingNode.directives, config),
		} :: any
	end
	-- ROBLOX deviation START: assert existence
	-- return if Boolean.toJSBoolean(
	-- 		if typeof(config) == "table" then config.convertExtensions else nil
	-- 	)
	return if config and Boolean.toJSBoolean(config.convertExtensions)
		-- ROBLOX deviation END
		then Object.assign({}, node, { kind = Kind.SCALAR_TYPE_DEFINITION })
		else node
end
exports.mergeScalar = mergeScalar
return exports
