--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/introspectionFromSchema.js

local srcWorkspace = script.Parent.Parent

-- ROBLOX deviation: utils
local Object = require(srcWorkspace.Parent.LuauPolyfill).Object

local invariant = require(srcWorkspace.jsutils.invariant).invariant

local schemaModule = require(srcWorkspace.type.schema)
type GraphQLSchema = schemaModule.GraphQLSchema

local parse = require(srcWorkspace.language.parser).parse

local executeSync = require(srcWorkspace.execution.execute).executeSync

local getIntrospectionQueryModule = require(script.Parent.getIntrospectionQuery)
type IntrospectionQuery = getIntrospectionQueryModule.IntrospectionQuery
type IntrospectionOptions = getIntrospectionQueryModule.IntrospectionOptions
local getIntrospectionQuery = getIntrospectionQueryModule.getIntrospectionQuery

--[[**
	* Build an IntrospectionQuery from a GraphQLSchema
	*
	* IntrospectionQuery is useful for utilities that care about type and field
	* relationships, but do not need to traverse through those relationships.
	*
	* This is the inverse of buildClientSchema. The primary use case is outside
	* of the server context, for instance when doing schema comparisons.
	*]]
local function introspectionFromSchema(
	schema: GraphQLSchema,
	options: IntrospectionOptions?
): IntrospectionQuery
	local optionsWithDefaults = Object.assign({
		specifiedByUrl = true,
		directiveIsRepeatable = true,
		schemaDescription = true,
		inputValueDeprecation = true,
	}, options)

	local document = parse(getIntrospectionQuery(optionsWithDefaults))
	local result = executeSync({ schema = schema, document = document })
	invariant(not result.errors and result.data)

	return result.data :: any
end

return {
	introspectionFromSchema = introspectionFromSchema,
}
