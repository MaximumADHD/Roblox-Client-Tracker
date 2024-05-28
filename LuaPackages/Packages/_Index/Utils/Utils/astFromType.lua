-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/astFromType.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local isNonNullType = graphqlModule.isNonNullType
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLType = graphqlModule.GraphQLType
-- local TypeNode = graphqlModule.TypeNode
type GraphQLType = graphqlModule.GraphQLType
type TypeNode = graphqlModule.TypeNode
-- ROBLOX deviation END
local isListType = graphqlModule.isListType
-- ROBLOX deviation START: fix import
-- local inspect = require(script.Parent["inspect.js"]).inspect
local inspect = require(script.Parent.inspect).inspect
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type NamedTypeNode = graphqlModule.NamedTypeNode
type ListTypeNode = graphqlModule.ListTypeNode
-- ROBLOX deviation END
local function astFromType(type_): TypeNode
	if Boolean.toJSBoolean(isNonNullType(type_)) then
		local innerType = astFromType(type_.ofType)
		if innerType.kind == Kind.NON_NULL_TYPE then
			error(
				Error.new(
					("Invalid type node %s. Inner type of non-null type cannot be a non-null type."):format(
						tostring(inspect(type_))
					)
				)
			)
		end
		-- ROBLOX deviation START: needs cast
		-- return { kind = Kind.NON_NULL_TYPE, type = innerType }
		return { kind = Kind.NON_NULL_TYPE, type = innerType :: NamedTypeNode | ListTypeNode }
		-- ROBLOX deviation END
	elseif Boolean.toJSBoolean(isListType(type_)) then
		return { kind = Kind.LIST_TYPE, type = astFromType(type_.ofType) }
	end
	return { kind = Kind.NAMED_TYPE, name = { kind = Kind.NAME, value = type_.name } }
end
exports.astFromType = astFromType
return exports
