--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/typeFromAST.js

local srcWorkspace = script.Parent.Parent
local inspect = require(srcWorkspace.jsutils.inspect).inspect
local invariant = require(srcWorkspace.jsutils.invariant).invariant
local languageWorkspace = srcWorkspace.language
local astImport = require(languageWorkspace.ast)
type TypeNode = astImport.TypeNode

local Kind = require(srcWorkspace.language.kinds).Kind
local definitionImport = require(srcWorkspace.type.definition)
local GraphQLList = definitionImport.GraphQLList
local GraphQLNonNull = definitionImport.GraphQLNonNull
type GraphQLType = definitionImport.GraphQLType
local typeWorkspace = srcWorkspace.type
local schemaImport = require(typeWorkspace.schema)
type GraphQLSchema = schemaImport.GraphQLSchema

--[[*
--  * Given a Schema and an AST node describing a type, return a GraphQLType
--  * definition which applies to that type. For example, if provided the parsed
--  * AST node for `[User]`, a GraphQLList instance will be returned, containing
--  * the type called "User" found in the schema. If a type called "User" is not
--  * found in the schema, then undefined will be returned.
--  *]]
-- ROBLOX TODO Luau: Luau currently doesn't support overloads, so pick most general one from upstream
local function typeFromAST(schema: GraphQLSchema, typeNode: TypeNode): GraphQLType | nil
	local innerType
	if typeNode.kind == Kind.LIST_TYPE then
		innerType = typeFromAST(schema, typeNode.type)
		return innerType and GraphQLList.new(innerType)
	end
	if typeNode.kind == Kind.NON_NULL_TYPE then
		innerType = typeFromAST(schema, typeNode.type)
		return innerType and GraphQLNonNull.new(innerType)
	end
	-- istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
	if typeNode.kind == Kind.NAMED_TYPE then
		return schema:getType(typeNode.name.value)
	end

	invariant(false, "Unexpected type node: " .. inspect(typeNode))
	return nil -- ROBLOX deviation: no implicit returns
end

return {
	typeFromAST = typeFromAST,
}
