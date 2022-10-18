--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/bbd8429b85594d9ee8cc632436e2d0f900d703ef/src/validation/rules/PossibleTypeExtensionsRule.js

local root = script.Parent.Parent.Parent
local jsutils = root.jsutils
local PackagesWorkspace = root.Parent
local LuauPolyfill = require(PackagesWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object

local inspect = require(jsutils.inspect).inspect
local invariant = require(jsutils.invariant).invariant
local didYouMean = require(jsutils.didYouMean).didYouMean
local suggestionList = require(jsutils.suggestionList).suggestionList
local GraphQLError = require(root.error.GraphQLError).GraphQLError
local language = root.language
local Kind = require(language.kinds).Kind
local predicates = require(language.predicates)
local isTypeDefinitionNode = predicates.isTypeDefinitionNode
local definition = require(root.type.definition)
local isScalarType = definition.isScalarType
local isObjectType = definition.isObjectType
local isInterfaceType = definition.isInterfaceType
local isUnionType = definition.isUnionType
local isEnumType = definition.isEnumType
local isInputObjectType = definition.isInputObjectType

local exports = {}

-- ROBLOX deviation: pre-declare functions and variables
local defKindToExtKind
local typeToExtKind
local extensionKindToTypeName

-- /**
--  * Possible type extension
--  *
--  * A type extension is only valid if the type is defined and has the same kind.
--  */
exports.PossibleTypeExtensionsRule = function(context)
	local schema = context:getSchema()
	local definedTypes = {}

	for _, def in ipairs(context:getDocument().definitions) do
		if isTypeDefinitionNode(def) then
			definedTypes[def.name.value] = def
		end
	end

	local function checkExtension(node)
		local typeName = node.name.value
		local defNode = definedTypes[typeName]

		local existingType = nil
		if schema then
			existingType = schema:getType(typeName)
		end
		local expectedKind

		if defNode then
			expectedKind = defKindToExtKind[defNode.kind]
		elseif existingType then
			expectedKind = typeToExtKind(existingType)
		end

		if expectedKind then
			if expectedKind ~= node.kind then
				local kindStr = extensionKindToTypeName(node.kind)
				context:reportError(
					GraphQLError.new(
						('Cannot extend non-%s type "%s".'):format(kindStr, typeName),
						defNode and { defNode, node } or node
					)
				)
			end
		else
			local allTypeNames = Object.keys(definedTypes)
			if schema then
				-- ROBLOX deviation: use Map type
				allTypeNames = Array.concat(allTypeNames, schema:getTypeMap():keys())
			end

			local suggestedTypes = suggestionList(typeName, allTypeNames)
			context:reportError(
				GraphQLError.new(
					('Cannot extend type "%s" because it is not defined.'):format(typeName)
						.. didYouMean(suggestedTypes),
					node.name
				)
			)
		end
	end

	-- ROBLOX deviation
	local checkExtensionWithSelf = function(_self, ...)
		return checkExtension(...)
	end
	return {
		ScalarTypeExtension = checkExtensionWithSelf,
		ObjectTypeExtension = checkExtensionWithSelf,
		InterfaceTypeExtension = checkExtensionWithSelf,
		UnionTypeExtension = checkExtensionWithSelf,
		EnumTypeExtension = checkExtensionWithSelf,
		InputObjectTypeExtension = checkExtensionWithSelf,
	}
end

defKindToExtKind = {
	[Kind.SCALAR_TYPE_DEFINITION] = Kind.SCALAR_TYPE_EXTENSION,
	[Kind.OBJECT_TYPE_DEFINITION] = Kind.OBJECT_TYPE_EXTENSION,
	[Kind.INTERFACE_TYPE_DEFINITION] = Kind.INTERFACE_TYPE_EXTENSION,
	[Kind.UNION_TYPE_DEFINITION] = Kind.UNION_TYPE_EXTENSION,
	[Kind.ENUM_TYPE_DEFINITION] = Kind.ENUM_TYPE_EXTENSION,
	[Kind.INPUT_OBJECT_TYPE_DEFINITION] = Kind.INPUT_OBJECT_TYPE_EXTENSION,
}

function typeToExtKind(type_)
	if isScalarType(type_) then
		return Kind.SCALAR_TYPE_EXTENSION
	end
	if isObjectType(type_) then
		return Kind.OBJECT_TYPE_EXTENSION
	end
	if isInterfaceType(type_) then
		return Kind.INTERFACE_TYPE_EXTENSION
	end
	if isUnionType(type_) then
		return Kind.UNION_TYPE_EXTENSION
	end
	if isEnumType(type_) then
		return Kind.ENUM_TYPE_EXTENSION
	end
	-- // istanbul ignore else (See: 'https://github.com/graphql/graphql-js/issues/2618')
	if isInputObjectType(type_) then
		return Kind.INPUT_OBJECT_TYPE_EXTENSION
	end

	-- // istanbul ignore next (Not reachable. All possible types have been considered)
	invariant(false, "Unexpected type: " .. inspect(type_))
	-- ROBLOX deviation: unreachable code but we to return a string so that
	-- roblox-cli can type check this correctly
	return nil
end

function extensionKindToTypeName(kind): string
	if kind == Kind.SCALAR_TYPE_EXTENSION then
		return "scalar"
	elseif kind == Kind.OBJECT_TYPE_EXTENSION then
		return "object"
	elseif kind == Kind.INTERFACE_TYPE_EXTENSION then
		return "interface"
	elseif kind == Kind.UNION_TYPE_EXTENSION then
		return "union"
	elseif kind == Kind.ENUM_TYPE_EXTENSION then
		return "enum"
	elseif kind == Kind.INPUT_OBJECT_TYPE_EXTENSION then
		return "input object"
	end

	-- // istanbul ignore next (Not reachable. All possible types have been considered)
	invariant(false, "Unexpected kind: " .. inspect(kind))
	-- ROBLOX deviation: unreachable code but we to return a string so that
	-- roblox-cli can type check this correctly
	return ""
end

return exports
