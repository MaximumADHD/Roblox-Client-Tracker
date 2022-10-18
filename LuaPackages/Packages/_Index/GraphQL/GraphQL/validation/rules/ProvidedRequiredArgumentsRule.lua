--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/ProvidedRequiredArgumentsRule.js

local root = script.Parent.Parent.Parent
local jsutils = root.jsutils
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local inspect = require(jsutils.inspect).inspect
local keyMap = require(jsutils.keyMap).keyMap
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local Kind = require(language.kinds).Kind
local print_ = require(language.printer).print
local definition = require(root.type.definition)
local isType = definition.isType
local isRequiredArgument = definition.isRequiredArgument
local directives = require(root.type.directives)
local specifiedDirectives = directives.specifiedDirectives

local exports = {}

-- /**
--  * Provided required arguments
--  *
--  * A field or directive is only valid if all required (non-null without a
--  * default value) field arguments have been provided.
--  */
function exports.ProvidedRequiredArgumentsRule(context)
	return Object.assign({}, exports.ProvidedRequiredArgumentsOnDirectivesRule(context), {
		Field = {
			-- // Validate on leave to allow for deeper errors to appear first.
			leave = function(_self, fieldNode)
				local fieldDef = context:getFieldDef()
				if not fieldDef then
					return false
				end

				-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
				local argNodes = fieldNode.arguments or {}
				local argNodeMap = keyMap(argNodes, function(arg)
					return arg.name.value
				end)
				for _, argDef in ipairs(fieldDef.args) do
					local argNode = argNodeMap[argDef.name]
					if not argNode and isRequiredArgument(argDef) then
						local argTypeStr = inspect(argDef.type)
						context:reportError(
							GraphQLError.new(
								(
									'Field "%s" argument "%s" of type "%s" is required, but it was not provided.'
								):format(fieldDef.name, argDef.name, argTypeStr),
								fieldNode
							)
						)
					end
				end
				return
			end,
		},
	})
end

-- /**
--  * @internal
--  */
function exports.ProvidedRequiredArgumentsOnDirectivesRule(context)
	local requiredArgsMap = {}

	local schema = context:getSchema()
	local definedDirectives = specifiedDirectives
	if schema then
		definedDirectives = schema:getDirectives()
	end
	for _, directive in ipairs(definedDirectives) do
		requiredArgsMap[directive.name] = keyMap(
			Array.filter(directive.args, isRequiredArgument),
			function(arg)
				return arg.name
			end
		)
	end

	local astDefinitions = context:getDocument().definitions
	for _, def in ipairs(astDefinitions) do
		if def.kind == Kind.DIRECTIVE_DEFINITION then
			-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
			local argNodes = def.arguments or {}

			requiredArgsMap[def.name.value] = keyMap(
				Array.filter(argNodes, isRequiredArgumentNode),
				function(arg)
					return arg.name.value
				end
			)
		end
	end

	return {
		Directive = {
			-- // Validate on leave to allow for deeper errors to appear first.
			leave = function(_self, directiveNode)
				local directiveName = directiveNode.name.value
				local requiredArgs = requiredArgsMap[directiveName]

				if requiredArgs then
					-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
					local argNodes = directiveNode.arguments or {}
					local argNodeMap = keyMap(argNodes, function(arg)
						return arg.name.value
					end)
					for _, argName in ipairs(Object.keys(requiredArgs)) do
						if not argNodeMap[argName] then
							local argType = requiredArgs[argName].type
							local argTypeStr = isType(argType) and inspect(argType)
								or print_(argType)

							context:reportError(
								GraphQLError.new(
									(
										'Directive "@%s" argument "%s" of type "%s" is required, but it was not provided.'
									):format(directiveName, argName, argTypeStr),
									directiveNode
								)
							)
						end
					end
				end
			end,
		},
	}
end

function isRequiredArgumentNode(arg): boolean
	return arg.type.kind == Kind.NON_NULL_TYPE and arg.defaultValue == nil
end

return exports
