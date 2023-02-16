-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/typedefs-mergers/fields.ts
local Packages = script.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: import as type, import from different file to avoid circular dependency
-- local Config = require(script.Parent["merge-typedefs.js"]).Config
local mergeTypedefsModule = require(script.Parent["merge-typedefs_types"])
type Config = mergeTypedefsModule.Config
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import as types
-- local FieldDefinitionNode = graphqlModule.FieldDefinitionNode
-- local InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
-- local TypeNode = graphqlModule.TypeNode
-- local NameNode = graphqlModule.NameNode
type FieldDefinitionNode = graphqlModule.FieldDefinitionNode
type InputValueDefinitionNode = graphqlModule.InputValueDefinitionNode
type TypeNode = graphqlModule.TypeNode
type NameNode = graphqlModule.NameNode
-- ROBLOX deviation END
-- ROBLOX deviation START: fix import
-- local utilsJsModule = require(script.Parent["utils.js"])
local utilsJsModule = require(script.Parent.utils)
-- ROBLOX deviation END
local extractType = utilsJsModule.extractType
local isWrappingTypeNode = utilsJsModule.isWrappingTypeNode
local isListTypeNode = utilsJsModule.isListTypeNode
local isNonNullTypeNode = utilsJsModule.isNonNullTypeNode
local printTypeNode = utilsJsModule.printTypeNode
-- ROBLOX deviation START: fix imports
local mergeDirectives = require(script.Parent.directives).mergeDirectives
local compareNodes = require(Packages.Utils).compareNodes
local mergeArguments = require(script.Parent.arguments).mergeArguments
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional types
type ReadonlyArray<T> = Array<T>
type NonNullTypeNode = graphqlModule.NonNullTypeNode
type ListTypeNode = graphqlModule.ListTypeNode
-- ROBLOX deviation END
-- ROBLOX deviation START: predefine variables
local preventConflicts
local safeChangeForFieldType
-- ROBLOX deviation END
local function fieldAlreadyExists(fieldsArr: ReadonlyArray<any>, otherField: any, config: Config?): boolean
	local result: FieldDefinitionNode | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] = Array.find(
		fieldsArr,
		function(field)
			return field.name.value == otherField.name.value
		end
	) --[[ ROBLOX CHECK: check if 'fieldsArr' is an Array ]]
	-- ROBLOX deviation START: need to assert value exists
	-- if
	-- 	Boolean.toJSBoolean(
	-- 		if Boolean.toJSBoolean(result)
	-- 			then not Boolean.toJSBoolean(
	-- 				if typeof(config) == "table" then config.ignoreFieldConflicts else nil
	-- 			)
	-- 			else result
	-- 	)
	-- then
	if result and not (config and Boolean.toJSBoolean(config.ignoreFieldConflicts)) then
		-- ROBLOX deviation END
		local t1 = extractType(result.type)
		local t2 = extractType(otherField.type)
		if t1.name.value ~= t2.name.value then
			error(
				Error.new(
					('Field "%s" already defined with a different type. Declared as "%s", but you tried to override with "%s"'):format(
						tostring(otherField.name.value),
						tostring(t1.name.value),
						tostring(t2.name.value)
					)
				)
			)
		end
	end
	return not not Boolean.toJSBoolean(result)
end
local function mergeFields<T>(
	-- ROBLOX deviation START: restore type, change var name
	-- type_,
	-- f1: ReadonlyArray<T> | nil,
	-- f2: ReadonlyArray<T> | nil,
	type_: { name: NameNode },
	f1_: ReadonlyArray<T> | nil,
	f2_: ReadonlyArray<T> | nil,
	-- ROBLOX deviation END
	config: Config?
): Array<T>
	-- ROBLOX deviation START: workaround to narrow types
	local f1 = (f1_ :: any) :: ReadonlyArray<InputValueDefinitionNode | FieldDefinitionNode> | nil
	local f2 = (f2_ :: any) :: ReadonlyArray<InputValueDefinitionNode | FieldDefinitionNode> | nil
	-- ROBLOX deviation END
	local result: Array<T> = {}
	if
		f2 ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		-- ROBLOX deviation START: cannot insert multiple items, use concat
		-- table.insert(
		-- 	result,
		-- 	error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...f2 ]]
		-- ) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
		result = Array.concat(result, f2)
		-- ROBLOX deviation END
	end
	if
		f1 ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		for _, field in f1 do
			if Boolean.toJSBoolean(fieldAlreadyExists(result, field, config)) then
				local existing: any = Array.find(result, function(f: any)
					return f.name.value == (field :: any).name.value
				end) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
				-- ROBLOX deviation START: assertion that config exist is required
				-- if
				-- 	not Boolean.toJSBoolean(
				-- 		if typeof(config) == "table" then config.ignoreFieldConflicts else nil
				-- 	)
				-- then
				-- 	if
				-- 		Boolean.toJSBoolean(
				-- 			if typeof(config) == "table" then config.throwOnConflict else nil
				-- 		)
				-- 	then
				if not (config and Boolean.toJSBoolean(config.ignoreFieldConflicts)) then
					if config and Boolean.toJSBoolean(config.throwOnConflict) then
						-- ROBLOX deviation END
						preventConflicts(type_, existing, field, false)
					else
						preventConflicts(type_, existing, field, true)
					end
					if
						Boolean.toJSBoolean((function()
							local ref = isNonNullTypeNode(field.type)
							return if Boolean.toJSBoolean(ref)
								then not Boolean.toJSBoolean(isNonNullTypeNode(existing.type))
								else ref
						end)())
					then
						existing.type = field.type
					end
				end
				existing.arguments = mergeArguments(
					-- ROBLOX deviation START: explicit cast, prefer if then else
					-- Boolean.toJSBoolean(field["arguments"]) and field["arguments"] or {},
					-- Boolean.toJSBoolean(existing.arguments) and existing.arguments or {},
					if Boolean.toJSBoolean((field :: any).arguments) then (field :: any).arguments else {},
					if Boolean.toJSBoolean(existing.arguments) then existing.arguments else {},
					-- ROBLOX deviation END
					config
				)
				existing.directives = mergeDirectives(field.directives, existing.directives, config)
				-- ROBLOX deviation START: prefer if then else
				-- existing.description = Boolean.toJSBoolean(field.description) and field.description
				-- 	or existing.description
				existing.description = if Boolean.toJSBoolean(field.description)
					then field.description
					else existing.description
				-- ROBLOX deviation END
			else
				-- ROBLOX deviation START: explicit cast
				-- table.insert(result, field) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
				table.insert(result, (field :: any) :: T)
				-- ROBLOX deviation END
			end
		end
	end
	-- ROBLOX deviation START: assert config exixts
	-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(config) then config.sort else config) then
	if config and Boolean.toJSBoolean(config.sort) then
		-- ROBLOX deviation END
		Array.sort(result, compareNodes) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
	end
	-- ROBLOX deviation START: assert configs and config.exclusions exist
	-- if Boolean.toJSBoolean(if Boolean.toJSBoolean(config) then config.exclusions else config) then
	if config and config.exclusions then
		-- ROBLOX deviation END
		local exclusions = config.exclusions
		return Array.filter(result, function(field)
			return not Boolean.toJSBoolean(
				Array.includes(exclusions, ("%s.%s"):format(tostring(type_.name.value), tostring(field.name.value))) --[[ ROBLOX CHECK: check if 'exclusions' is an Array ]]
			)
		end) --[[ ROBLOX CHECK: check if 'result' is an Array ]]
	end
	return result
end
exports.mergeFields = mergeFields
-- ROBLOX deviation START: predeclared function
-- local function preventConflicts(
function preventConflicts(
	-- ROBLOX deviation END
	-- ROBLOX deviation START: restore missing type
	-- type_,
	type_: { name: NameNode },
	-- ROBLOX deviation END
	a: FieldDefinitionNode | InputValueDefinitionNode,
	b: FieldDefinitionNode | InputValueDefinitionNode,
	ignoreNullability_: boolean?
)
	local ignoreNullability: boolean = if ignoreNullability_ ~= nil then ignoreNullability_ else false
	local aType = printTypeNode(a.type)
	local bType = printTypeNode(b.type)

	if aType ~= bType and not Boolean.toJSBoolean(safeChangeForFieldType(a.type, b.type, ignoreNullability)) then
		error(
			Error.new(
				("Field '%s.%s' changed type from '%s' to '%s'"):format(
					tostring(type_.name.value),
					tostring(a.name.value),
					tostring(aType),
					tostring(bType)
				)
			)
		)
	end
end
-- ROBLOX deviation START: predeclared function
-- local function safeChangeForFieldType(
function safeChangeForFieldType(
	-- ROBLOX deviation END
	oldType: TypeNode,
	newType: TypeNode,
	ignoreNullability_: boolean?
): boolean
	local ignoreNullability: boolean = if ignoreNullability_ ~= nil then ignoreNullability_ else false
	-- both are named
	if
		not Boolean.toJSBoolean(isWrappingTypeNode(oldType)) and not Boolean.toJSBoolean(isWrappingTypeNode(newType))
	then
		-- ROBLOX deviation START: add workaround. In JS if both are Object, toString will return [object Object] making them equal, in lua they differ
		if (typeof(oldType) == "table" and #oldType == 0) and (typeof(newType) == "table" and #newType == 0) then
			return true
		end
		-- ROBLOX deviation END
		return tostring(oldType) == tostring(newType)
	end -- new is non-null
	if Boolean.toJSBoolean(isNonNullTypeNode(newType)) then
		local ofType = if Boolean.toJSBoolean(isNonNullTypeNode(oldType))
			-- ROBLOX deviation START: explicit cast
			-- then oldType.type
			then (oldType :: NonNullTypeNode).type
			-- ROBLOX deviation END
			else oldType
		-- ROBLOX deviation START: explicit cast
		-- return safeChangeForFieldType(ofType, newType.type)
		return safeChangeForFieldType(ofType, (newType :: NonNullTypeNode).type)
		-- ROBLOX deviation END
	end -- old is non-null
	if Boolean.toJSBoolean(isNonNullTypeNode(oldType)) then
		return safeChangeForFieldType(newType, oldType, ignoreNullability)
	end -- old is list
	if Boolean.toJSBoolean(isListTypeNode(oldType)) then
		-- ROBLOX deviation START: remove shadowed variables
		-- local ref = isListTypeNode(newType)
		-- local ref = if Boolean.toJSBoolean(ref)
		-- 	then safeChangeForFieldType(oldType.type, newType.type)
		-- 	else ref
		-- return Boolean.toJSBoolean(ref) and ref
		-- 	or (function()
		-- 		local ref = isNonNullTypeNode(newType)
		-- 		return if Boolean.toJSBoolean(ref)
		-- 			then safeChangeForFieldType(oldType, newType["type"])
		-- 			else ref
		-- 	end)()
		return (
			isListTypeNode(newType)
			and safeChangeForFieldType((oldType :: ListTypeNode).type, (newType :: ListTypeNode).type)
		)
			or (
				isNonNullTypeNode(newType)
				and safeChangeForFieldType(oldType :: ListTypeNode, (newType :: NonNullTypeNode).type)
			)
		-- ROBLOX deviation END
	end
	return false
end
return exports
