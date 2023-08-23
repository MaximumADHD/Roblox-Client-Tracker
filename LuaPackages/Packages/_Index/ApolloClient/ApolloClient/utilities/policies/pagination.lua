--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/policies/pagination.ts
local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Record<T, U> = { [T]: U }

-- ROBLOX deviation: tslib package not available.
local function __rest(obj, props)
	local removed = {}
	Array.forEach(props, function(prop)
		removed[prop] = Object.None
	end)
	return Object.assign({}, obj, removed)
end

local cacheModule = require(script.Parent.Parent.Parent.cache.inmemory.policies_types)
type FieldPolicy<TExisting, TIncoming, TReadResult> = cacheModule.FieldPolicy<TExisting, TIncoming, TReadResult>

-- ROBLOX deviation: import directly from source to avoid circular dep
local storeUtilsModule = require(script.Parent.Parent.graphql.storeUtils)
type Reference = storeUtilsModule.Reference

local mergeDeep = require(script.Parent.Parent.common.mergeDeep).mergeDeep
type KeyArgs = typeof((({} :: any) :: FieldPolicy<any, any, any>).keyArgs)

-- ROBLOX deviation: predefine variables
local getExtras
local makeEmptyData
local notExtras

-- A very basic pagination field policy that always concatenates new
-- results onto the existing array, without examining options.args.
-- ROBLOX TODO: use default type args for FieldPolicy<>
local function concatPagination<T>(keyArgs: KeyArgs?): FieldPolicy<Array<T>, Array<T>, Array<T>>
	if keyArgs == nil then
		keyArgs = false
	end
	return {
		keyArgs = keyArgs,
		merge = function(_self, existing, incoming)
			return if existing then Array.concat(existing, incoming) else incoming
		end,
	}
end
exports.concatPagination = concatPagination

-- A basic field policy that uses options.args.{offset,limit} to splice
-- the incoming data into the existing array. If your arguments are called
-- something different (like args.{start,count}), feel free to copy/paste
-- this implementation and make the appropriate changes.
-- ROBLOX TODO: use default type args for FieldPolicy<>
local function offsetLimitPagination<T>(keyArgs: KeyArgs?): FieldPolicy<Array<T>, Array<T>, Array<T>>
	if keyArgs == nil then
		keyArgs = false
	end

	return {
		keyArgs = keyArgs,
		merge = function(_self, existing, incoming, ref)
			local args = ref.args
			local merged
			if existing ~= nil then
				merged = Array.slice(existing, 1)
			else
				merged = {}
			end

			if args ~= nil then
				-- Assume an offset of 0 if args.offset omitted.
				local offset
				if args.offset == nil then
					offset = 0
				else
					offset = args.offset
				end

				for i = 1, #incoming, 1 do
					merged[offset + i] = incoming[i]
				end
			else
				-- It's unusual (probably a mistake) for a paginated field not
				-- to receive any arguments, so you might prefer to throw an
				-- exception here, instead of recovering by appending incoming
				-- onto the existing array.
				merged = Array.concat(merged, incoming)
			end
			return merged
		end,
	}
end
exports.offsetLimitPagination = offsetLimitPagination

-- Whether TRelayEdge<TNode> is a normalized Reference or a non-normalized
-- object, it needs a .cursor property where the relayStylePagination
-- merge function can store cursor strings taken from pageInfo. Storing an
-- extra reference.cursor property should be safe, and is easier than
-- attempting to update the cursor field of the normalized StoreObject
-- that the reference refers to, or managing edge wrapper objects
-- (something I attempted in #7023, but abandoned because of #7088).
export type TRelayEdge<TNode> = { cursor: string?, node: TNode } | (Reference & {
	cursor: string?,
})

export type TRelayPageInfo = {
	hasPreviousPage: boolean,
	hasNextPage: boolean,
	startCursor: string,
	endCursor: string,
}
export type TExistingRelay<TNode> = {
	edges: Array<TRelayEdge<TNode>>,
	pageInfo: TRelayPageInfo,
}

export type TIncomingRelay<TNode> = {
	edges: Array<TRelayEdge<TNode>>?,
	pageInfo: TRelayPageInfo?,
}

export type RelayFieldPolicy<TNode> = FieldPolicy<TExistingRelay<TNode>, TIncomingRelay<TNode>, TIncomingRelay<TNode>>

-- As proof of the flexibility of field policies, this function generates
-- one that handles Relay-style pagination, without Apollo Client knowing
-- anything about connections, edges, cursors, or pageInfo objects.
-- ROBLOX TODO: when default type alias is available: TNode = Reference
local function relayStylePagination<TNode>(keyArgs: KeyArgs?): RelayFieldPolicy<TNode>
	if keyArgs == nil then
		keyArgs = false
	end

	return {
		keyArgs = keyArgs,
		read = function(_self, existing_, ref)
			-- ROBLOX FIXME Luau: no matter how I bail, nil-ability of `existing` isn't removed
			if not existing_ then
				return
			end

			local existing = existing_ :: TExistingRelay<TNode>

			local edges: Array<TRelayEdge<TNode>> = {}
			local firstEdgeCursor = ""
			local lastEdgeCursor = ""

			Array.forEach(existing.edges, function(edge)
				-- Edges themselves could be Reference objects, so it's important
				-- to use readField to access the edge.edge.node property.
				-- ROBLOX FIXME Luau:
				if ref:canRead(ref:readField("node", edge :: Reference)) then
					table.insert(edges, edge)
					if edge.cursor then
						firstEdgeCursor = Boolean.toJSBoolean(firstEdgeCursor) and firstEdgeCursor or edge.cursor or ""

						lastEdgeCursor = Boolean.toJSBoolean(edge.cursor) and (edge.cursor :: string) or lastEdgeCursor
					end
				end
			end)

			-- ROBLOX deviation START: upstream has a weird way to default these values: existing.pageInfo || {}
			local ref_ = existing.pageInfo
			local startCursor, endCursor = ref_ and ref_.startCursor, ref_ and ref_.endCursor
			-- ROBLOX deviation END

			return Object.assign(
				{},
				-- Some implementations return additional Connection fields, such
				-- as existing.totalCount. These fields are saved by the merge
				-- function, so the read function should also preserve them.
				getExtras(existing),
				{
					edges = edges,
					pageInfo = Object.assign(
						{},
						existing.pageInfo,
						-- If existing.pageInfo.{start,end}Cursor are undefined or "", default
						-- to firstEdgeCursor and/or lastEdgeCursor.
						{
							startCursor = Boolean.toJSBoolean(startCursor) and startCursor or firstEdgeCursor,
							endCursor = Boolean.toJSBoolean(endCursor) and endCursor or lastEdgeCursor,
						}
					),
				}
			)
		end,

		merge = function(_self, existing_, incoming, ref)
			if existing_ == nil then
				existing_ = makeEmptyData()
			end
			-- ROBLOX deviation: help analyze tool
			local existing = existing_ :: TExistingRelay<TNode>

			local args = ref.args

			local incomingEdges
			if incoming.edges then
				incomingEdges = Array.map(incoming.edges, function(edge)
					-- ROBLOX FIXME Luau: doesn't correctly infer, needs explicit cursor assignment otherwise Value of type '(Reference & {| cursor: string? |})?' could be nil
					local edge_ = Object.assign({ cursor = "" }, edge)
					if ref:isReference(edge_) then
						-- ROBLOX note: typecheck below is a manual propagation of the TS `is` return operator on usptream isReference(), `string` is because we can't explicitly specify generics
						edge_.cursor = ref:readField("cursor", edge_ :: Reference) :: string
					end
					return edge_
				end) :: Array<TRelayEdge<TNode>>
			else
				incomingEdges = {} :: Array<TRelayEdge<TNode>>
			end

			if incoming.pageInfo then
				local pageInfo = incoming.pageInfo
				local startCursor, endCursor = pageInfo.startCursor, pageInfo.endCursor
				local firstEdge = incomingEdges[1]
				local lastEdge = incomingEdges[#incomingEdges]

				-- In case we did not request the cursor field for edges in this
				-- query, we can still infer cursors from pageInfo.
				if firstEdge and startCursor then
					-- ROBLOX FIXME Luau: fails to recognize as table
					(firstEdge :: any).cursor = startCursor
				end
				if lastEdge and endCursor then
					-- ROBLOX FIXME Luau: fails to recognize as table
					(lastEdge :: any).cursor = endCursor
				end

				-- Cursors can also come from edges, so we default
				-- pageInfo.{start,end}Cursor to {first,last}Edge.cursor.
				local firstCursor = firstEdge and firstEdge.cursor

				if firstCursor and not startCursor then
					incoming = mergeDeep(incoming, { pageInfo = { startCursor = firstCursor } })
				end

				local lastCursor = lastEdge and lastEdge.cursor

				if lastCursor and not endCursor then
					incoming = mergeDeep(incoming, { pageInfo = { endCursor = lastCursor } })
				end
			end

			local prefix = existing.edges
			local suffix = {} :: typeof(prefix)

			if args ~= nil and args.after then
				-- This comparison does not need to use readField("cursor", edge),
				-- because we stored the cursor field of any Reference edges as an
				-- extra property of the Reference object.
				local index = Array.findIndex(prefix, function(edge)
					return edge.cursor == args.after
				end)

				if
					index >= 1 --ROBLOX deviation: index starts at 1
				then
					prefix = Array.slice(prefix, 1, index + 1) :: Array<TRelayEdge<TNode>>
					-- suffix = []; // already true
				end
			elseif args ~= nil and Boolean.toJSBoolean(args.before) then
				local index = Array.findIndex(prefix, function(edge)
					return edge.cursor == args.before
				end)
				if index < 0 then
					suffix = prefix
				else
					suffix = Array.slice(prefix, index) :: Array<TRelayEdge<TNode>>
				end
				prefix = {} :: Array<TRelayEdge<TNode>>
			elseif Boolean.toJSBoolean(incoming.edges) then
				-- If we have neither args.after nor args.before, the incoming
				-- edges cannot be spliced into the existing edges, so they must
				-- replace the existing edges. See #6592 for a motivating example.
				prefix = {} :: Array<TRelayEdge<TNode>>
			end

			local edges = Array.concat(prefix, incomingEdges, suffix)

			local pageInfo: TRelayPageInfo = Object.assign(
				{},
				-- The ordering of these two ...spreads may be surprising, but it
				-- makes sense because we want to combine PageInfo properties with a
				-- preference for existing values, *unless* the existing values are
				-- overridden by the logic below, which is permitted only when the
				-- incoming page falls at the beginning or end of the data.
				incoming.pageInfo,
				existing.pageInfo
			)

			if incoming.pageInfo then
				local hasPreviousPage, hasNextPage, startCursor, endCursor, extras
				do
					local ref_ = incoming.pageInfo
					hasPreviousPage, hasNextPage, startCursor, endCursor, extras =
						ref_.hasPreviousPage,
						ref_.hasNextPage,
						ref_.startCursor,
						ref_.endCursor,
						Object.assign({}, ref_, {
							hasPreviousPage = Object.None,
							hasNextPage = Object.None,
							startCursor = Object.None,
							endCursor = Object.None,
						})
				end

				-- If incoming.pageInfo had any extra non-standard properties,
				-- assume they should take precedence over any existing properties
				-- of the same name, regardless of where this page falls with
				-- respect to the existing data.
				Object.assign(pageInfo, extras)

				-- Keep existing.pageInfo.has{Previous,Next}Page unless the
				-- placement of the incoming edges means incoming.hasPreviousPage
				-- or incoming.hasNextPage should become the new values for those
				-- properties in existing.pageInfo. Note that these updates are
				-- only permitted when the beginning or end of the incoming page
				-- coincides with the beginning or end of the existing data, as
				-- determined using prefix.length and suffix.length.
				if not Boolean.toJSBoolean(#prefix) then
					if nil ~= hasPreviousPage then
						pageInfo.hasPreviousPage = hasPreviousPage
					end
					if nil ~= startCursor then
						pageInfo.startCursor = startCursor
					end
				end

				if not Boolean.toJSBoolean(#suffix) then
					if nil ~= hasNextPage then
						pageInfo.hasNextPage = hasNextPage
					end
					if nil ~= endCursor then
						pageInfo.endCursor = endCursor
					end
				end
			end

			return Object.assign({}, getExtras(existing), getExtras(incoming), { edges = edges, pageInfo = pageInfo })
		end,
	}
end
exports.relayStylePagination = relayStylePagination

-- Returns any unrecognized properties of the given object.
function getExtras(obj: Record<string, any>): Object
	return __rest(obj, notExtras)
end
notExtras = { "edges", "pageInfo" }

function makeEmptyData(): TExistingRelay<any>
	return {
		edges = {},
		pageInfo = { hasPreviousPage = false, hasNextPage = true, startCursor = "", endCursor = "" },
	}
end

return exports
