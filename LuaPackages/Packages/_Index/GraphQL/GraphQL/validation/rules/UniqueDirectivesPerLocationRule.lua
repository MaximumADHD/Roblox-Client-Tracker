--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/7b3241329e1ff49fb647b043b80568f0cf9e1a7c/src/validation/rules/UniqueDirectivesPerLocationRule.js

local root = script.Parent.Parent.Parent
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local Kind = require(language.kinds).Kind
local predicates = require(language.predicates)
local isTypeDefinitionNode = predicates.isTypeDefinitionNode
local isTypeExtensionNode = predicates.isTypeExtensionNode
local directives = require(root.type.directives)
local specifiedDirectives = directives.specifiedDirectives

local exports = {}

-- /**
--  * Unique directive names per location
--  *
--  * A GraphQL document is only valid if all non-repeatable directives at
--  * a given location are uniquely named.
--  */
exports.UniqueDirectivesPerLocationRule = function(context)
	local uniqueDirectiveMap = {}

	local schema = context:getSchema()
	local definedDirectives = if schema then schema:getDirectives() else specifiedDirectives
	for _, directive in ipairs(definedDirectives) do
		uniqueDirectiveMap[directive.name] = not directive.isRepeatable
	end

	local astDefinitions = context:getDocument().definitions
	for _, def in ipairs(astDefinitions) do
		if def.kind == Kind.DIRECTIVE_DEFINITION then
			uniqueDirectiveMap[def.name.value] = not def.repeatable
		end
	end

	local schemaDirectives = {}
	local typeDirectivesMap = {}

	return {
		-- // Many different AST nodes may contain directives. Rather than listing
		-- // them all, just listen for entering any node, and check to see if it
		-- // defines any directives.
		enter = function(_self, node)
			if node.directives == nil then
				return
			end

			local seenDirectives
			if node.kind == Kind.SCHEMA_DEFINITION or node.kind == Kind.SCHEMA_EXTENSION then
				seenDirectives = schemaDirectives
			elseif isTypeDefinitionNode(node) or isTypeExtensionNode(node) then
				local typeName = node.name.value
				seenDirectives = typeDirectivesMap[typeName]
				if seenDirectives == nil then
					seenDirectives = {}
					typeDirectivesMap[typeName] = seenDirectives
				end
			else
				seenDirectives = {}
			end

			for _, directive in ipairs(node.directives) do
				local directiveName = directive.name.value

				if uniqueDirectiveMap[directiveName] then
					if seenDirectives[directiveName] then
						context:reportError(
							GraphQLError.new(
								('The directive "@%s" can only be used once at this location.'):format(
									directiveName
								),
								{ seenDirectives[directiveName], directive }
							)
						)
					else
						seenDirectives[directiveName] = directive
					end
				end
			end
		end,
	}
end

return exports
