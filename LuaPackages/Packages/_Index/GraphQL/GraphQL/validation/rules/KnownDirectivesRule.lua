--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/KnownDirectivesRule.js

local root = script.Parent.Parent.Parent
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array

local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local jsutils = root.jsutils
local inspect = require(jsutils.inspect).inspect
local invariant = require(jsutils.invariant).invariant
local Kind = require(language.kinds).Kind
local DirectiveLocation = require(language.directiveLocation).DirectiveLocation
local specifiedDirectives = require(root.type.directives).specifiedDirectives

local exports = {}

-- ROBLOX deviation: predeclare function
local getDirectiveLocationForASTPath
local getDirectiveLocationForOperation

-- /**
--  * Known directives
--  *
--  * A GraphQL document is only valid if all `@directives` are known by the
--  * schema and legally positioned.
--  */
local function KnownDirectivesRule(context)
	local locationsMap = {}

	local schema = context:getSchema()
	local definedDirectives = specifiedDirectives
	if schema then
		definedDirectives = schema:getDirectives()
	end
	for _, directive in ipairs(definedDirectives) do
		locationsMap[directive.name] = directive.locations
	end

	local astDefinitions = context:getDocument().definitions
	for _, def in ipairs(astDefinitions) do
		if def.kind == Kind.DIRECTIVE_DEFINITION then
			locationsMap[def.name.value] = Array.map(def.locations, function(name)
				return name.value
			end)
		end
	end

	return {
		Directive = function(_self, node, _key, _parent, _path, ancestors)
			local name = node.name.value
			local locations = locationsMap[name]

			if not locations then
				context:reportError(
					GraphQLError.new(('Unknown directive "@%s".'):format(name), node)
				)
				return
			end

			local candidateLocation = getDirectiveLocationForASTPath(ancestors)

			if candidateLocation and Array.indexOf(locations, candidateLocation) == -1 then
				context:reportError(
					GraphQLError.new(
						('Directive "@%s" may not be used on %s.'):format(name, candidateLocation),
						node
					)
				)
			end
		end,
	}
end
exports.KnownDirectivesRule = KnownDirectivesRule

function getDirectiveLocationForASTPath(ancestors)
	local appliedTo = ancestors[#ancestors]
	invariant(not Array.isArray(appliedTo))

	local appliedToKind = appliedTo.kind
	if appliedToKind == Kind.OPERATION_DEFINITION then
		return getDirectiveLocationForOperation(appliedTo.operation)
	elseif appliedToKind == Kind.FIELD then
		return DirectiveLocation.FIELD
	elseif appliedToKind == Kind.FRAGMENT_SPREAD then
		return DirectiveLocation.FRAGMENT_SPREAD
	elseif appliedToKind == Kind.INLINE_FRAGMENT then
		return DirectiveLocation.INLINE_FRAGMENT
	elseif appliedToKind == Kind.FRAGMENT_DEFINITION then
		return DirectiveLocation.FRAGMENT_DEFINITION
	elseif appliedToKind == Kind.VARIABLE_DEFINITION then
		return DirectiveLocation.VARIABLE_DEFINITION
	elseif appliedToKind == Kind.SCHEMA_DEFINITION or appliedToKind == Kind.SCHEMA_EXTENSION then
		return DirectiveLocation.SCHEMA
	elseif
		appliedToKind == Kind.SCALAR_TYPE_DEFINITION
		or appliedToKind == Kind.SCALAR_TYPE_EXTENSION
	then
		return DirectiveLocation.SCALAR
	elseif
		appliedToKind == Kind.OBJECT_TYPE_DEFINITION
		or appliedToKind == Kind.OBJECT_TYPE_EXTENSION
	then
		return DirectiveLocation.OBJECT
	elseif appliedToKind == Kind.FIELD_DEFINITION then
		return DirectiveLocation.FIELD_DEFINITION
	elseif
		appliedToKind == Kind.INTERFACE_TYPE_DEFINITION
		or appliedToKind == Kind.INTERFACE_TYPE_EXTENSION
	then
		return DirectiveLocation.INTERFACE
	elseif
		appliedToKind == Kind.UNION_TYPE_DEFINITION
		or appliedToKind == Kind.UNION_TYPE_EXTENSION
	then
		return DirectiveLocation.UNION
	elseif
		appliedToKind == Kind.ENUM_TYPE_DEFINITION or appliedToKind == Kind.ENUM_TYPE_EXTENSION
	then
		return DirectiveLocation.ENUM
	elseif appliedToKind == Kind.ENUM_VALUE_DEFINITION then
		return DirectiveLocation.ENUM_VALUE
	elseif
		appliedToKind == Kind.INPUT_OBJECT_TYPE_DEFINITION
		or appliedToKind == Kind.INPUT_OBJECT_TYPE_EXTENSION
	then
		return DirectiveLocation.INPUT_OBJECT
	elseif appliedToKind == Kind.INPUT_VALUE_DEFINITION then
		local parentNode = ancestors[#ancestors - 2]
		return parentNode.kind == Kind.INPUT_OBJECT_TYPE_DEFINITION
				and DirectiveLocation.INPUT_FIELD_DEFINITION
			or DirectiveLocation.ARGUMENT_DEFINITION
	end

	-- ROBLOX deviation: explicit nil return to satisfy Luau analysis
	return nil
end

function getDirectiveLocationForOperation(operation)
	if operation == "query" then
		return DirectiveLocation.QUERY
	elseif operation == "mutation" then
		return DirectiveLocation.MUTATION
	elseif operation == "subscription" then
		return DirectiveLocation.SUBSCRIPTION
	end

	-- // istanbul ignore next (Not reachable. All possible types have been considered)
	invariant(false, "Unexpected operation: " .. inspect(operation))
	-- ROBLOX FIXME Luau: add explicit return until Luau surfaces no-return? from invariant()
	return nil
end

return exports
