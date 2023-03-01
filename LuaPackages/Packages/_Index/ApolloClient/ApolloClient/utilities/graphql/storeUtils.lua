-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/graphql/storeUtils.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
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
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type ValueNode = graphqlModule.ValueNode
type SelectionNode = graphqlModule.SelectionNode
type NameNode = graphqlModule.NameNode
type SelectionSetNode = graphqlModule.SelectionSetNode
type DocumentNode = graphqlModule.DocumentNode

local InvariantError = require(srcWorkspace.jsutils.invariant).InvariantError
local isNonNullObject = require(script.Parent.Parent.common.objects).isNonNullObject
local fragmentsModule = require(script.Parent.fragments)
local objectKeysForEach = require(srcWorkspace.luaUtils.objectKeysForEach)
type FragmentMap = fragmentsModule.FragmentMap
local getFragmentFromSelection = fragmentsModule.getFragmentFromSelection

export type Reference = typesModule.Reference

local function makeReference(id: string): Reference
	return { __ref = tostring(id) }
end
exports.makeReference = makeReference

local function isReference(obj: any): boolean
	-- ROBLOX deviation START: remove Boolean, convert typeof to type
	return type(obj) == "table" and type(obj.__ref) == "string"
	-- ROBLOX deviation END
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
	-- ROBLOX deviation START: do not convert NameNode values to strings, they are already strings
	if isIntValue(value) or isFloatValue(value) then
		argObj[name.value] = tonumber((value :: (IntValueNode | FloatValueNode)).value)
	elseif isBooleanValue(value) or isStringValue(value) then
		argObj[name.value] = (value :: (BooleanValueNode | StringValueNode)).value
	elseif isObjectValue(value) then
		local nestedArgObj = {}
		Array.map((value :: ObjectValueNode).fields, function(obj)
			valueToObjectRepresentation(nestedArgObj, obj.name, obj.value, variables)
			return nil
		end)
		argObj[name.value] = nestedArgObj
	elseif isVariable(value) then
		-- ROBLOX deviation START: remove Boolean
		local variableValue = (variables or ({} :: any))[(value :: VariableNode).name.value]
		-- ROBLOX deviation END
		argObj[name.value] = variableValue
	elseif isListValue(value) then
		argObj[name.value] = Array.map((value :: ListValueNode).values, function(listValue)
			local nestedArgArrayObj = {}
			valueToObjectRepresentation(nestedArgArrayObj, name, listValue, variables)
			return (nestedArgArrayObj :: any)[name.value]
		end)
	elseif isEnumValue(value) then
		argObj[name.value] = (value :: EnumValueNode).value
	elseif isNullValue(value) then
		argObj[name.value] = nil
	else
		error(
			InvariantError.new(
				tostring(('The inline argument "%s" of kind "%s"'):format(name.value, (value :: any).kind))
					.. "is not supported. Use variables instead of inline arguments to "
					.. "overcome this limitation."
			)
		)
	end
	-- ROBLOX deviation END
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
		__call = function(
			_self,
			fieldName: string,
			args: (Record<string, any> | nil)?,
			directives: Directives?
		): string
			-- ROBLOX deviation START: remove Boolean
			if
				args
				and directives
				and (directives :: Directives)["connection"]
				and (directives :: Directives)["connection"]["key"]
			then
				if
					(directives :: Directives)["connection"]["filter"]
					and #((directives :: Directives)["connection"]["filter"] :: Array<string>) > 0
				then
					local filterKeys
					if (directives :: Directives)["connection"]["filter"] then
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
			-- ROBLOX deviation END

			local completeFieldName: string = fieldName

			-- ROBLOX deviation START: remove Boolean
			if args then
				-- ROBLOX deviation END
				-- We can't use `JSON.stringify` here since it's non-deterministic,
				-- and can lead to different store key names being created even though
				-- the `args` object used during creation has the same properties/values.
				local stringifiedArgs: string = stringify(args :: Record<string, any>)
				completeFieldName ..= ("(%s)"):format(stringifiedArgs)
			end

			-- ROBLOX deviation START: remove Boolean
			if directives then
				-- ROBLOX deviation END
				-- ROBLOX deviation START: use helper to optimize Object.keys().forEach
				objectKeysForEach(directives :: Directives, function(key)
					-- ROBLOX deviation END
					if Array.indexOf(KNOWN_DIRECTIVES, key) ~= -1 then
						return
					end
					-- ROBLOX deviation START: remove Boolean
					if (directives :: Directives)[key] and next((directives :: Directives)[key]) ~= nil then
						-- ROBLOX deviation END
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
	-- ROBLOX deviation START: remove Boolean
	if field.arguments and #(field.arguments :: Array<any>) > 0 then
		-- ROBLOX deviation END
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
	-- ROBLOX deviation START: remove Boolean
	if field.alias then
		-- ROBLOX deviation END
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
				(getFragmentFromSelection(selection, fragmentMap) :: (InlineFragmentNode | FragmentDefinitionNode)).selectionSet,
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
