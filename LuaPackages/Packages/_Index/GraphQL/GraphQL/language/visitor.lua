--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/visitor.js

local srcWorkspace = script.Parent.Parent
local LuauPolyfill = require(srcWorkspace.Parent.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type ObjMap<K, V> = { [K]: V }
local inspect = require(srcWorkspace.jsutils.inspect).inspect

local astModule = require(srcWorkspace.language.ast)
type ASTNode = astModule.ASTNode
type ASTKindToNode = astModule.ASTKindToNode
local isNode = require(script.Parent.ast).isNode

--[[*
 * A visitor is provided to visit, it contains the collection of
 * relevant functions to be called during the visitor's traversal.
 ]]
export type ASTVisitor = Visitor<ASTKindToNode>
-- ROBLOX deviation: Luau doesn't support the equivalent of $Value or default type args
-- export type Visitor<KindToNode, Nodes = $Values<KindToNode>> =
export type Visitor<KindToNode, Nodes = any> =
	EnterLeave<VisitFn<Nodes> | ShapeMap<KindToNode, <Node>(Node) -> VisitFn<Nodes, Node>>>
	| ShapeMap<KindToNode, <Node>(Node) -> VisitFn<Nodes, Node> | EnterLeave<VisitFn<Nodes, Node>>>
type EnterLeave<T> = { enter: T?, leave: T? }
-- ROBLOX deviation: Luau doesn't have $Shape, so manually mark fields optional
-- ROBLOX deviation: Luau doesn't have $ObjMap type util, so marking indexer type as string | number
-- type ShapeMap<O, F> = $Shape<$ObjMap<O, F>>;
type ShapeMap<O, F> = { [O]: F }

--[[*
 * A visitor is comprised of visit functions, which are called on each node
 * during the visitor's traversal.
 ]]
export type VisitFn<TAnyNode, TVisitedNode = TAnyNode> = (
	self: any,
	-- The current node being visiting.
	node: TVisitedNode,
	-- The index or key to this node from the parent node or Array.
	key: string | number | nil,
	-- The parent immediately above this node, which may be an Array.
	parent: TAnyNode | Array<TAnyNode> | nil,
	-- The key path to get to this node from the root node.
	path: Array<string | number>,
	-- All nodes and Arrays visited before reaching parent of this node.
	-- These correspond to array indices in `path`.
	-- Note: ancestors includes arrays which contain the parent of visited node.
	ancestors: Array<TAnyNode | Array<TAnyNode>>
) -> ...any

--[[*
 * A KeyMap describes each the traversable properties of each kind of node.
 ]]

-- ROBLOX deviation: no $Keys, so we just do Array<string>
export type VisitorKeyMap<KindToNode> = ObjMap<KindToNode, <T>(T) -> Array<string>>

local QueryDocumentKeys: VisitorKeyMap<ASTKindToNode> = {
	Name = {},

	Document = { "definitions" },
	OperationDefinition = {
		"name",
		"variableDefinitions",
		"directives",
		"selectionSet",
	},
	VariableDefinition = { "variable", "type", "defaultValue", "directives" },
	Variable = { "name" },
	SelectionSet = { "selections" },
	Field = { "alias", "name", "arguments", "directives", "selectionSet" },
	Argument = { "name", "value" },

	FragmentSpread = { "name", "directives" },
	InlineFragment = { "typeCondition", "directives", "selectionSet" },
	FragmentDefinition = {
		"name",
		-- @deprecated will be removed in 17.0.0
		"variableDefinitions",
		"typeCondition",
		"directives",
		"selectionSet",
	},

	IntValue = {},
	FloatValue = {},
	StringValue = {},
	BooleanValue = {},
	NullValue = {},
	EnumValue = {},
	ListValue = { "values" },
	ObjectValue = { "fields" },
	ObjectField = { "name", "value" },

	Directive = { "name", "arguments" },

	NamedType = { "name" },
	ListType = { "type" },
	NonNullType = { "type" },

	SchemaDefinition = { "description", "directives", "operationTypes" },
	OperationTypeDefinition = { "type" },

	ScalarTypeDefinition = { "description", "name", "directives" },
	ObjectTypeDefinition = {
		"description",
		"name",
		"interfaces",
		"directives",
		"fields",
	},
	FieldDefinition = { "description", "name", "arguments", "type", "directives" },
	InputValueDefinition = {
		"description",
		"name",
		"type",
		"defaultValue",
		"directives",
	},
	InterfaceTypeDefinition = {
		"description",
		"name",
		"interfaces",
		"directives",
		"fields",
	},
	UnionTypeDefinition = { "description", "name", "directives", "types" },
	EnumTypeDefinition = { "description", "name", "directives", "values" },
	EnumValueDefinition = { "description", "name", "directives" },
	InputObjectTypeDefinition = { "description", "name", "directives", "fields" },

	DirectiveDefinition = { "description", "name", "arguments", "locations" },

	SchemaExtension = { "directives", "operationTypes" },

	ScalarTypeExtension = { "name", "directives" },
	ObjectTypeExtension = { "name", "interfaces", "directives", "fields" },
	InterfaceTypeExtension = { "name", "interfaces", "directives", "fields" },
	UnionTypeExtension = { "name", "directives", "types" },
	EnumTypeExtension = { "name", "directives", "values" },
	InputObjectTypeExtension = { "name", "directives", "fields" },
}

local BREAK = Object.freeze({})

local NULL = require(srcWorkspace.luaUtils.null)

-- deviation: pre-declare functions
local visitInParallel
local getVisitFn

-- /**
--  * visit() will walk through an AST using a depth-first traversal, calling
--  * the visitor's enter function at each node in the traversal, and calling the
--  * leave function after visiting that node and all of its child nodes.
--  *
--  * By returning different values from the enter and leave functions, the
--  * behavior of the visitor can be altered, including skipping over a sub-tree of
--  * the AST (by returning false), editing the AST by returning a value or (nil, true)
--  * to remove the value, or to stop the whole traversal by returning BREAK.
--  *
--  * When using visit() to edit an AST, the original AST will not be modified, and
--  * a new version of the AST with the changes applied will be returned from the
--  * visit function.
--  *
--  *     const editedAST = visit(ast, {
--  *       enter(node, key, parent, path, ancestors) {
--  *         // @return
--  *         //   nil: no action
--  *         //   false: skip visiting this node
--  *         //   visitor.BREAK: stop visiting altogether
-- ROBLOX deviation: to distinguish no action from deleting node we need to use a const NULL
--  *         //   NULL: delete this node
--  *         //   visitor.REMOVE: delete this node
--  *         //   any value: replace this node with the returned value
--  *       },
--  *       leave(node, key, parent, path, ancestors) {
--  *         // @return
--  *         //   nil: no action
--  *         //   false: no action
--  *         //   visitor.BREAK: stop visiting altogether
-- ROBLOX deviation: to distinguish no action from deleting node we need to use a const NULL
--  *         //   NULL: delete this node
--  *         //   visitor.REMOVE: delete this node
--  *         //   any value: replace this node with the returned value
--  *       }
--  *     });
--  *
--  * Alternatively to providing enter() and leave() functions, a visitor can
--  * instead provide functions named the same as the kinds of AST nodes, or
--  * enter/leave visitors at a named key, leading to four permutations of the
--  * visitor API:
--  *
--  * 1) Named visitors triggered when entering a node of a specific kind.
--  *
--  *     visit(ast, {
--  *       Kind(node) {
--  *         // enter the "Kind" node
--  *       }
--  *     })
--  *
--  * 2) Named visitors that trigger upon entering and leaving a node of
--  *    a specific kind.
--  *
--  *     visit(ast, {
--  *       Kind: {
--  *         enter(node) {
--  *           // enter the "Kind" node
--  *         }
--  *         leave(node) {
--  *           // leave the "Kind" node
--  *         }
--  *       }
--  *     })
--  *
--  * 3) Generic visitors that trigger upon entering and leaving any node.
--  *
--  *     visit(ast, {
--  *       enter(node) {
--  *         // enter any node
--  *       },
--  *       leave(node) {
--  *         // leave any node
--  *       }
--  *     })
--  *
--  * 4) Parallel visitors for entering and leaving nodes of a specific kind.
--  *
--  *     visit(ast, {
--  *       enter: {
--  *         Kind(node) {
--  *           // enter the "Kind" node
--  *         }
--  *       },
--  *       leave: {
--  *         Kind(node) {
--  *           // leave the "Kind" node
--  *         }
--  *       }
--  *     })
--  */
local function visit(
	root: ASTNode,
	visitor: Visitor<ASTKindToNode>,
	visitorKeys_: VisitorKeyMap<ASTKindToNode>?
): any
	local visitorKeys: VisitorKeyMap<ASTKindToNode> = visitorKeys_ or QueryDocumentKeys

	local stack: any = nil
	local inArray = Array.isArray(root)
	local keys: any = { root }
	local index = 0 -- deviation: index is 1-based
	local edits = {}
	local node: any = nil
	local key: any = nil
	local parent: any = nil
	local path: any = {}
	local ancestors = {}
	local newRoot = root

	repeat
		index += 1
		local isLeaving = index == #keys + 1
		local isEdited = isLeaving and #edits ~= 0

		if isLeaving then
			if #ancestors == 0 then
				key = nil
			else
				key = path[#path]
			end
			node = parent
			parent = table.remove(ancestors)
			if isEdited then
				if inArray then
					node = Array.slice(node)
				else
					local clone = {}
					for k in pairs(node) do
						clone[k] = node[k]
					end
					node = clone
				end

				local editOffset = 0
				for ii = 1, #edits do
					-- ROBLOX deviation: Luau needs to know this is a number to allow -=, but we can't type packed arrays yet
					local editKey: number = edits[ii][1]
					local editValue = edits[ii][2]
					if inArray then
						editKey -= editOffset
					end
					if inArray and editValue == nil then
						Array.splice(node, editKey, 1) -- node.splice(editKey, 1);
						editOffset += 1
					else
						node[editKey] = editValue
					end
				end
			end
			index = stack.index
			keys = stack.keys
			edits = stack.edits
			inArray = stack.inArray
			stack = stack.prev
		else
			if parent then
				if inArray then
					key = index
				else
					key = keys[index]
				end
			else
				key = nil
			end
			if parent then
				node = parent[key]
			else
				node = newRoot
			end

			-- ROBLOX deviation start: upstream checks for nil or undefined, check for NULL here.
			if node == nil or node == NULL then
				-- ROBLOX deviation end
				continue
			end
			if parent then
				table.insert(path, key)
			end
		end

		local result
		if not Array.isArray(node) then
			if not isNode(node) then
				error("Invalid AST Node: " .. inspect(node) .. ".")
			end
			local visitFn = getVisitFn(visitor, node.kind, isLeaving)
			if visitFn then
				result = visitFn(visitor, node, key, parent, path, ancestors)

				if result == BREAK then
					break
				end

				if result == false then
					if not isLeaving then
						table.remove(path)
						continue
					end
					-- ROBLOX deviation: in JS returning null from visit results in removing the node
					-- in order to distinguish implicit return of nil from intend to remove it we use NULL const
				elseif result ~= nil or result == NULL then
					if result == NULL then
						result = nil
					end
					table.insert(edits, { key, result })
					if not isLeaving then
						if isNode(result) then
							node = result
						else
							table.remove(path)
							continue
						end
					end
				end
			end
		end

		if result == nil and isEdited then
			table.insert(edits, { key, node })
		end

		if isLeaving then
			table.remove(path)
		else
			stack = {
				inArray = inArray,
				index = index,
				keys = keys,
				edits = edits,
				prev = stack,
			}
			inArray = Array.isArray(node)
			if inArray then
				keys = node
			else
				keys = visitorKeys[node.kind] or {}
			end
			index = 0
			edits = {}
			if parent then
				table.insert(ancestors, parent)
			end
			parent = node
		end

	until not (stack ~= nil)
	if #edits ~= 0 then
		newRoot = edits[#edits][2]
	end

	return newRoot
end

function visitInParallel(visitors: Array<Visitor<ASTKindToNode>>): Visitor<ASTKindToNode>
	-- ROBLOX deviation: no predefined Array length
	local skipping = {}

	return {
		enter = function(self, node, ...)
			for i = 1, #visitors do
				if skipping[i] == nil then
					local fn = getVisitFn(
						visitors[i],
						node.kind,--[[ isLeaving ]]
						false
					)
					if fn then
						local result = fn(visitors[i], node, ...)
						if result == false then
							skipping[i] = node
						elseif result == BREAK then
							skipping[i] = BREAK
						elseif result ~= nil then
							return result
						end
					end
				end
			end
			return -- ROBLOX deviation: no implicit returns
		end,
		leave = function(self, ...)
			local node = ...
			for i = 1, #visitors do
				if skipping[i] == nil then
					local fn = getVisitFn(
						visitors[i],
						node.kind,--[[ isLeaving ]]
						true
					)
					if fn then
						local result = fn(visitors[i], ...)
						if result == BREAK then
							skipping[i] = BREAK
						elseif result ~= nil and result ~= false then
							return result
						end
					end
				elseif skipping[i] == node then
					skipping[i] = nil
				end
			end
			return -- ROBLOX deviation: no implicit returns
		end,
	}
end

function getVisitFn(visitor: Visitor<any>, kind: string, isLeaving: boolean): VisitFn<any>?
	-- ROBLOX TODO Luau? not sure how we can match this typecheck, or if it's even provably valid
	local kindVisitor = (visitor :: any)[kind]
	if kindVisitor then
		if not isLeaving and type(kindVisitor) == "function" then
			--[[// { Kind() {} }]]
			return kindVisitor
		end
		local kindSpecificVisitor
		if typeof(kindVisitor) ~= "function" then -- ROBLOX deviation: can't index a function
			if isLeaving then
				kindSpecificVisitor = kindVisitor.leave
			else
				kindSpecificVisitor = kindVisitor.enter
			end
		end
		if type(kindSpecificVisitor) == "function" then
			--[[// { Kind: { enter() {}, leave() {} } }]]
			return kindSpecificVisitor
		end
	else
		local specificVisitor
		if isLeaving then
			specificVisitor = visitor.leave
		else
			specificVisitor = visitor.enter
		end
		if specificVisitor then
			if type(specificVisitor) == "function" then
				--[[// { enter() {}, leave() {} }]]
				-- ROBLOX TODO Luau? could narrowing infer this annotation, or is this bogus TS leaps?
				return specificVisitor :: VisitFn<any>
			end
			-- ROBLOX TODO Luau? can this be modeled in Luau?
			local specificKindVisitor = (specificVisitor :: any)[kind]
			if type(specificKindVisitor) == "function" then
				--[[// { enter: { Kind() {} }, leave: { Kind() {} } }]]
				return specificKindVisitor :: VisitFn<any>
			end
		end
	end
	return -- ROBLOX deviation: no implicit returns
end

return {
	BREAK = BREAK,
	REMOVE = NULL,
	visit = visit,
	visitInParallel = visitInParallel,
	getVisitFn = getVisitFn,
	QueryDocumentKeys = QueryDocumentKeys,
}
