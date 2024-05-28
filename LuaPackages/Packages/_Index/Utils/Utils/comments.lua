-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/comments.ts
type void = nil --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau `void` equivalent when supported ]]
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
-- ROBLOX deviation START: import type
-- local Maybe = require(script.Parent["types.js"]).Maybe
local typesModule = require(script.Parent.types)
type Maybe<T> = typesModule.Maybe<T>
-- ROBLOX deviation END
local graphqlModule = require(Packages.GraphQL)
-- ROBLOX deviation START: import types
-- local StringValueNode = graphqlModule.StringValueNode
-- local FieldDefinitionNode = graphqlModule.FieldDefinitionNode
-- local ASTNode = graphqlModule.ASTNode
-- local NameNode = graphqlModule.NameNode
-- local TypeNode = graphqlModule.TypeNode
type StringValueNode = graphqlModule.StringValueNode
type FieldDefinitionNode = graphqlModule.FieldDefinitionNode
type ASTNode = graphqlModule.ASTNode
type NameNode = graphqlModule.NameNode
type TypeNode = graphqlModule.TypeNode
-- ROBLOX deviation END
local visit = graphqlModule.visit
-- ROBLOX deviation START: import types
-- local DefinitionNode = graphqlModule.DefinitionNode
-- local Location = graphqlModule.Location
type DefinitionNode = graphqlModule.DefinitionNode
type Location = graphqlModule.Location
-- ROBLOX deviation END
local TokenKind = graphqlModule.TokenKind
-- ROBLOX deviation START: import type
-- local NamedTypeNode = graphqlModule.NamedTypeNode
type NamedTypeNode = graphqlModule.NamedTypeNode
-- ROBLOX deviation END
-- ROBLOX deviation START: importing from GraphQL Package
-- local graphqlLanguageVisitorModule = require(Packages.graphql.language.visitor)
local graphqlLanguageVisitorModule = require(Packages.GraphQL)
-- ROBLOX deviation END
type ASTVisitor = graphqlLanguageVisitorModule.ASTVisitor
-- ROBLOX deviation START: add predeclared variables
local pushComment
local isFieldDefinitionNode
local getComment: (node: { loc: Location? }) -> nil | string
local getLeadingCommentBlock
local dedentBlockStringValue
local getBlockStringIndentation
local isBlank
local leadingWhitespace
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional imports
local String = LuauPolyfill.String
type ReadonlyArray<T> = Array<T>
-- ROBLOX deviation END
export type NamedDefinitionNode = DefinitionNode & { name: NameNode? }
local MAX_LINE_LENGTH = 80
local commentsRegistry: { [string]: Array<string> } = {}
local function resetComments(): ()
	commentsRegistry = {}
end
exports.resetComments = resetComments
local function collectComment(node: NamedDefinitionNode): ()
	local entityName = if typeof(node.name) == "table" then node.name.value else nil
	if
		entityName == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
	then
		return
	end
	-- ROBLOX deviation START: needs cast
	-- pushComment(node, entityName)
	-- ROBLOX FIXME Luau: should narrow type
	pushComment(node, entityName :: string)
	-- ROBLOX deviation END
	local condition_ = node.kind
	if condition_ == "EnumTypeDefinition" then
		-- ROBLOX deviation START: needs casts
		-- 		if Boolean.toJSBoolean(node.values) then
		-- 			for _, value in node.values do
		-- 				pushComment(value, entityName, value.name.value)
		if Boolean.toJSBoolean((node :: any).values) then
			for _, value in (node :: any).values do
				pushComment(value, entityName :: string, value.name.value)
				-- ROBLOX deviation END
			end
		end
	elseif
		condition_ == "ObjectTypeDefinition"
		or condition_ == "InputObjectTypeDefinition"
		or condition_ == "InterfaceTypeDefinition"
	then
		-- ROBLOX deviation START: needs casts
		-- 		if Boolean.toJSBoolean(node.fields) then
		-- 			for _, field in node.fields do
		-- 				pushComment(field, entityName, field.name.value)
		if Boolean.toJSBoolean((node :: any).fields) then
			for _, field in (node :: any).fields do
				pushComment(field, entityName :: string, field.name.value)
				-- ROBLOX deviation END
				if
					Boolean.toJSBoolean((function()
						local ref = isFieldDefinitionNode(field)
						return if Boolean.toJSBoolean(ref) then field.arguments else ref
					end)())
				then
					for _, arg in field.arguments do
						-- ROBLOX deviation START: needs cast
						-- pushComment(arg, entityName, field.name.value, arg.name.value)
						pushComment(arg, entityName :: string, field.name.value, arg.name.value)
						-- ROBLOX deviation END
					end
				end
			end
		end
	end
end
exports.collectComment = collectComment
-- ROBLOX deviation START: predeclare function
-- local function pushComment(node: any, entity: string, field: string?, argument: string?): ()
function pushComment(node: any, entity: string, field: string?, argument: string?): ()
	-- ROBLOX deviation END
	local comment = getComment(node)
	-- ROBLOX deviation START: fix .length conversion
	-- if typeof(comment) ~= "string" or comment.length == 0 then
	if typeof(comment) ~= "string" or #comment == 0 then
		-- ROBLOX deviation END
		return
	end
	local keys = { entity }
	if Boolean.toJSBoolean(field) then
		-- ROBLOX deviation START: needs cast
		-- table.insert(keys, field) --[[ ROBLOX CHECK: check if 'keys' is an Array ]]
		table.insert(keys, field :: string)
		-- ROBLOX deviation END
		if Boolean.toJSBoolean(argument) then
			-- ROBLOX deviation START: needs cast
			-- table.insert(keys, argument) --[[ ROBLOX CHECK: check if 'keys' is an Array ]]
			table.insert(keys, argument :: string)
			-- ROBLOX deviation END
		end
	end
	local path = Array.join(keys, ".") --[[ ROBLOX CHECK: check if 'keys' is an Array ]]
	if not Boolean.toJSBoolean(commentsRegistry[tostring(path)]) then
		commentsRegistry[tostring(path)] = {}
	end
	-- ROBLOX deviation START: needs cast
	-- table.insert(commentsRegistry[tostring(path)], comment) --[[ ROBLOX CHECK: check if 'commentsRegistry[path]' is an Array ]]
	table.insert(commentsRegistry[path], comment :: string)
	-- ROBLOX deviation END
end
exports.pushComment = pushComment
local function printComment(comment: string): string
	-- ROBLOX deviation START: fix implementation
	-- 	return "\n# "
	-- 		.. tostring(
	-- 			comment:replace(
	-- 				error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /\n/g ]]
	-- 				"\n# "
	-- 			)
	-- 		)
	local replaced = comment:gsub("\n", "\n# ")
	return "\n# " .. replaced
	-- ROBLOX deviation END
end
exports.printComment = printComment
--[[*
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
--[[*
 * NOTE: ==> This file has been modified just to add comments to the printed AST
 * This is a temp measure, we will move to using the original non modified printer.js ASAP.
 ]]
--[[*
 * Given maybeArray, print an empty string if it is null or empty, otherwise
 * print all items together separated by separator if provided
 ]]
local function join(
	-- ROBLOX deviation START: fix type
	-- maybeArray: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly any[] ]]?,
	maybeArray: Array<any>,
	-- ROBLOX deviation END
	separator: string?
	-- ROBLOX deviation START: explicitly return type
	-- )
): string
	-- ROBLOX deviation END
	return if Boolean.toJSBoolean(maybeArray)
		then Array.join(
			Array.filter(maybeArray, function(x)
				-- ROBLOX deviation START: fix implementation
				-- return x
				return Boolean.toJSBoolean(x)
				-- ROBLOX deviation END
			end), --[[ ROBLOX CHECK: check if 'maybeArray' is an Array ]]
			Boolean.toJSBoolean(separator) and separator or ""
		)
		else ""
end
local function hasMultilineItems(maybeArray: Maybe<ReadonlyArray<string>>): boolean
	-- ROBLOX deviation START: fix implementation
	-- 	local ref = if typeof(maybeArray) == "table" then maybeArray.some else nil
	-- 	local ref = if ref ~= nil
	-- 		then ref(function(str)
	-- 			return Array.includes(str, "\n") --[[ ROBLOX CHECK: check if 'str' is an Array ]]
	local ref = if typeof(maybeArray) == "table"
		then Array.some(maybeArray, function(str)
			return String.includes(str, "\n")
			-- ROBLOX deviation END
		end)
		else nil
	return if ref ~= nil then ref else false
end
type VisitFn = (
	-- ROBLOX deviation START: add self param
	visitor: any,
	-- ROBLOX deviation END
	node: { description: StringValueNode?, name: NameNode?, type: TypeNode?, kind: string },
	key: string,
	parent: NamedTypeNode,
	path: Array<string>,
	ancestors: Array<NamedTypeNode>
) -> any
local function addDescription(cb: VisitFn): VisitFn
	return function(
		-- ROBLOX deviation START: add self param
		visitor: any,
		-- ROBLOX deviation END
		node: { description: StringValueNode?, name: NameNode?, type: TypeNode?, kind: string },
		_key: string,
		_parent: NamedTypeNode,
		path: Array<string>,
		ancestors: Array<NamedTypeNode>
	)
		local keys: Array<string> = {}
		-- ROBLOX deviation START: workaround for passing nil value as initial
		-- 		local parent = path.reduce(
		-- 			function(prev, key)
		-- 				if
		-- 					Boolean.toJSBoolean((function()
		-- 						local ref = Array.includes({ "fields", "arguments", "values" }, key :: any)
		-- 						return if Boolean.toJSBoolean(ref) then prev.name else ref
		-- 					end)())
		-- 				then
		-- 					table.insert(keys, prev.name.value) --[[ ROBLOX CHECK: check if 'keys' is an Array ]]
		-- 				end
		-- 				return prev[tostring(key)]
		-- 			end,
		-- 			ancestors[
		-- 				1 --[[ ROBLOX adaptation: added 1 to array index ]]
		-- 			]
		-- 		)
		local parent = Array.reduce(path, function(prev, key)
			if
				key ~= Object.None
				and Array.includes({ "fields", "arguments", "values" }, key :: any)
				and Boolean.toJSBoolean(prev.name)
			then
				table.insert(keys, prev.name.value)
			end
			return (if prev == Object.None then key else prev[key]) :: any
		end, ancestors[1] or Object.None :: any)
		-- ROBLOX deviation END
		local key = Array.join(
			Array.filter(
				-- ROBLOX deviation START: Array.spread not available
				-- Array.concat({}, Array.spread(keys), {
				Array.concat({}, keys, {
					-- ROBLOX deviation END
					if typeof(if typeof(parent) == "table" then parent.name else nil) == "table"
						then (if typeof(parent) == "table" then parent.name else nil).value
						else nil,
				}),
				-- ROBLOX deviation START: fix
				-- Boolean
				Boolean.toJSBoolean
				-- ROBLOX deviation END
			),
			"."
		)
		local items: Array<string> = {}
		-- ROBLOX deviation START: fix implementation of .includes
		-- 		if
		-- 			Boolean.toJSBoolean((function()
		-- 				local ref = Array.includes(node.kind, "Definition") --[[ ROBLOX CHECK: check if 'node.kind' is an Array ]]
		-- 				return if Boolean.toJSBoolean(ref) then commentsRegistry[tostring(key)] else ref
		-- 			end)())
		-- 		then
		if String.includes(node.kind, "Definition") and Boolean.toJSBoolean(commentsRegistry[key]) then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix implementation
			-- 			table.insert(
			-- 				items,
			-- 				error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...commentsRegistry[key] ]]
			-- 			) --[[ ROBLOX CHECK: check if 'items' is an Array ]]
			items = Array.concat(items, commentsRegistry[key])
			-- ROBLOX deviation END
		end
		return join(
			Array.concat(
				{},
				-- ROBLOX deviation START: Array.spread not available
				-- Array.spread(Array.map(items, printComment) --[[ ROBLOX CHECK: check if 'items' is an Array ]]),
				Array.map(items, printComment),
				-- ROBLOX deviation END
				-- ROBLOX deviation START: add or "" and self param
				-- { node.description, cb(node, _key, _parent, path, ancestors) }
				{ node.description or "", cb(visitor, node, _key, _parent, path, ancestors) :: any } :: any
				-- ROBLOX deviation END
			),
			"\n"
		)
	end
end
local function indent(maybeString: string?)
	-- ROBLOX deviation START: fix implementation
	-- 	return if Boolean.toJSBoolean(maybeString)
	-- 		then ("  %s"):format(
	-- 			tostring(
	-- 				maybeString:replace(
	-- 					error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /\n/g ]]
	-- 					"\n  "
	-- 				)
	-- 			)
	-- 		)
	-- 		else maybeString
	if Boolean.toJSBoolean(maybeString) then
		local val = (maybeString :: string):gsub("\n", "\n  ")
		return ("  %s"):format(val)
	else
		return maybeString
	end
	-- ROBLOX deviation END
end
--[[*
 * Given array, print each item on its own line, wrapped in an
 * indented "{ }" block.
 ]]
local function block(
	-- ROBLOX deviation START: add proper type
	-- array: any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly any[] ]]?
	array: Array<any> --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ readonly any[] ]]?
	-- ROBLOX deviation END
)
	-- ROBLOX deviation START: fix .length conversion
	-- 	return if Boolean.toJSBoolean(if Boolean.toJSBoolean(array) then array.length ~= 0 else array)
	-- 		then ("{\n%s\n}"):format(tostring(indent(join(array, "\n"))))
	-- 		else ""
	return if array and #array ~= 0 then ("{\n%s\n}"):format(indent(join(array, "\n"))) else ""
	-- ROBLOX deviation END
end
--[[*
 * If maybeString is not null or empty, then wrap with start and end, otherwise
 * print an empty string.
 ]]
-- ROBLOX deviation START: explicitly type end_
-- local function wrap(start: string, maybeString: any, end_)
local function wrap(start: string, maybeString: any, end_: string?)
	-- ROBLOX deviation END
	return if Boolean.toJSBoolean(maybeString)
		-- ROBLOX deviation START: use concatenation
		-- then start + maybeString + (Boolean.toJSBoolean(end_) and end_ or "")
		then start .. tostring(maybeString) .. (Boolean.toJSBoolean(end_) and end_ or "")
		-- ROBLOX deviation END
		else ""
end
--[[*
 * Print a block string in the indented block form by adding a leading and
 * trailing blank line. However, if a block string starts with whitespace and is
 * a single-line, adding a leading blank line would strip that whitespace.
 ]]
local function printBlockString(value: string, isDescription_: boolean?)
	local isDescription: boolean = if isDescription_ ~= nil then isDescription_ else false
	-- ROBLOX deviation START: fix implementation
	-- 	local escaped = value:replace(
	-- 		error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /"""/g ]]
	-- 		'\\"""'
	-- 	)
	-- 	return if (
	-- 			value[
	-- 				1 --[[ ROBLOX adaptation: added 1 to array index ]]
	-- 			] == " " or value[
	-- 				1 --[[ ROBLOX adaptation: added 1 to array index ]]
	-- 			] == "\t"
	-- 		)
	-- 			and Array.indexOf(value, "\n") --[[ ROBLOX CHECK: check if 'value' is an Array ]]
	-- 				== -1
	-- 		then ('"""%s"""'):format(
	-- 			tostring(
	-- 				escaped:replace(
	-- 					error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /"$/ ]]
	-- 					'"\n'
	-- 				)
	-- 			)
	-- 		)
	-- 		else ('"""\n%s\n"""'):format(
	-- 			tostring(if Boolean.toJSBoolean(isDescription) then escaped else indent(escaped))
	-- 		)
	local escaped = value:gsub('"', '\\"""')
	if (value:sub(1, 1) == " " or value:sub(1, 1) == "\t") and String.indexOf(value, "\n") == -1 then
		local replaced = escaped:gsub('"$', '"\n')
		return ('"""%s"""'):format(replaced)
	else
		return ('"""\n%s\n"""'):format(if Boolean.toJSBoolean(isDescription) then escaped else indent(escaped))
	end
	-- ROBLOX deviation END
end
local printDocASTReducer: ASTVisitor = {
	Name = {
		-- ROBLOX deviation START: add self param
		-- leave = function(node)
		leave = function(_self, node)
			-- ROBLOX deviation END
			return node.value
		end,
	},
	Variable = {
		-- ROBLOX deviation START: add self param
		-- leave = function(node)
		leave = function(_self, node)
			-- ROBLOX deviation END
			return "$" .. tostring(node.name)
		end,
	},
	-- Document
	Document = {
		-- ROBLOX deviation START: add self param
		-- leave = function(node)
		leave = function(_self, node)
			-- ROBLOX deviation END
			return join(node.definitions, "\n\n")
		end,
	},
	OperationDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(node)
		leave = function(self, node)
			-- ROBLOX deviation END
			local varDefs = wrap("(", join(node.variableDefinitions, ", "), ")")
			local prefix = join({ node.operation, join({ node.name, varDefs }), join(node.directives, " ") }, " ") -- the query short form.
			return tostring(prefix) .. " " .. tostring(node.selectionSet)
		end,
	},
	VariableDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local variable, type_, defaultValue, directives =
				ref0.variable, ref0.type, ref0.defaultValue, ref0.directives
			return tostring(variable)
				.. ": "
				.. tostring(type_)
				.. tostring(wrap(" = ", defaultValue))
				.. tostring(wrap(" ", join(directives, " ")))
		end,
	},
	SelectionSet = {
		-- ROBLOX deviation START: add self
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local selections = ref0.selections
			return block(selections)
		end,
	},
	Field = {
		leave = function(self, ref0)
			local alias, name, args, directives, selectionSet =
				ref0.alias, ref0.name, ref0.arguments, ref0.directives, ref0.selectionSet
			-- ROBLOX deviation START: use string concatenation
			-- 			local prefix = wrap("", alias, ": ") + name
			-- 			local argsLine = prefix + wrap("(", join(args, ", "), ")")
			local prefix = wrap("", alias, ": ") .. name
			local argsLine = prefix .. wrap("(", join(args, ", "), ")")
			-- ROBLOX deviation END
			if
				argsLine.length
				> MAX_LINE_LENGTH --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
			then
				-- ROBLOX deviation START: use string concatenation
				-- argsLine = prefix + wrap("(\n", indent(join(args, "\n")), "\n)")
				argsLine = prefix .. wrap("(\n", indent(join(args, "\n")), "\n)")
				-- ROBLOX deviation END
			end
			return join({ argsLine, join(directives, " "), selectionSet }, " ")
		end,
	},
	Argument = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, value = ref0.name, ref0.value
			return tostring(name) .. ": " .. tostring(value)
		end,
	},
	-- Fragments
	FragmentSpread = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives = ref0.name, ref0.directives
			return "..." .. tostring(name) .. tostring(wrap(" ", join(directives, " ")))
		end,
	},
	InlineFragment = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local typeCondition, directives, selectionSet = ref0.typeCondition, ref0.directives, ref0.selectionSet
			return join({ "...", wrap("on ", typeCondition), join(directives, " "), selectionSet }, " ")
		end,
	},
	FragmentDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, typeCondition, variableDefinitions, directives, selectionSet =
				ref0.name, ref0.typeCondition, ref0.variableDefinitions, ref0.directives, ref0.selectionSet
			-- ROBLOX deviation START: line comments causing weird Stylua behavior
			-- 			return -- Note: fragment variable definitions are experimental and may be changed
			-- 				-- or removed in the future.
			-- 				("fragment %s%s "):format(tostring(name), tostring(wrap("(", join(variableDefinitions, ", "), ")")))
			-- Note: fragment variable definitions are experimental and may be changed
			-- or removed in the future.
			return ("fragment %s%s "):format(tostring(name), wrap("(", join(variableDefinitions, ", "), ")"))
				-- ROBLOX deviation END
				.. ("on %s %s"):format(tostring(typeCondition), tostring(wrap("", join(directives, " "), " ")))
				.. tostring(selectionSet)
		end,
	},
	-- Value
	IntValue = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local value = ref0.value
			return value
		end,
	},
	FloatValue = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local value = ref0.value
			return value
		end,
	},
	StringValue = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local value, isBlockString = ref0.value, ref0.block
			if Boolean.toJSBoolean(isBlockString) then
				return printBlockString(value)
			end
			-- ROBLOX deviation START: JSON.stringify a string
			-- return JSON.stringify(value)
			local replaced: string = value:gsub("'", "\\'")
			return "'" .. replaced .. "'"
			-- ROBLOX deviation END
		end,
	},
	BooleanValue = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local value = ref0.value
			return if Boolean.toJSBoolean(value) then "true" else "false"
		end,
	},
	NullValue = {
		leave = function()
			return "null"
		end,
	},
	EnumValue = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local value = ref0.value
			return value
		end,
	},
	ListValue = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local values = ref0.values
			return "[" .. tostring(join(values, ", ")) .. "]"
		end,
	},
	ObjectValue = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local fields = ref0.fields
			return "{" .. tostring(join(fields, ", ")) .. "}"
		end,
	},
	ObjectField = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, value = ref0.name, ref0.value
			return tostring(name) .. ": " .. tostring(value)
		end,
	},
	-- Directive
	Directive = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, args = ref0.name, ref0.arguments
			return "@" .. tostring(name) .. tostring(wrap("(", join(args, ", "), ")"))
		end,
	},
	-- Type
	NamedType = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name = ref0.name
			return name
		end,
	},
	ListType = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local type_ = ref0.type
			return "[" .. tostring(type_) .. "]"
		end,
	},
	NonNullType = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local type_ = ref0.type
			return tostring(type_) .. "!"
		end,
	},
	-- Type System Definitions
	SchemaDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0: any)
		leave = function(self, ref0: any)
			-- ROBLOX deviation END
			local directives, operationTypes = ref0.directives, ref0.operationTypes
			return join({ "schema", join(directives, " "), block(operationTypes) }, " ")
		end,
	},
	OperationTypeDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local operation, type_ = ref0.operation, ref0.type
			return tostring(operation) .. ": " .. tostring(type_)
		end,
	},
	ScalarTypeDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives = ref0.name, ref0.directives
			return join({ "scalar", name, join(directives, " ") }, " ")
		end,
	},
	ObjectTypeDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, interfaces, directives, fields = ref0.name, ref0.interfaces, ref0.directives, ref0.fields
			return join({
				"type",
				name,
				wrap("implements ", join(interfaces, " & ")),
				join(directives, " "),
				block(fields),
			}, " ")
		end,
	},
	FieldDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, args, type_, directives = ref0.name, ref0.arguments, ref0.type, ref0.directives
			-- ROBLOX deviation START: use string concatenation
			-- 			return tostring(
			-- 				name
			-- 					+ (
			-- 						if Boolean.toJSBoolean(hasMultilineItems((args :: any) :: Array<string>))
			-- 							then wrap("(\n", indent(join(args, "\n")), "\n)")
			-- 							else wrap("(", join(args, ", "), ")")
			-- 					)
			-- 			) .. ": " .. tostring(type_) .. tostring(wrap(" ", join(directives, " ")))
			return tostring(name)
				.. (if hasMultilineItems((args :: any) :: Array<string>)
					then wrap("(\n", indent(join(args, "\n")), "\n)")
					else wrap("(", join(args, ", "), ")"))
				.. ": "
				.. tostring(type_)
				.. wrap(" ", join(directives, " "))
			-- ROBLOX deviation END
		end,
	},
	InputValueDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, type_, defaultValue, directives = ref0.name, ref0.type, ref0.defaultValue, ref0.directives
			return join({
				tostring(name) .. ": " .. tostring(type_),
				wrap("= ", defaultValue),
				join(directives, " "),
			}, " ")
		end,
	},
	InterfaceTypeDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0: any)
		leave = function(self, ref0: any)
			-- ROBLOX deviation END
			local name, interfaces, directives, fields = ref0.name, ref0.interfaces, ref0.directives, ref0.fields
			return join({
				"interface",
				name,
				wrap("implements ", join(interfaces, " & ")),
				join(directives, " "),
				block(fields),
			}, " ")
		end,
	},
	UnionTypeDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives, types = ref0.name, ref0.directives, ref0.types
			return join({ "union", name, join(directives, " "), wrap("= ", join(types, " | ")) }, " ")
		end,
	},
	EnumTypeDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives, values = ref0.name, ref0.directives, ref0.values
			return join({ "enum", name, join(directives, " "), block(values) }, " ")
		end,
	},
	EnumValueDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives = ref0.name, ref0.directives
			return join({ name, join(directives, " ") }, " ")
		end,
	},
	InputObjectTypeDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives, fields = ref0.name, ref0.directives, ref0.fields
			return join({ "input", name, join(directives, " "), block(fields) }, " ")
		end,
	},
	DirectiveDefinition = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, args, repeatable, locations = ref0.name, ref0.arguments, ref0.repeatable, ref0.locations
			return "directive @"
				.. tostring(name)
				.. tostring(
					if Boolean.toJSBoolean(hasMultilineItems((args :: any) :: Array<string>))
						then wrap("(\n", indent(join(args, "\n")), "\n)")
						else wrap("(", join(args, ", "), ")")
				)
				.. (if Boolean.toJSBoolean(repeatable) then " repeatable" else "")
				.. " on "
				.. tostring(join(locations, " | "))
		end,
	},
	SchemaExtension = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local directives, operationTypes = ref0.directives, ref0.operationTypes
			return join({ "extend schema", join(directives, " "), block(operationTypes) }, " ")
		end,
	},
	ScalarTypeExtension = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives = ref0.name, ref0.directives
			return join({ "extend scalar", name, join(directives, " ") }, " ")
		end,
	},
	ObjectTypeExtension = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, interfaces, directives, fields = ref0.name, ref0.interfaces, ref0.directives, ref0.fields
			return join({
				"extend type",
				name,
				wrap("implements ", join(interfaces, " & ")),
				join(directives, " "),
				block(fields),
			}, " ")
		end,
	},
	InterfaceTypeExtension = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0: any)
		leave = function(self, ref0: any)
			-- ROBLOX deviation END
			local name, interfaces, directives, fields = ref0.name, ref0.interfaces, ref0.directives, ref0.fields
			return join({
				"extend interface",
				name,
				wrap("implements ", join(interfaces, " & ")),
				join(directives, " "),
				block(fields),
			}, " ")
		end,
	},
	UnionTypeExtension = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives, types = ref0.name, ref0.directives, ref0.types
			return join({ "extend union", name, join(directives, " "), wrap("= ", join(types, " | ")) }, " ")
		end,
	},
	EnumTypeExtension = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives, values = ref0.name, ref0.directives, ref0.values
			return join({ "extend enum", name, join(directives, " "), block(values) }, " ")
		end,
	},
	InputObjectTypeExtension = {
		-- ROBLOX deviation START: add self param
		-- leave = function(ref0)
		leave = function(self, ref0)
			-- ROBLOX deviation END
			local name, directives, fields = ref0.name, ref0.directives, ref0.fields
			return join({ "extend input", name, join(directives, " "), block(fields) }, " ")
		end,
	},
}
-- ROBLOX deviation START: fix implemenation
-- local printDocASTReducerWithComments = Array.reduce(Object.keys(printDocASTReducer), function(prev, key)
-- 	return Object.assign({}, prev, {
-- 		[tostring(key)] = {
-- 			leave = addDescription(printDocASTReducer[tostring(key)].leave),
-- 		},
-- 	})
-- end, {} :: typeof(printDocASTReducer)) --[[ ROBLOX CHECK: check if 'Object.keys(printDocASTReducer)' is an Array ]]
local printDocASTReducerWithComments = Array.reduce(
	Object.keys(printDocASTReducer),
	function(prev: typeof(printDocASTReducer), key)
		return Object.assign({}, prev, {
			[key] = {
				leave = addDescription((printDocASTReducer :: any)[key].leave),
			},
		}) :: typeof(printDocASTReducer)
	end,
	{} :: typeof(printDocASTReducer)
)
-- ROBLOX deviation END
--[[*
 * Converts an AST into a string, using one set of reasonable
 * formatting rules.
 ]]
local function printWithComments(ast: ASTNode): string
	return visit(ast, printDocASTReducerWithComments) :: any
end
exports.printWithComments = printWithComments
-- ROBLOX deviation START: predeclare function
-- local function isFieldDefinitionNode(
function isFieldDefinitionNode(
	-- ROBLOX deviation END
	node: any
): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ node is FieldDefinitionNode ]]
	return node.kind == "FieldDefinition"
end -- graphql < v13 and > v15 does not export getDescription
local function getDescription(
	node: { description: StringValueNode?, loc: Location? },
	options: { commentDescriptions: boolean? }?
): string | nil
	if
		node.description ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
	then
		return node.description.value
	end
	if Boolean.toJSBoolean(if typeof(options) == "table" then options.commentDescriptions else nil) then
		return getComment(node)
	end
	-- ROBLOX deviation START: add explicit return
	return nil
	-- ROBLOX deviation END
end
exports.getDescription = getDescription
-- ROBLOX deviation START: predeclare function
-- local function getComment(node: { loc: Location? }): nil | string
function getComment(node: { loc: Location? }): nil | string
	-- ROBLOX deviation END
	local rawValue = getLeadingCommentBlock(node)
	if rawValue ~= nil then
		return dedentBlockStringValue(("\n%s"):format(tostring(rawValue :: string)))
	end
	-- ROBLOX deviation START: add explicit return
	return nil
	-- ROBLOX deviation END
end
exports.getComment = getComment
-- ROBLOX deviation START: predeclare function
-- local function getLeadingCommentBlock(node: { loc: Location? }): void | string
function getLeadingCommentBlock(node: { loc: Location? }): void | string
	-- ROBLOX deviation END
	local loc = node.loc
	if not Boolean.toJSBoolean(loc) then
		return
	end
	local comments = {}
	-- ROBLOX deviation START: needs cast - nil assertion is not working in Luau ATM
	-- local token = loc.startToken.prev
	local token = (loc :: Location).startToken.prev
	-- ROBLOX deviation END
	while
		token ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		and token.kind == TokenKind.COMMENT
		and token.next ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		and token.prev ~= nil --[[ ROBLOX CHECK: loose inequality used upstream ]]
		and token.line + 1 == token.next.line
		and token.line ~= token.prev.line
	do
		-- ROBLOX deviation START: use tostring - js-to-lua issue: https://github.com/Roblox/js-to-lua/issues/835
		-- local value = String(token.value)
		local value = tostring(token.value)
		-- ROBLOX deviation END
		table.insert(comments, value) --[[ ROBLOX CHECK: check if 'comments' is an Array ]]
		token = token.prev
	end
	-- ROBLOX deviation START: use .length properly
	-- 	return if comments.length
	-- 			> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 		then Array.join(Array.reverse(comments), --[[ ROBLOX CHECK: check if 'comments' is an Array ]] "\n")
	-- 		else nil
	return if #comments > 0 then Array.join(Array.reverse(comments), "\n") else nil
	-- ROBLOX deviation END
end
exports.getLeadingCommentBlock = getLeadingCommentBlock
-- ROBLOX deviation START: predeclare function
-- local function dedentBlockStringValue(rawString: string): string
function dedentBlockStringValue(rawString: string): string
	-- ROBLOX deviation END
	-- Expand a block string's raw value into independent lines.
	-- ROBLOX deviation START: fix implementation
	-- 	local lines = rawString:split(
	-- 		error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /\r\n|[\n\r]/g ]]
	-- 	) -- Remove common indentation from all lines but first.
	local lines = String.split(rawString, { "\r\n", "\n", "\r" })
	-- Remove common indentation from all lines but first.
	-- ROBLOX deviation END
	local commonIndent = getBlockStringIndentation(lines)
	if commonIndent ~= 0 then
		do
			-- ROBLOX deviation START: add 1 to index
			-- local i = 1
			local i = 2
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix .length usage
			-- while
			-- 				i
			-- 				< lines.length --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
			-- 			do
			while i <= #lines do
				-- ROBLOX deviation END
				-- ROBLOX deviation START: add 1 to commonIndent, fix .slice usage
				-- lines[tostring(i)] = Array.slice(lines[tostring(i)], commonIndent) --[[ ROBLOX CHECK: check if 'lines[i]' is an Array ]]
				lines[i] = String.slice(lines[i], commonIndent + 1)
				-- ROBLOX deviation END
				i += 1
			end
		end
	end -- Remove leading and trailing blank lines.
	-- ROBLOX deviation START: fix .length usage
	-- 	while
	-- 		Boolean.toJSBoolean(
	-- 			lines.length > 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 				and isBlank(lines[
	-- 					1 --[[ ROBLOX adaptation: added 1 to array index ]]
	-- 				])
	-- 		)
	-- 	do
	while #lines > 0 and isBlank(lines[1]) do
		-- ROBLOX deviation END
		table.remove(lines, 1) --[[ ROBLOX CHECK: check if 'lines' is an Array ]]
	end
	-- ROBLOX deviation START: fix .length and indexing
	-- 	while
	-- 		Boolean.toJSBoolean(
	-- 			lines.length > 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
	-- 				and isBlank(lines[tostring(lines.length - 1)])
	-- 		)
	while
		#lines > 0 and isBlank(lines[#lines])
		-- ROBLOX deviation END
	do
		table.remove(lines) --[[ ROBLOX CHECK: check if 'lines' is an Array ]]
	end -- Return a string of the lines joined with U+000A.
	return Array.join(lines, "\n") --[[ ROBLOX CHECK: check if 'lines' is an Array ]]
end
exports.dedentBlockStringValue = dedentBlockStringValue
--[[*
 * @internal
 ]]
-- ROBLOX deviation START: predeclare function
-- local function getBlockStringIndentation(lines: ReadonlyArray<string>): number
function getBlockStringIndentation(lines: ReadonlyArray<string>): number
	-- ROBLOX deviation END
	local commonIndent = nil
	do
		-- ROBLOX deviation START: add 1 to index
		-- local i = 1
		local i = 2
		-- ROBLOX deviation END
		-- ROBLOX deviation START: fix .length usage
		-- 		while
		-- 			i
		-- 			< lines.length --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
		-- 		do
		while i <= #lines do
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix indexing
			-- local line = lines[tostring(i)]
			local line = lines[i]
			-- ROBLOX deviation END
			-- ROBLOX deviation START: add type annotation to indent
			-- local indent = leadingWhitespace(line)
			local indent: number = leadingWhitespace(line)
			-- ROBLOX deviation END
			-- ROBLOX deviation START: fix .length usage
			-- if indent == line.length then
			if indent == #line then
				-- ROBLOX deviation END
				i += 1
				continue -- skip empty lines
			end
			if
				commonIndent == nil
				or indent < commonIndent --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
			then
				commonIndent = indent
				if commonIndent == 0 then
					break
				end
			end
			i += 1
		end
	end
	return if commonIndent == nil then 0 else commonIndent
end
exports.getBlockStringIndentation = getBlockStringIndentation
-- ROBLOX deviation START: predeclare function
-- local function leadingWhitespace(str: string)
function leadingWhitespace(str: string)
	-- ROBLOX deviation END
	local i = 0
	-- ROBLOX deviation START: fix .length usage, adapt to index starting at 1
	-- 	while
	-- 		i < str.length --[[ ROBLOX CHECK: operator '<' works only if either both arguments are strings or both are a number ]]
	-- 		and (str[tostring(i)] == " " or str[tostring(i)] == "\t")
	-- 	do
	while i < #str and (str:sub(i + 1, i + 1) == " " or str:sub(i + 1, i + 1) == "\t") do
		-- ROBLOX deviation END
		i += 1
	end
	return i
end
-- ROBLOX deviation START: predeclare function
-- local function isBlank(str: string)
function isBlank(str: string)
	-- ROBLOX deviation END
	-- ROBLOX deviation START: fix .length usage
	-- return leadingWhitespace(str) == str.length
	return leadingWhitespace(str) == #str
	-- ROBLOX deviation END
end
return exports
