-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/fixSchemaAst.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLSchema = graphqlModule.GraphQLSchema
-- local BuildSchemaOptions = graphqlModule.BuildSchemaOptions
type GraphQLSchema = graphqlModule.GraphQLSchema
type BuildSchemaOptions = graphqlModule.BuildSchemaOptions
-- ROBLOX deviation END
local buildASTSchema = graphqlModule.buildASTSchema
-- ROBLOX deviation START: fix import and import as type
-- local SchemaPrintOptions = require(script.Parent["types.js"]).SchemaPrintOptions
local typesModule = require(script.Parent.types)
type SchemaPrintOptions = typesModule.SchemaPrintOptions
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local getDocumentNodeFromSchema = require(script.Parent["print-schema-with-directives.js"]).getDocumentNodeFromSchema
local getDocumentNodeFromSchema = require(script.Parent["print-schema-with-directives"]).getDocumentNodeFromSchema
-- ROBLOX deviation END
local function buildFixedSchema(schema: GraphQLSchema, options: BuildSchemaOptions & SchemaPrintOptions)
	local document = getDocumentNodeFromSchema(schema)
	return buildASTSchema(document, Object.assign({}, Boolean.toJSBoolean(options) and options or {}))
end
local function fixSchemaAst(schema: GraphQLSchema, options: BuildSchemaOptions & SchemaPrintOptions)
	-- eslint-disable-next-line no-undef-init
	local schemaWithValidAst: GraphQLSchema | nil = nil
	if not Boolean.toJSBoolean(schema.astNode) or not Boolean.toJSBoolean(schema.extensionASTNodes) then
		schemaWithValidAst = buildFixedSchema(schema, options)
	end
	if
		-- ROBLOX deviation START: remove Boolean.toJSBoolean to fix assertion
		-- Boolean.toJSBoolean(
		-- ROBLOX deviation END
		not Boolean.toJSBoolean(schema.astNode)
		-- ROBLOX deviation START: check schemaWithValidAst is not nil
		-- and (if typeof(schemaWithValidAst) == "table" then schemaWithValidAst.astNode else nil)
		and schemaWithValidAst
		and Boolean.toJSBoolean(schemaWithValidAst.astNode)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: remove Boolean.toJSBoolean to fix assertion
		-- )
		-- ROBLOX deviation END
	then
		schema.astNode = schemaWithValidAst.astNode
	end
	if
		-- ROBLOX deviation START: remove Boolean.toJSBoolean to fix assertion
		-- Boolean.toJSBoolean(
		-- ROBLOX deviation END
		not Boolean.toJSBoolean(schema.extensionASTNodes)
		-- ROBLOX deviation START: check schemaWithValidAst is not nil
		-- and (if typeof(schemaWithValidAst) == "table" then schemaWithValidAst.astNode else nil)
		and schemaWithValidAst
		and Boolean.toJSBoolean(schemaWithValidAst.astNode)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: remove Boolean.toJSBoolean to fix assertion
		-- )
		-- ROBLOX deviation END
	then
		schema.extensionASTNodes = schemaWithValidAst.extensionASTNodes
	end
	return schema
end
exports.fixSchemaAst = fixSchemaAst
return exports
