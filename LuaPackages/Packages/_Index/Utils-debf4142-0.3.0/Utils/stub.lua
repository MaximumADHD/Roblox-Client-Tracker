-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/stub.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not used
-- local Array = LuauPolyfill.Array
-- local Object = LuauPolyfill.Object
-- ROBLOX deviation END
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation START: add import as type
type GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation END
local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- ROBLOX deviation START: add import as type
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
-- ROBLOX deviation END
local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- ROBLOX deviation START: add import as type
type GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
-- ROBLOX deviation END
local GraphQLString = graphqlModule.GraphQLString
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
-- ROBLOX deviation END
local GraphQLInt = graphqlModule.GraphQLInt
local GraphQLFloat = graphqlModule.GraphQLFloat
local GraphQLBoolean = graphqlModule.GraphQLBoolean
local GraphQLID = graphqlModule.GraphQLID
-- ROBLOX deviation START: import as type instead of local
-- local TypeNode = graphqlModule.TypeNode
type TypeNode = graphqlModule.TypeNode
-- ROBLOX deviation END
local Kind = graphqlModule.Kind
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLType = graphqlModule.GraphQLType
type GraphQLType = graphqlModule.GraphQLType
-- ROBLOX deviation END
local GraphQLList = graphqlModule.GraphQLList
local GraphQLNonNull = graphqlModule.GraphQLNonNull
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLOutputType = graphqlModule.GraphQLOutputType
type GraphQLOutputType = graphqlModule.GraphQLOutputType
-- ROBLOX deviation END
-- ROBLOX deviation START: import as type instead of local
-- local GraphQLInputType = graphqlModule.GraphQLInputType
type GraphQLInputType = graphqlModule.GraphQLInputType
-- ROBLOX deviation END
-- ROBLOX deviation START: additional types
type Object = LuauPolyfill.Object
type ListTypeNode = graphqlModule.ListTypeNode
type NonNullTypeNode = graphqlModule.NonNullTypeNode
type NamedTypeNode = graphqlModule.NamedTypeNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix export and declare type_ parameter as any
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function createNamedStub(name: string, type: 'object'): GraphQLObjectType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function createNamedStub(name: string, type: 'interface'): GraphQLInterfaceType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function createNamedStub(name: string, type: 'input'): GraphQLInputObjectType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- local function createNamedStub(name: string, type_): GraphQLObjectType | GraphQLInterfaceType | GraphQLInputObjectType
export type createNamedSub =
	((name: string, type: "object") -> GraphQLObjectType)
	| ((name: string, type: "interface") -> GraphQLInterfaceType)
	| ((name: string, type: "input") -> GraphQLInputType)
local function createNamedStub(
	name: string,
	type_: any
): GraphQLObjectType | GraphQLInterfaceType | GraphQLInputObjectType
	-- ROBLOX deviation END
	local constructor: any
	if type_ == "object" then
		constructor = GraphQLObjectType
	elseif type_ == "interface" then
		constructor = GraphQLInterfaceType
	else
		constructor = GraphQLInputObjectType
	end
	return constructor.new({ name = name, fields = { _fake = { type = GraphQLString } } })
end
exports.createNamedStub = createNamedStub
-- ROBLOX deviation START: fix export and declare type_ parameter as any
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function createStub(node: TypeNode, type: 'output'): GraphQLOutputType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function createStub(node: TypeNode, type: 'input'): GraphQLInputType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function createStub(node: TypeNode, type: 'output' | 'input'): GraphQLType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- local function createStub(node: TypeNode, type_): any
export type createStub =
	((node: TypeNode, type: "output") -> GraphQLOutputType)
	| ((node: TypeNode, type: "input") -> GraphQLInputType)
	| ((node: TypeNode, type: "output" | "input") -> GraphQLType)
local function createStub(node: TypeNode, type_: any): any
	-- ROBLOX deviation END
	local condition_ = node.kind
	if condition_ == Kind.LIST_TYPE then
		-- ROBLOX deviation START: cast type
		-- return GraphQLList.new(createStub(node.type, type_))
		return GraphQLList.new(createStub((node :: ListTypeNode).type, type_))
		-- ROBLOX deviation END
	elseif condition_ == Kind.NON_NULL_TYPE then
		-- ROBLOX deviation START: cast type
		-- return GraphQLNonNull.new(createStub(node.type, type_))
		return GraphQLNonNull.new(createStub((node :: NonNullTypeNode).type, type_))
		-- ROBLOX deviation END
	else
		if type_ == "output" then
			-- ROBLOX deviation START: cast type
			-- return createNamedStub(node.name.value, "object")
			return createNamedStub((node :: NamedTypeNode).name.value, "object")
			-- ROBLOX deviation END
		end
		-- ROBLOX deviation START: cast type
		-- return createNamedStub(node.name.value, "input")
		return createNamedStub((node :: NamedTypeNode).name.value, "input")
		-- ROBLOX deviation END
	end
end
exports.createStub = createStub
-- ROBLOX deviation START: define parameter type
-- local function isNamedStub(type_): boolean
local function isNamedStub(type_: GraphQLNamedType): boolean
	-- ROBLOX deviation END
	-- ROBLOX deviation START: fix implementation - see issue #933 in js-to-lua
	-- if Array.indexOf(Object.keys(type_), "getFields") ~= -1 then
	if (type_ :: Object).getFields ~= nil then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: already checked property exists - cast type to any
		-- local fields = type_:getFields() -- eslint-disable-next-line no-unreachable-loop
		local fields = (type_ :: any):getFields() -- eslint-disable-next-line no-unreachable-loop
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fields is a Map
		-- for fieldName in fields do
		for _, ref in fields do
			local fieldName = table.unpack(ref)
			-- ROBLOX deviation END
			local field = fields[tostring(fieldName)]
			return field.name == "_fake"
		end
	end
	return false
end
exports.isNamedStub = isNamedStub
-- ROBLOX deviation START: cast parameter type
-- local function getBuiltInForStub(type_): GraphQLNamedType
local function getBuiltInForStub(type_: GraphQLNamedType): GraphQLNamedType
	-- ROBLOX deviation END
	local condition_ = type_.name
	if condition_ == GraphQLInt.name then
		return GraphQLInt
	elseif condition_ == GraphQLFloat.name then
		return GraphQLFloat
	elseif condition_ == GraphQLString.name then
		return GraphQLString
	elseif condition_ == GraphQLBoolean.name then
		return GraphQLBoolean
	elseif condition_ == GraphQLID.name then
		return GraphQLID
	else
		return type_
	end
end
exports.getBuiltInForStub = getBuiltInForStub
return exports
