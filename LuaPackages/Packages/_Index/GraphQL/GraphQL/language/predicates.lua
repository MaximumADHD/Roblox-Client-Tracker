--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/predicates.js
local Kind = require(script.Parent.kinds).Kind

-- deviation: pre-declare functions
local isExecutableDefinitionNode
local isSelectionNode
local isValueNode
local isTypeNode
local isTypeSystemDefinitionNode
local isTypeDefinitionNode
local isTypeSystemExtensionNode
local isTypeExtensionNode

local function isDefinitionNode(node): boolean
	return isExecutableDefinitionNode(node)
		or isTypeSystemDefinitionNode(node)
		or isTypeSystemExtensionNode(node)
end

function isExecutableDefinitionNode(node): boolean
	return node.kind == Kind.OPERATION_DEFINITION or node.kind == Kind.FRAGMENT_DEFINITION
end

function isSelectionNode(node): boolean
	return node.kind == Kind.FIELD
		or node.kind == Kind.FRAGMENT_SPREAD
		or node.kind == Kind.INLINE_FRAGMENT
end

function isValueNode(node): boolean
	return node.kind == Kind.VARIABLE
		or node.kind == Kind.INT
		or node.kind == Kind.FLOAT
		or node.kind == Kind.STRING
		or node.kind == Kind.BOOLEAN
		or node.kind == Kind.NULL
		or node.kind == Kind.ENUM
		or node.kind == Kind.LIST
		or node.kind == Kind.OBJECT
end

function isTypeNode(node): boolean
	return node.kind == Kind.NAMED_TYPE
		or node.kind == Kind.LIST_TYPE
		or node.kind == Kind.NON_NULL_TYPE
end

function isTypeSystemDefinitionNode(node): boolean
	return node.kind == Kind.SCHEMA_DEFINITION
		or isTypeDefinitionNode(node)
		or node.kind == Kind.DIRECTIVE_DEFINITION
end

function isTypeDefinitionNode(node): boolean
	return node.kind == Kind.SCALAR_TYPE_DEFINITION
		or node.kind == Kind.OBJECT_TYPE_DEFINITION
		or node.kind == Kind.INTERFACE_TYPE_DEFINITION
		or node.kind == Kind.UNION_TYPE_DEFINITION
		or node.kind == Kind.ENUM_TYPE_DEFINITION
		or node.kind == Kind.INPUT_OBJECT_TYPE_DEFINITION
end

function isTypeSystemExtensionNode(node): boolean
	return node.kind == Kind.SCHEMA_EXTENSION or isTypeExtensionNode(node)
end

function isTypeExtensionNode(node): boolean
	return node.kind == Kind.SCALAR_TYPE_EXTENSION
		or node.kind == Kind.OBJECT_TYPE_EXTENSION
		or node.kind == Kind.INTERFACE_TYPE_EXTENSION
		or node.kind == Kind.UNION_TYPE_EXTENSION
		or node.kind == Kind.ENUM_TYPE_EXTENSION
		or node.kind == Kind.INPUT_OBJECT_TYPE_EXTENSION
end

return {
	isDefinitionNode = isDefinitionNode,
	isExecutableDefinitionNode = isExecutableDefinitionNode,
	isSelectionNode = isSelectionNode,
	isValueNode = isValueNode,
	isTypeNode = isTypeNode,
	isTypeSystemDefinitionNode = isTypeSystemDefinitionNode,
	isTypeDefinitionNode = isTypeDefinitionNode,
	isTypeSystemExtensionNode = isTypeSystemExtensionNode,
	isTypeExtensionNode = isTypeExtensionNode,
}
