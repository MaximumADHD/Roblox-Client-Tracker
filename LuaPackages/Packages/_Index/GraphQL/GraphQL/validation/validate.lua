--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/validate.js
local validationWorkspace = script.Parent
local root = validationWorkspace.Parent
local PackagesWorkspace = root.Parent

local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>

local devAssert = require(root.jsutils.devAssert).devAssert
local GraphQLErrorModule = require(root.error.GraphQLError)
local GraphQLError = GraphQLErrorModule.GraphQLError
type GraphQLError = GraphQLErrorModule.GraphQLError

local AstModule = require(root.language.ast)
type DocumentNode = AstModule.DocumentNode

local SchemaModule = require(root.type.schema)
type GraphQLSchema = SchemaModule.GraphQLSchema

local visitorExports = require(root.language.visitor)
local visit = visitorExports.visit
local visitInParallel = visitorExports.visitInParallel
local assertValidSchema = require(root.type.validate).assertValidSchema
local TypeInfoExports = require(root.utilities.TypeInfo)
local TypeInfo = TypeInfoExports.TypeInfo
type TypeInfo = TypeInfoExports.TypeInfo
local visitWithTypeInfo = TypeInfoExports.visitWithTypeInfo
local specifiedRulesImport = require(validationWorkspace.specifiedRules)
local specifiedRules = specifiedRulesImport.specifiedRules
local specifiedSDLRules = specifiedRulesImport.specifiedSDLRules
local ValidationContextExports = require(validationWorkspace.ValidationContext)
local SDLValidationContext = ValidationContextExports.SDLValidationContext
local ValidationContext = ValidationContextExports.ValidationContext
type SDLValidationRule = ValidationContextExports.SDLValidationRule
type ValidationRule = ValidationContextExports.ValidationRule

local exports = {}

-- /**
--  * Implements the "Validation" section of the spec.
--  *
--  * Validation runs synchronously, returning an array of encountered errors, or
--  * an empty array if no errors were encountered and the document is valid.
--  *
--  * A list of specific validation rules may be provided. If not provided, the
--  * default list of rules defined by the GraphQL specification will be used.
--  *
--  * Each validation rules is a function which returns a visitor
--  * (see the language/visitor API). Visitor methods are expected to return
--  * GraphQLErrors, or Arrays of GraphQLErrors when invalid.
--  *
--  * Optionally a custom TypeInfo instance may be provided. If not provided, one
--  * will be created from the provided schema.
--  */

exports.validate = function(
	schema: GraphQLSchema,
	documentAST: DocumentNode,
	_rules: Array<ValidationRule>?,
	_options: { maxErrors: number? }?,
	-- @deprecate will be removed in 17.0.0
	_typeInfo: TypeInfo?
): Array<GraphQLError>
	local rules = if _rules then _rules else specifiedRules
	local options = if _options then _options else { maxErrors = nil }
	local typeInfo = if _typeInfo then _typeInfo else TypeInfo.new(schema)

	devAssert(documentAST, "Must provide document.")
	-- // If the schema used for validation is invalid, throw an error.
	assertValidSchema(schema)

	local abortObj = {}
	local errors = {}
	local context = ValidationContext.new(schema, documentAST, typeInfo, function(error_)
		if options.maxErrors ~= nil and #errors >= options.maxErrors then
			table.insert(
				errors,
				GraphQLError.new(
					"Too many validation errors, error limit reached. Validation aborted."
				)
			)
			error(abortObj)
		end

		table.insert(errors, error_)
	end)

	-- // This uses a specialized visitor which runs multiple visitors in parallel,
	-- // while maintaining the visitor skip and break API.
	local visitor = visitInParallel(Array.map(rules, function(rule)
		return rule(context)
	end))

	-- // Visit the whole document with each instance of all provided rules.
	local ok, result = pcall(function()
		visit(documentAST, visitWithTypeInfo(typeInfo, visitor))
	end)
	-- ROBLOX catch
	if not ok then
		if result ~= abortObj then
			error(result)
		end
	end
	return errors
end

-- /**
--  * @internal
--  */
exports.validateSDL = function(
	documentAST: DocumentNode,
	schemaToExtend: GraphQLSchema?,
	-- ROBLOX deviation: typed arguments can't have default values
	_rules: Array<SDLValidationRule>?
): Array<GraphQLError>
	local rules = if _rules then _rules else specifiedSDLRules
	local errors: Array<GraphQLError> = {}
	local context = SDLValidationContext.new(documentAST, schemaToExtend, function(error_)
		table.insert(errors, error_)
	end)
	local visitors = Array.map(rules, function(rule)
		return rule(context)
	end)
	visit(documentAST, visitInParallel(visitors))
	return errors
end

-- /**
--  * Utility function which asserts a SDL document is valid by throwing an error
--  * if it is invalid.
--  *
--  * @internal
--  */
exports.assertValidSDL = function(documentAST: DocumentNode)
	local errors = exports.validateSDL(documentAST)
	if #errors ~= 0 then
		error(Error.new(table.concat(
			Array.map(errors, function(error_)
				return error_.message
			end),
			"\n\n"
		)))
	end
end

-- /**
--  * Utility function which asserts a SDL document is valid by throwing an error
--  * if it is invalid.
--  *
--  * @internal
--  */
exports.assertValidSDLExtension = function(documentAST: DocumentNode, schema: GraphQLSchema)
	local errors = exports.validateSDL(documentAST, schema)
	if #errors ~= 0 then
		error(Error.new(table.concat(
			Array.map(errors, function(error_)
				if typeof(error_) == "string" then
					return error_
				end
				return error_.message
			end),
			"\n\n"
		)))
	end
end

return exports
