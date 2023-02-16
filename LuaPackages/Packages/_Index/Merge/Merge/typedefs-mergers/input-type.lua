-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/input-type.ts
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
-- ROBLOX deviation START: import as type
-- local InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
-- local InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
-- local InputObjectTypeExtensionNode = graphqlModule.InputObjectTypeExtensionNode
type InputObjectTypeDefinitionNode = graphqlModule.InputObjectTypeDefinitionNode
type InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
type InputObjectTypeExtensionNode = graphqlModule.InputObjectTypeExtensionNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: fix imports
-- local mergeFields = require(script.Parent["fields.js"]).mergeFields
-- local mergeDirectives = require(script.Parent["directives.js"]).mergeDirectives
local mergeFields = require(script.Parent.fields).mergeFields
local mergeDirectives = require(script.Parent.directives).mergeDirectives
-- ROBLOX deviation END
local function mergeInputType(
	node: InputObjectTypeDefinitionNode | InputObjectTypeExtensionNode,
	existingNode: InputObjectTypeDefinitionNode | InputObjectTypeExtensionNode,
	config: Config?
): InputObjectTypeDefinitionNode | InputObjectTypeExtensionNode
	if Boolean.toJSBoolean(existingNode) then
		-- ROBLOX deviation START: convert to pcall instead of xpcall
		-- local ok, result, hasReturned = xpcall(function()
		local ok, result = pcall(function()
			-- ROBLOX deviation END
			return {
				name = node.name,
				-- ROBLOX deviation START: explicit cast
				-- description = Boolean.toJSBoolean(node["description"]) and node["description"]
				-- 	or existingNode["description"],
				description = if Boolean.toJSBoolean((node :: any).description)
					then (node :: any).description
					else (existingNode :: any).description,
				-- ROBLOX deviation END
				-- ROBLOX deviation START: fix shadowing of variables
				-- kind = if Boolean.toJSBoolean((function()
				-- 	local ref = if typeof(config) == "table"
				-- 		then config.convertExtensions
				-- 		else nil
				-- 	local ref = Boolean.toJSBoolean(ref) and ref
				-- 		or node.kind == "InputObjectTypeDefinition"
				-- 	return Boolean.toJSBoolean(ref) and ref
				-- 		or existingNode.kind == "InputObjectTypeDefinition"
				-- end)())
				kind = if Boolean.toJSBoolean(config and config.convertExtensions)
						or node.kind == "InputObjectTypeDefinition"
						or existingNode.kind == "InputObjectTypeDefinition"
					-- ROBLOX deviation END
					then "InputObjectTypeDefinition"
					else "InputObjectTypeExtension",
				loc = node.loc,
				fields = mergeFields(node, node.fields, existingNode.fields, config),
				directives = mergeDirectives(node.directives, existingNode.directives, config),
			} :: any
			-- ROBLOX deviation START: using pcall
			-- 		true
			-- 	end, function(e: any)
			-- 		error(
			-- 			Error.new(
			-- 				('Unable to merge GraphQL input type "%s": %s'):format(
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
					('Unable to merge GraphQL input type "%s": %s'):format(
						tostring(node.name.value),
						tostring(result.message)
					)
				)
			)
		end

		return result
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: assert config exists
	-- return if Boolean.toJSBoolean(
	-- 		if typeof(config) == "table" then config.convertExtensions else nil
	-- 	)
	return if config and Boolean.toJSBoolean(config.convertExtensions)
		-- ROBLOX deviation END
		then Object.assign({}, node, { kind = Kind.INPUT_OBJECT_TYPE_DEFINITION })
		else node
end
exports.mergeInputType = mergeInputType
return exports
