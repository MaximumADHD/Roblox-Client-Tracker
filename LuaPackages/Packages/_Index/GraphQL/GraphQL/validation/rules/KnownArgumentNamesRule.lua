--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/fe27912e56dc257eca720e07fc84a4370236dd9d/src/validation/rules/KnownArgumentNamesRule.js

local root = script.Parent.Parent.Parent
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local jsutils = root.jsutils
local didYouMean = require(jsutils.didYouMean).didYouMean
local suggestionList = require(jsutils.suggestionList).suggestionList
local Kind = require(language.kinds).Kind
local specifiedDirectives = require(root.type.directives).specifiedDirectives

local exports = {}

-- /**
--  * Known argument names
--  *
--  * A GraphQL field is only valid if all supplied arguments are defined by
--  * that field.
--  */
function exports.KnownArgumentNamesRule(context)
	return Object.assign({}, exports.KnownArgumentNamesOnDirectivesRule(context), {
		Argument = function(_self, argNode)
			local argDef = context:getArgument()
			local fieldDef = context:getFieldDef()
			local parentType = context:getParentType()

			if not argDef and fieldDef and parentType then
				local argName = argNode.name.value
				local knownArgsNames = Array.map(fieldDef.args, function(arg)
					return arg.name
				end)
				local suggestions = suggestionList(argName, knownArgsNames)
				context:reportError(
					GraphQLError.new(
						('Unknown argument "%s" on field "%s.%s".'):format(
							argName,
							parentType.name,
							fieldDef.name
						) .. didYouMean(suggestions),
						argNode
					)
				)
			end
		end,
	})
end

-- /**
--  * @internal
--  */
function exports.KnownArgumentNamesOnDirectivesRule(context)
	local directiveArgs = {}

	local schema = context:getSchema()
	local definedDirectives = specifiedDirectives
	if schema then
		definedDirectives = schema:getDirectives()
	end
	for _, directive in ipairs(definedDirectives) do
		directiveArgs[directive.name] = Array.map(directive.args, function(arg)
			return arg.name
		end)
	end

	local astDefinitions = context:getDocument().definitions
	for _, def in ipairs(astDefinitions) do
		if def.kind == Kind.DIRECTIVE_DEFINITION then
			-- // istanbul ignore next (See: 'https://github.com/graphql/graphql-js/issues/2203')
			local argsNodes = def.arguments or {}

			directiveArgs[def.name.value] = Array.map(argsNodes, function(arg)
				return arg.name.value
			end)
		end
	end

	return {
		Directive = function(_self, directiveNode)
			local directiveName = directiveNode.name.value
			local knownArgs = directiveArgs[directiveName]

			if directiveNode.arguments and knownArgs then
				for _, argNode in ipairs(directiveNode.arguments) do
					local argName = argNode.name.value
					if Array.indexOf(knownArgs, argName) == -1 then
						local suggestions = suggestionList(argName, knownArgs)
						context:reportError(
							GraphQLError.new(
								('Unknown argument "%s" on directive "@%s".'):format(
									argName,
									directiveName
								) .. didYouMean(suggestions),
								argNode
							)
						)
					end
				end
			end

			return false
		end,
	}
end

return exports
