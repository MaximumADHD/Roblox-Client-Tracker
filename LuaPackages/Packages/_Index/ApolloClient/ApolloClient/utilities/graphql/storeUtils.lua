-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/graphql/storeUtils.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Record<T, U> = { [T]: U }

local HttpService = game:GetService("HttpService")

local exports = {}

-- ROBLOX deviation: predeclare functions:
local getStoreKeyName
local stringify
local isField

-- ROBLOX deviation: extract pure types to break circular dependency between pagination and utilities
local typesModule = require(script.Parent.types)
local graphqlModule = require(rootWorkspace.GraphQL)
type DirectiveNode = graphqlModule.DirectiveNode
type FieldNode = graphqlModule.FieldNode
type IntValueNode = graphqlModule.IntValueNode
type FloatValueNode = graphqlModule.FloatValueNode
type StringValueNode = graphqlModule.StringValueNode
type BooleanValueNode = graphqlModule.BooleanValueNode
type ObjectValueNode = graphqlModule.ObjectValueNode
type ListValueNode = graphqlModule.ListValueNode
type EnumValueNode = graphqlModule.EnumValueNode
type NullValueNode = graphqlModule.NullValueNode
type VariableNode = graphqlModule.VariableNode
type InlineFragmentNode = graphqlModule.InlineFragmentNode
type ValueNode = graphqlModule.ValueNode
type SelectionNode = graphqlModule.SelectionNode
type NameNode = graphqlModule.NameNode
type SelectionSetNode = graphqlModule.SelectionSetNode
type DocumentNode = graphqlModule.DocumentNode

local InvariantError = require(srcWorkspace.jsutils.invariant).InvariantError
local isNonNullObject = require(script.Parent.Parent.common.objects).isNonNullObject
-- local fragmentsModule = require(script.Parent.fragments)
-- local FragmentMap = fragmentsModule.FragmentMap
type FragmentMap = Object
-- local getFragmentFromSelection = fragmentsModule.getFragmentFromSelection
local function getFragmentFromSelection(...): ...any
	error("fragments are not supported yet")
end

export type Reference = typesModule.Reference

local function makeReference(id: string): Reference
	return { __ref = tostring(id) }
end
exports.makeReference = makeReference

local function isReference(obj: any): boolean
	return Boolean.toJSBoolean(obj) and typeof(obj) == "table" and typeof(obj.__ref) == "string"
end
exports.isReference = isReference

export type StoreValue = typesModule.StoreValue
export type StoreObject = typesModule.StoreObject

local function isDocumentNode(value: any): boolean
	return isNonNullObject(value)
		and (value :: DocumentNode).kind == "Document"
		and Array.isArray((value :: DocumentNode).definitions)
end
exports.isDocumentNode = isDocumentNode

local function isStringValue(value: ValueNode): boolean
	return value.kind == "StringValue"
end

local function isBooleanValue(value: ValueNode): boolean
	return value.kind == "BooleanValue"
end

local function isIntValue(value: ValueNode): boolean
	return value.kind == "IntValue"
end

local function isFloatValue(value: ValueNode): boolean
	return value.kind == "FloatValue"
end

local function isVariable(value: ValueNode): boolean
	return value.kind == "Variable"
end

local function isObjectValue(value: ValueNode): boolean
	return value.kind == "ObjectValue"
end

local function isListValue(value: ValueNode): boolean
	return value.kind == "ListValue"
end

local function isEnumValue(value: ValueNode): boolean
	return value.kind == "EnumValue"
end

local function isNullValue(value: ValueNode): boolean
	return value.kind == "NullValue"
end

local function valueToObjectRepresentation(argObj: any, name: NameNode, value: ValueNode, variables: Object?): ()
	if isIntValue(value) or isFloatValue(value) then
		argObj[tostring(name.value)] = tonumber((value :: (IntValueNode | FloatValueNode)).value)
	elseif isBooleanValue(value) or isStringValue(value) then
		argObj[tostring(name.value)] = (value :: (BooleanValueNode | StringValueNode)).value
	elseif isObjectValue(value) then
		local nestedArgObj = {}
		Array.map((value :: ObjectValueNode).fields, function(obj)
			valueToObjectRepresentation(nestedArgObj, obj.name, obj.value, variables)
			return nil
		end)
		argObj[tostring(name.value)] = nestedArgObj
	elseif isVariable(value) then
		local variableValue = (Boolean.toJSBoolean(variables) and variables or ({} :: any))[tostring(
			(value :: VariableNode).name.value
		)]
		argObj[tostring(name.value)] = variableValue
	elseif isListValue(value) then
		argObj[tostring(name.value)] = Array.map((value :: ListValueNode).values, function(listValue)
			local nestedArgArrayObj = {}
			valueToObjectRepresentation(nestedArgArrayObj, name, listValue, variables)
			return (nestedArgArrayObj :: any)[tostring(name.value)]
		end)
	elseif isEnumValue(value) then
		argObj[tostring(name.value)] = (value :: EnumValueNode).value
	elseif isNullValue(value) then
		argObj[tostring(name.value)] = nil
	else
		error(
			InvariantError.new(
				tostring(('The inline argument "%s" of kind "%s"'):format(name.value, (value :: any).kind))
					.. "is not supported. Use variables instead of inline arguments to "
					.. "overcome this limitation."
			)
		)
	end
end
exports.valueToObjectRepresentation = valueToObjectRepresentation

local function storeKeyNameFromField(field: FieldNode, variables: Object?): string
	local directivesObj: any = nil
	if field.directives then
		directivesObj = {}
		Array.forEach((field.directives :: any) :: Array<DirectiveNode>, function(directive)
			directivesObj[directive.name.value] = {}

			if directive.arguments then
				Array.forEach(directive.arguments, function(ref)
					local name, value = ref.name, ref.value
					valueToObjectRepresentation(directivesObj[directive.name.value], name, value, variables)
				end)
			end
		end)
	end

	local argObj: any = nil
	if field.arguments and #(field.arguments :: Array<any>) > 0 then
		argObj = {}
		Array.forEach(field.arguments :: Array<any>, function(ref)
			local name, value = ref.name, ref.value
			valueToObjectRepresentation(argObj, name, value, variables)
		end)
	end

	return getStoreKeyName(field.name.value, argObj, directivesObj)
end
exports.storeKeyNameFromField = storeKeyNameFromField

export type Directives = typesModule.Directives

local KNOWN_DIRECTIVES: Array<string> = {
	"connection",
	"include",
	"skip",
	"client",
	"rest",
	"export",
}

-- ROBLOX deviation: function in Lua can't have additional properties. Using callable table instead
getStoreKeyName = Object.assign(
	setmetatable({}, {
		__call = function(_self, fieldName: string, args: (Record<string, any> | nil)?, directives: Directives?): string
			if
				Boolean.toJSBoolean(args)
				and Boolean.toJSBoolean(directives)
				and Boolean.toJSBoolean((directives :: Directives)["connection"])
				and Boolean.toJSBoolean((directives :: Directives)["connection"]["key"])
			then
				if
					Boolean.toJSBoolean((directives :: Directives)["connection"]["filter"])
					and #((directives :: Directives)["connection"]["filter"] :: Array<string>) > 0
				then
					local filterKeys
					if Boolean.toJSBoolean((directives :: Directives)["connection"]["filter"]) then
						filterKeys = (directives :: Directives)["connection"]["filter"] :: Array<string>
					else
						filterKeys = {}
					end
					Array.sort(filterKeys, nil)

					local filteredArgs = {} :: { [string]: any }
					Array.forEach(filterKeys, function(key)
						filteredArgs[key] = (args :: Record<string, any>)[key]
					end)

					return ("%s(%s)"):format((directives :: Directives)["connection"]["key"], stringify(filteredArgs))
				else
					return (directives :: Directives)["connection"]["key"]
				end
			end

			local completeFieldName: string = fieldName

			if Boolean.toJSBoolean(args) then
				-- We can't use `JSON.stringify` here since it's non-deterministic,
				-- and can lead to different store key names being created even though
				-- the `args` object used during creation has the same properties/values.
				local stringifiedArgs: string = stringify(args :: Record<string, any>)
				completeFieldName ..= ("(%s)"):format(stringifiedArgs)
			end

			if Boolean.toJSBoolean(directives) then
				Array.forEach(Object.keys(directives :: Directives), function(key)
					if Array.indexOf(KNOWN_DIRECTIVES, key) ~= -1 then
						return
					end
					if
						Boolean.toJSBoolean((directives :: Directives)[key])
						and Boolean.toJSBoolean(#Object.keys((directives :: Directives)[key]))
					then
						completeFieldName ..= ("@%s(%s)"):format(key, stringify((directives :: Directives)[key]))
					else
						completeFieldName ..= ("@%s"):format(key)
					end
				end)
			end

			return completeFieldName
		end,
	}) :: any,
	{
		setStringify = function(self, s: typeof(stringify))
			local previous = stringify
			stringify = s
			return previous
		end,
	}
)
exports.getStoreKeyName = getStoreKeyName

-- Default stable JSON.stringify implementation. Can be updated/replaced with
-- something better by calling getStoreKeyName.setStringify.
function stringify(value: any): string
	--[[
		ROBLOX deviation:
		HttpService:JSONEncode doesn't take second 'replacer' param
		Stringifying manually with key sorting
		original code:
		return JSON.stringify(value, stringifyReplacer)
	]]
	if not isNonNullObject(value) then
		return HttpService:JSONEncode(value)
	end
	local entries = Array.map(Array.sort(Object.keys(value), nil), function(key)
		return { key, stringify(value[key]) }
	end)

	if Array.isArray(value) then
		return ([=[[%s]]=]):format(Array.join(
			Array.map(entries, function(entry)
				return entry[2]
			end),
			","
		))
	end
	return ([[{%s}]]):format(Array.join(
		Array.map(entries, function(entry)
			return ([["%s":%s]]):format(entry[1], entry[2])
		end),
		","
	))

	-- Array.join(Array.map(Array.sort(Object.keys(value)), function(key)
	-- 	return ([["%s":%s]]):format(key, stringify(value[key]))
	-- end), ","))
end

-- local function _stringifyReplacer(_key: string, value: any): any
-- 	if isNonNullObject(value) and not Array.isArray(value) then
-- 		value = Array.reduce(Array.sort(Object.keys(value)), function(copy, key)
-- 			copy[key] = value[key]
-- 			return copy
-- 		end, {} :: Record<string, any>)
-- 	end
-- 	return value
-- end

local function argumentsObjectFromField(field: FieldNode | DirectiveNode, variables: Record<string, any>): Object | nil
	if Boolean.toJSBoolean(field.arguments) and Boolean.toJSBoolean(#(field.arguments :: Array<any>)) then
		local argObj: Object = {}
		Array.forEach(field.arguments :: Array<any>, function(ref)
			local name, value = ref.name, ref.value
			valueToObjectRepresentation(argObj, name, value, variables)
		end)
		return argObj
	end
	return nil
end
exports.argumentsObjectFromField = argumentsObjectFromField

local function resultKeyNameFromField(field: FieldNode): string
	-- ROBLOX deviation: nil check to avoid casting
	if Boolean.toJSBoolean(field.alias) then
		return (field.alias :: NameNode).value
	else
		return field.name.value
	end
end
exports.resultKeyNameFromField = resultKeyNameFromField

local function getTypenameFromResult(
	result: Record<string, any>,
	selectionSet: SelectionSetNode,
	fragmentMap: FragmentMap
): string | nil
	if typeof(result.__typename) == "string" then
		return result.__typename
	end

	for _, selection in ipairs(selectionSet.selections) do
		if isField(selection) then
			if (selection :: FieldNode).name.value == "__typename" then
				return result[resultKeyNameFromField(selection :: FieldNode)]
			end
		else
			local typename = getTypenameFromResult(
				result,
				getFragmentFromSelection(selection, fragmentMap).selectionSet,
				fragmentMap
			)

			if typeof(typename) == "string" then
				return typename
			end
		end
	end
	return nil
end
exports.getTypenameFromResult = getTypenameFromResult

function isField(selection: SelectionNode): boolean
	return selection.kind == "Field"
end
exports.isField = isField

local function isInlineFragment(selection: SelectionNode): boolean
	return selection.kind == "InlineFragment"
end
exports.isInlineFragment = isInlineFragment

export type VariableValue = typesModule.VariableValue

return exports
