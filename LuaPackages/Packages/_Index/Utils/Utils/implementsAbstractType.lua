-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/implementsAbstractType.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types instead of locals
-- local GraphQLType = graphqlModule.GraphQLType
-- local GraphQLSchema = graphqlModule.GraphQLSchema
type GraphQLType = graphqlModule.GraphQLType
type GraphQLSchema = graphqlModule.GraphQLSchema
-- ROBLOX deviation END
local doTypesOverlap = graphqlModule.doTypesOverlap
local isCompositeType = graphqlModule.isCompositeType
-- ROBLOX deviation START: properly import type
-- local Maybe = require(script.Parent["types.js"]).Maybe
local typesModule = require(script.Parent.types)
type Maybe<T> = typesModule.Maybe<T>
-- ROBLOX deviation END
local function implementsAbstractType(schema: GraphQLSchema, typeA: Maybe<GraphQLType>, typeB: Maybe<GraphQLType>)
	if
		typeB == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		or typeA == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return false
	elseif typeA == typeB then
		return true
	elseif
		Boolean.toJSBoolean((function()
			local ref = isCompositeType(typeA)
			return if Boolean.toJSBoolean(ref) then isCompositeType(typeB) else ref
		end)())
	then
		return doTypesOverlap(schema, typeA, typeB)
	end
	return false
end
exports.implementsAbstractType = implementsAbstractType
return exports
