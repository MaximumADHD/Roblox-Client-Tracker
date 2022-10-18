--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/aa650618426a301e3f0f61ead3adcd755055a627/src/utilities/buildASTSchema.js

local Array = require(script.Parent.Parent.Parent.LuauPolyfill).Array
local devAssertModule = require(script.Parent.Parent.jsutils.devAssert)
local devAssert = devAssertModule.devAssert
local sourceModule = require(script.Parent.Parent.language.source)
type Source = sourceModule.Source
local astModule = require(script.Parent.Parent.language.ast)
type DocumentNode = astModule.DocumentNode
local parserModule = require(script.Parent.Parent.language.parser)
type ParseOptions = parserModule.ParseOptions
local kinds = require(script.Parent.Parent.language.kinds)
local Kind = kinds.Kind
local parse = parserModule.parse

local assertValidSDL = require(script.Parent.Parent.validation.validate).assertValidSDL

local schemaModule = require(script.Parent.Parent.type.schema)
type GraphQLSchemaValidationOptions = schemaModule.GraphQLSchemaValidationOptions
type GraphQLSchema = schemaModule.GraphQLSchema
local GraphQLSchema = schemaModule.GraphQLSchema
local directivesModule = require(script.Parent.Parent.type.directives)
local specifiedDirectives = directivesModule.specifiedDirectives

local extendSchema = require(script.Parent.extendSchema)
local extendSchemaImpl = extendSchema.extendSchemaImpl

export type BuildSchemaOptions = GraphQLSchemaValidationOptions & {

	--[[*
   * Set to true to assume the SDL is valid.
   *
   * Default: false
   ]]
	assumeValidSDL: boolean?,
}

local buildASTSchema = function(
	documentAST: DocumentNode,
	options: BuildSchemaOptions -- ROBLOX TODO: this is nilable upstream, working around Luau narrow issues for now
): GraphQLSchema
	devAssert(
		documentAST ~= nil and documentAST.kind == Kind.DOCUMENT,
		"Must provide valid Document AST."
	)

	if options ~= nil and not (options.assumeValid or options.assumeValidSDL) then
		assertValidSDL(documentAST)
	end

	local emptySchemaConfig = {
		description = nil,
		types = {},
		directives = {},
		extensions = nil,
		extensionASTNodes = {},
		assumeValid = false,
	}
	local config = extendSchemaImpl(emptySchemaConfig, documentAST, options)

	if config.astNode == nil then
		for _, type_ in ipairs(config.types) do
			if type_.name == "Query" then
				-- @ts-expect-error validated in `validateSchema`
				config.query = type_ :: any
			elseif type_.name == "Mutation" then
				-- @ts-expect-error validated in `validateSchema`
				config.mutation = type_ :: any
			elseif type_.name == "Subscription" then
				-- @ts-expect-error validated in `validateSchema`
				config.subscription = type_ :: any
			end
		end
	end

	local directives = config.directives

	for _, stdDirective in ipairs(specifiedDirectives) do
		if
			Array.every(directives, function(directive)
				return directive.name ~= stdDirective.name
			end)
		then
			table.insert(directives, stdDirective)
		end
	end

	return GraphQLSchema.new(config)
end

local function buildSchema(
	source: string | Source,
	options: (BuildSchemaOptions & ParseOptions)?
): GraphQLSchema
	local document = parse(source, {
		noLocation = if options then options.noLocation else nil,
		experimentalFragmentVariables = if options
			then options.experimentalFragmentVariables
			else nil,
	})

	return buildASTSchema(document, {
		assumeValidSDL = if options then options.assumeValidSDL else nil,
		assumeValid = if options then options.assumeValid else nil,
	})
end

return {
	buildASTSchema = buildASTSchema,
	buildSchema = buildSchema,
}
