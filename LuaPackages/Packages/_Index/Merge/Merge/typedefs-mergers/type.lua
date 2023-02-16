-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/type.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local exports = {}
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["merge-typedefs.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type
-- local ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
-- local ObjectTypeExtensionNode = graphqlModule.ObjectTypeExtensionNode
type ObjectTypeDefinitionNode = graphqlModule.ObjectTypeDefinitionNode
type ObjectTypeExtensionNode = graphqlModule.ObjectTypeExtensionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix imports
-- local mergeFields = require(script.Parent["fields.js"]).mergeFields
-- local mergeDirectives = require(script.Parent["directives.js"]).mergeDirectives
-- local mergeNamedTypeArray = require(script.Parent["merge-named-type-array.js"]).mergeNamedTypeArray
local mergeFields = require(script.Parent.fields).mergeFields
local mergeDirectives = require(script.Parent.directives).mergeDirectives
local mergeNamedTypeArray = require(script.Parent["merge-named-type-array"]).mergeNamedTypeArray
-- ROBLOX deviation END
local function mergeType(
	node: ObjectTypeDefinitionNode | ObjectTypeExtensionNode,
	existingNode: ObjectTypeDefinitionNode | ObjectTypeExtensionNode,
	config: Config?
): ObjectTypeDefinitionNode | ObjectTypeExtensionNode
	-- ROBLOX deviation START: assert existingNode
	-- if Boolean.toJSBoolean(existingNode) then
	if existingNode then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use pcall instead
		-- do --[[ ROBLOX COMMENT: try-catch block conversion ]]
		-- 	local ok, result, hasReturned = xpcall(function()
		local ok, result = pcall(function()
			return {
				name = node.name,
				-- ROBLOX deviation START: explicit cast and fix shadowed variables
				-- description = Boolean.toJSBoolean(node["description"]) and node["description"]
				-- 		or existingNode["description"],
				-- 	kind = if Boolean.toJSBoolean((function()
				-- 			local ref = if typeof(config) == "table"
				-- 				then config.convertExtensions
				-- 				else nil
				-- 			local ref = Boolean.toJSBoolean(ref) and ref
				-- 				or node.kind == "ObjectTypeDefinition"
				-- 			return Boolean.toJSBoolean(ref) and ref
				-- 				or existingNode.kind == "ObjectTypeDefinition"
				-- 		end)())
				description = if Boolean.toJSBoolean((node :: any).description)
					then (node :: any).description
					else (existingNode :: any).description,
				kind = if (config and Boolean.toJSBoolean(config.convertExtensions))
						or node.kind == "ObjectTypeDefinition"
						or existingNode.kind == "ObjectTypeDefinition"
					-- ROBLOX deviation END
					then "ObjectTypeDefinition"
					else "ObjectTypeExtension",
				loc = node.loc,
				fields = mergeFields(node, node.fields, existingNode.fields, config),
				directives = mergeDirectives(node.directives, existingNode.directives, config),
				interfaces = mergeNamedTypeArray(node.interfaces, existingNode.interfaces, config),
			} :: any
			-- ROBLOX deviation START: use pcall instead
			-- 	true
			-- 	end, function(e: any)
			-- 		error(
			-- 			Error.new(
			-- 				('Unable to merge GraphQL type "%s": %s'):format(
			-- 					tostring(node.name.value),
			-- 					tostring(e.message)
			-- 				)
			-- 			)
			-- 		)
			-- 	end)
			-- 	if hasReturned then
			-- 		return result
			-- 	end
			-- end
		end)

		if not ok then
			error(
				Error.new(
					('Unable to merge GraphQL type "%s": %s'):format(
						tostring(node.name.value),
						tostring(result.message)
					)
				)
			)
		end

		return result
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: assert config
	-- return if Boolean.toJSBoolean(
	-- 		if typeof(config) == "table" then config.convertExtensions else nil
	-- 	)
	return if config and Boolean.toJSBoolean(config.convertExtensions)
		-- ROBLOX deviation END
		then Object.assign({}, node, { kind = Kind.OBJECT_TYPE_DEFINITION })
		else node
end
exports.mergeType = mergeType
return exports
