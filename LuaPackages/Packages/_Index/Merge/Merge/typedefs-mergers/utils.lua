-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/utils.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local instanceof = LuauPolyfill.instanceof
local exports = {}
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as type
-- local TypeNode = graphqlModule.TypeNode
-- local NamedTypeNode = graphqlModule.NamedTypeNode
-- local ListTypeNode = graphqlModule.ListTypeNode
-- local NonNullTypeNode = graphqlModule.NonNullTypeNode
type TypeNode = graphqlModule.TypeNode
type NamedTypeNode = graphqlModule.NamedTypeNode
type ListTypeNode = graphqlModule.ListTypeNode
type NonNullTypeNode = graphqlModule.NonNullTypeNode
-- ROBLOX deviation END
local Source = graphqlModule.Source
local Kind = graphqlModule.Kind
local function isStringTypes(
	types: any
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ types is string ]]
	return typeof(types) == "string"
end
exports.isStringTypes = isStringTypes
local function isSourceTypes(
	types: any
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ types is Source ]]
	return instanceof(types, Source)
end
exports.isSourceTypes = isSourceTypes
-- ROBLOX deviation START: fix missing arg type
-- local function extractType(type_): NamedTypeNode
local function extractType(type_: TypeNode): NamedTypeNode
	-- ROBLOX deviation END
	local visitedType = type_
	while visitedType.kind == Kind.LIST_TYPE or visitedType.kind == "NonNullType" do
		visitedType = visitedType.type
	end
	-- ROBLOX deviation START: explicit cast
	-- return visitedType
	return visitedType :: NamedTypeNode
	-- ROBLOX deviation END
end
exports.extractType = extractType

local function isWrappingTypeNode(
	-- ROBLOX deviation START: fix missing type
	-- type_
	type_: TypeNode
	-- ROBLOX deviation END
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ type is ListTypeNode | NonNullTypeNode ]]
	return type_.kind ~= Kind.NAMED_TYPE
end
exports.isWrappingTypeNode = isWrappingTypeNode
local function isListTypeNode(
	-- ROBLOX deviation START: fix missing type
	-- type_
	type_: TypeNode
	-- ROBLOX deviation END
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ type is ListTypeNode ]]
	return type_.kind == Kind.LIST_TYPE
end
exports.isListTypeNode = isListTypeNode
local function isNonNullTypeNode(
	-- ROBLOX deviation START: fix missing type
	-- type_
	type_: TypeNode
	-- ROBLOX deviation END
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ type is NonNullTypeNode ]]
	return type_.kind == Kind.NON_NULL_TYPE
end
exports.isNonNullTypeNode = isNonNullTypeNode
local function printTypeNode(type_: TypeNode): string
	if Boolean.toJSBoolean(isListTypeNode(type_)) then
		-- ROBLOX deviation START: explicit cast
		-- return ("[%s]"):format(tostring(printTypeNode(type_.type)))
		return ("[%s]"):format(printTypeNode((type_ :: ListTypeNode).type))
		-- ROBLOX deviation END
	end
	if Boolean.toJSBoolean(isNonNullTypeNode(type_)) then
		-- ROBLOX deviation START: explicit cast
		-- return ("%s!"):format(tostring(printTypeNode(type_.type)))
		return ("%s!"):format(printTypeNode((type_ :: NonNullTypeNode).type))
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: explicit cast
	-- return type_.name.value
	return (type_ :: NamedTypeNode).name.value
	-- ROBLOX deviation END
end
exports.printTypeNode = printTypeNode
local CompareVal = { A_SMALLER_THAN_B = -1, A_EQUALS_B = 0, A_GREATER_THAN_B = 1 }
export type CompareVal = number
exports.CompareVal = CompareVal
-- ROBLOX deviation START: fix conversion bug
-- export type CompareFn<T> = (a:T| nil, b:T| nil) -> any| number;
export type CompareFn<T> = (a: T?, b: T?) -> number
-- ROBLOX deviation END
local function defaultStringComparator(a: string | nil, b: string | nil): CompareVal
	if
		a == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
		and b == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return CompareVal.A_EQUALS_B
	end
	if
		a == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return CompareVal.A_SMALLER_THAN_B
	end
	if
		b == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return CompareVal.A_GREATER_THAN_B
	end
	-- ROBLOX deviation START: explicit cast
	-- if
	-- 	a < b --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
	-- then
	if (a :: string) < (b :: string) then
		-- ROBLOX deviation END
		return CompareVal.A_SMALLER_THAN_B
	end
	-- ROBLOX deviation START: explicit cast
	-- if
	-- 	a > b --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- then
	if (a :: string) > (b :: string) then
		-- ROBLOX deviation END
		return CompareVal.A_GREATER_THAN_B
	end
	return CompareVal.A_EQUALS_B
end
exports.defaultStringComparator = defaultStringComparator
return exports
