-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/renameType.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local GraphQLEnumType = graphqlModule.GraphQLEnumType
local GraphQLInputObjectType = graphqlModule.GraphQLInputObjectType
local GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
local GraphQLObjectType = graphqlModule.GraphQLObjectType
-- ROBLOX deviation START: import type
-- local GraphQLNamedType = graphqlModule.GraphQLNamedType
type GraphQLNamedType = graphqlModule.GraphQLNamedType
-- ROBLOX deviation END
local GraphQLScalarType = graphqlModule.GraphQLScalarType
local GraphQLUnionType = graphqlModule.GraphQLUnionType
local isEnumType = graphqlModule.isEnumType
local isInterfaceType = graphqlModule.isInterfaceType
local isInputObjectType = graphqlModule.isInputObjectType
local isObjectType = graphqlModule.isObjectType
local isScalarType = graphqlModule.isScalarType
local isUnionType = graphqlModule.isUnionType
-- ROBLOX deviation START: add additional imports
type GraphQLObjectType = graphqlModule.GraphQLObjectType
type GraphQLInterfaceType = graphqlModule.GraphQLInterfaceType
type ObjectTypeExtensionNode = graphqlModule.ObjectTypeExtensionNode
type InterfaceTypeExtensionNode = graphqlModule.InterfaceTypeExtensionNode
type UnionTypeExtensionNode = graphqlModule.UnionTypeExtensionNode
type InputObjectTypeExtensionNode = graphqlModule.InputObjectTypeExtensionNode
type EnumTypeExtensionNode = graphqlModule.EnumTypeExtensionNode
type ScalarTypeExtensionNode = graphqlModule.ScalarTypeExtensionNode
-- ROBLOX deviation END
-- ROBLOX deviation START: override declarations are not supported in Luau
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function renameType(type: GraphQLObjectType, newTypeName: string): GraphQLObjectType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function renameType(type: GraphQLInterfaceType, newTypeName: string): GraphQLInterfaceType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function renameType(type: GraphQLUnionType, newTypeName: string): GraphQLUnionType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function renameType(type: GraphQLEnumType, newTypeName: string): GraphQLEnumType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function renameType(type: GraphQLScalarType, newTypeName: string): GraphQLScalarType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function renameType(type: GraphQLInputObjectType, newTypeName: string): GraphQLInputObjectType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: TSDeclareFunction ]] --[[ function renameType(type: GraphQLNamedType, newTypeName: string): GraphQLNamedType; ]]
-- exports[error("not implemented")] = error("not implemented")
-- ROBLOX deviation END
local function renameType(type_, newTypeName: string): GraphQLNamedType
	if Boolean.toJSBoolean(isObjectType(type_)) then
		return GraphQLObjectType.new(Object.assign({}, type_:toConfig(), {
			name = newTypeName,
			astNode = if type_.astNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.astNode
				else Object.assign(
					{},
					type_.astNode,
					{ name = Object.assign({}, type_.astNode.name, { value = newTypeName }) }
				),
			extensionASTNodes = if type_.extensionASTNodes
					== nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.extensionASTNodes
				-- ROBLOX deviation START: add type annotation
				-- else Array.map(type_.extensionASTNodes, function(node)
				else Array.map(type_.extensionASTNodes, function(node: ObjectTypeExtensionNode)
					-- ROBLOX deviation END
					return Object.assign({}, node, { name = Object.assign({}, node.name, { value = newTypeName }) })
				end),--[[ ROBLOX CHECK: check if 'type.extensionASTNodes' is an Array ]]
		}))
	elseif Boolean.toJSBoolean(isInterfaceType(type_)) then
		return GraphQLInterfaceType.new(Object.assign({}, type_:toConfig(), {
			name = newTypeName,
			astNode = if type_.astNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.astNode
				else Object.assign(
					{},
					type_.astNode,
					{ name = Object.assign({}, type_.astNode.name, { value = newTypeName }) }
				),
			extensionASTNodes = if type_.extensionASTNodes
					== nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.extensionASTNodes
				-- ROBLOX deviation START: add type annotation
				-- else Array.map(type_.extensionASTNodes, function(node)
				else Array.map(type_.extensionASTNodes, function(node: InterfaceTypeExtensionNode)
					-- ROBLOX deviation END
					return Object.assign({}, node, { name = Object.assign({}, node.name, { value = newTypeName }) })
				end),--[[ ROBLOX CHECK: check if 'type.extensionASTNodes' is an Array ]]
		}))
	elseif Boolean.toJSBoolean(isUnionType(type_)) then
		return GraphQLUnionType.new(Object.assign({}, type_:toConfig(), {
			name = newTypeName,
			astNode = if type_.astNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.astNode
				else Object.assign(
					{},
					type_.astNode,
					{ name = Object.assign({}, type_.astNode.name, { value = newTypeName }) }
				),
			extensionASTNodes = if type_.extensionASTNodes
					== nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.extensionASTNodes
				-- ROBLOX deviation START: add type annotation
				-- else Array.map(type_.extensionASTNodes, function(node)
				else Array.map(type_.extensionASTNodes, function(node: UnionTypeExtensionNode)
					-- ROBLOX deviation END
					return Object.assign({}, node, { name = Object.assign({}, node.name, { value = newTypeName }) })
				end),--[[ ROBLOX CHECK: check if 'type.extensionASTNodes' is an Array ]]
		}))
	elseif Boolean.toJSBoolean(isInputObjectType(type_)) then
		return GraphQLInputObjectType.new(Object.assign({}, type_:toConfig(), {
			name = newTypeName,
			astNode = if type_.astNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.astNode
				else Object.assign(
					{},
					type_.astNode,
					{ name = Object.assign({}, type_.astNode.name, { value = newTypeName }) }
				),
			extensionASTNodes = if type_.extensionASTNodes
					== nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.extensionASTNodes
				-- ROBLOX deviation START: add type annotation
				-- else Array.map(type_.extensionASTNodes, function(node)
				else Array.map(type_.extensionASTNodes, function(node: InputObjectTypeExtensionNode)
					-- ROBLOX deviation END
					return Object.assign({}, node, { name = Object.assign({}, node.name, { value = newTypeName }) })
				end),--[[ ROBLOX CHECK: check if 'type.extensionASTNodes' is an Array ]]
		}))
	elseif Boolean.toJSBoolean(isEnumType(type_)) then
		return GraphQLEnumType.new(Object.assign({}, type_:toConfig(), {
			name = newTypeName,
			astNode = if type_.astNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.astNode
				else Object.assign(
					{},
					type_.astNode,
					{ name = Object.assign({}, type_.astNode.name, { value = newTypeName }) }
				),
			extensionASTNodes = if type_.extensionASTNodes
					== nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.extensionASTNodes
				-- ROBLOX deviation START: add type annotation
				-- else Array.map(type_.extensionASTNodes, function(node)
				else Array.map(type_.extensionASTNodes, function(node: EnumTypeExtensionNode)
					-- ROBLOX deviation END
					return Object.assign({}, node, { name = Object.assign({}, node.name, { value = newTypeName }) })
				end),--[[ ROBLOX CHECK: check if 'type.extensionASTNodes' is an Array ]]
		}))
	elseif Boolean.toJSBoolean(isScalarType(type_)) then
		return GraphQLScalarType.new(Object.assign({}, type_:toConfig(), {
			name = newTypeName,
			astNode = if type_.astNode == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.astNode
				else Object.assign(
					{},
					type_.astNode,
					{ name = Object.assign({}, type_.astNode.name, { value = newTypeName }) }
				),
			extensionASTNodes = if type_.extensionASTNodes
					== nil --[[ ROBLOX CHECK: loose equality used upstream ]]
				then type_.extensionASTNodes
				-- ROBLOX deviation START: add type annotation
				-- else Array.map(type_.extensionASTNodes, function(node)
				else Array.map(type_.extensionASTNodes, function(node: ScalarTypeExtensionNode)
					-- ROBLOX deviation END
					return Object.assign({}, node, { name = Object.assign({}, node.name, { value = newTypeName }) })
				end),--[[ ROBLOX CHECK: check if 'type.extensionASTNodes' is an Array ]]
		}))
	end
	error(Error.new(("Unknown type %s."):format(tostring(type_ :: string))))
end
exports.renameType = renameType
return exports
