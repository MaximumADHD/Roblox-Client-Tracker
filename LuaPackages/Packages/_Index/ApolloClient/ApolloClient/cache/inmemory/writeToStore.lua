--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/writeToStore.ts
local __DEV__ = _G.__DEV__

local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local Map = LuauPolyfill.Map
local Set = LuauPolyfill.Set
local Array = LuauPolyfill.Array
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Map<T, V> = LuauPolyfill.Map<T, V>
type Set<T> = LuauPolyfill.Set<T>

type Record<T, U> = { [T]: U }
type Tuple<T, V> = Array<T | V>

local NULL = require(srcWorkspace.utilities).NULL

local HttpService = game:GetService("HttpService")

local graphQLModule = require(rootWorkspace.GraphQL)
type SelectionSetNode = graphQLModule.SelectionSetNode
type FieldNode = graphQLModule.FieldNode
type SelectionNode = graphQLModule.SelectionNode

local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant
local InvariantError = invariantModule.InvariantError

local equal = require(srcWorkspace.jsutils.equal)

local objectKeysForEach = require(srcWorkspace.luaUtils.objectKeysForEach)

local utilitiesModule = require(srcWorkspace.utilities)
local createFragmentMap = utilitiesModule.createFragmentMap
type FragmentMap = utilitiesModule.FragmentMap
local getFragmentFromSelection = utilitiesModule.getFragmentFromSelection
local getDefaultValues = utilitiesModule.getDefaultValues
local getFragmentDefinitions = utilitiesModule.getFragmentDefinitions
local getOperationDefinition = utilitiesModule.getOperationDefinition
local getTypenameFromResult = utilitiesModule.getTypenameFromResult
local makeReference = utilitiesModule.makeReference
local isField = utilitiesModule.isField
local resultKeyNameFromField = utilitiesModule.resultKeyNameFromField
local isReference = utilitiesModule.isReference
local shouldInclude = utilitiesModule.shouldInclude
local cloneDeep = utilitiesModule.cloneDeep
local addTypenameToDocument = utilitiesModule.addTypenameToDocument
type StoreValue = utilitiesModule.StoreValue
type StoreObject = utilitiesModule.StoreObject
type Reference = utilitiesModule.Reference

local typesModule = require(script.Parent.types)
type NormalizedCache = typesModule.NormalizedCache
type ReadMergeModifyContext = typesModule.ReadMergeModifyContext
type MergeTree = typesModule.MergeTree
type MergeInfo = typesModule.MergeInfo

local helpersModule = require(script.Parent.helpers)
local makeProcessedFieldsMerger = helpersModule.makeProcessedFieldsMerger
local fieldNameFromStoreName = helpersModule.fieldNameFromStoreName
local storeValueIsStoreObject = helpersModule.storeValueIsStoreObject

-- ROBLOX TODO: StoreReader dependent on #125 uncomment when available
-- local StoreReader = require(script.Parent.readFromStore).StoreReader
type StoreReader = any
-- ROBLOX TODO: InMemoryCache dependent on #123 uncomment when available
-- local InMemoryCache = require(script.Parent.inMemoryCache).InMemoryCache
type InMemoryCache = any
local entityStoreModule = require(script.Parent.entityStore)
type EntityStore = entityStoreModule.EntityStore
-- ROBLOX deviation: importing directly from cache to avoid circular dependency
local CacheModule = require(script.Parent.Parent.core.types.Cache)
type Cache_WriteOptions<TResult, TVariables> = CacheModule.Cache_WriteOptions<TResult, TVariables>
local canonicalStringify = require(script.Parent["object-canon"]).canonicalStringify

local writeToStoreTypesModule = require(script.Parent.writeToStore_types)
export type WriteContext = writeToStoreTypesModule.WriteContext

type ProcessSelectionSetOptions = {
	dataId: string?,
	result: Record<string, any>,
	selectionSet: SelectionSetNode,
	context: WriteContext,
	mergeTree: MergeTree,
}

-- ROBLOX deviation: pre-declaring functions for StoreWrite
local warnAboutDataLoss
local getChildMergeTree
local maybeRecycleChildMergeTree
local mergeMergeTrees
local mergeTreeIsEmpty

type StoreWriterPrivate = StoreWriter & {
	reader: StoreReader?,
	processSelectionSet: (
		self: StoreWriterPrivate,
		processSelectionSetOptions: ProcessSelectionSetOptions
	) -> StoreObject | Reference,
	processFieldValue: (
		self: StoreWriterPrivate,
		value: any,
		field: FieldNode,
		context: WriteContext,
		mergeTree: MergeTree
	) -> StoreValue,
	applyMerges: <T>(
		self: StoreWriterPrivate,
		mergeTree: MergeTree,
		existing: StoreValue,
		incoming: T,
		context: WriteContext,
		getStorageArgs: Tuple<string | StoreObject, Array<string | number>>?
	) -> T | Reference,
}

export type StoreWriter = {
	cache: InMemoryCache,
	writeToStore: (self: StoreWriter, store: NormalizedCache, ref: Cache_WriteOptions<any, any>) -> Reference | nil,
}

local StoreWriter = {}
StoreWriter.__index = StoreWriter

function StoreWriter.new(cache: InMemoryCache, reader: StoreReader?): StoreWriter
	local self = setmetatable({}, StoreWriter)
	self.cache = cache
	self.reader = reader
	return (self :: any) :: StoreWriter
end

function StoreWriter:writeToStore(store: NormalizedCache, writeOpts: Cache_WriteOptions<any, any>): Reference | nil
	local query, result, dataId, variables, overwrite =
		writeOpts.query, writeOpts.result, writeOpts.dataId, writeOpts.variables, writeOpts.overwrite
	local operationDefinition = getOperationDefinition(query)
	local merger = makeProcessedFieldsMerger()

	-- ROBLOX deviation START: we can overwrite getDefaultValues, no need to copy
	variables = Object.assign(getDefaultValues(operationDefinition), variables)
	-- ROBLOX deviation END

	local context: WriteContext = {
		store = store,
		written = {},
		-- ROBLOX FIXME Luau: analyze claims merge isn't compatible, but it's the same as WriteContext: merge: <T>(existing: T, incoming: T) -> T,
		merge = function<T>(existing: T, incoming: T): T
			return merger:merge(existing, incoming)
		end :: any,
		variables = variables,
		varString = canonicalStringify(variables),
		fragmentMap = createFragmentMap(getFragmentDefinitions(query)),
		-- ROBLOX deviation START: use if then else instead of !!
		overwrite = if overwrite then overwrite :: boolean else false,
		-- ROBLOX deviation END
		-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
		incomingById = Map.new(nil) :: Map<string, {
			fields: StoreObject,
			mergeTree: MergeTree,
			selections: Set<SelectionNode>,
		}>,
		clientOnly = false,
	}

	local ref = self:processSelectionSet({
		result = result or {},
		dataId = dataId,
		selectionSet = operationDefinition.selectionSet,
		mergeTree = { map = Map.new(nil) },
		context = context,
	})

	if not isReference(ref) then
		error(InvariantError.new(("Could not identify object %s"):format(HttpService:JSONEncode(result))))
	end

	-- So far, the store has not been modified, so now it's time to process
	-- context.incomingById and merge those incoming fields into context.store.
	-- ROBLOX deviation: renamed dataId to dataId_ to resolve shadowing analyze error
	context.incomingById:forEach(function(incoming, dataId_)
		local fields: StoreObject, mergeTree: MergeTree, selections: Set<SelectionNode> =
			incoming.fields, incoming.mergeTree, incoming.selections

		local entityRef = makeReference(dataId_)

		-- ROBLOX deviation START: use size comparison instead of Boolean
		if mergeTree.map.size > 0 then
			-- ROBLOX deviation END
			local applied = self:applyMerges(mergeTree, entityRef, fields, context)
			if isReference(applied) then
				-- Assume References returned by applyMerges have already been merged
				-- into the store. See makeMergeObjectsFunction in policies.ts for an
				-- example of how this can happen.
				return
			end
			-- Otherwise, applyMerges returned a StoreObject, whose fields we should
			-- merge into the store (see store.merge statement below).
			fields = applied
		end

		if __DEV__ and not context.overwrite then
			local fieldsWithSelectionSets
			local function hasSelectionSet(storeFieldName: string)
				return fieldsWithSelectionSets:has(fieldNameFromStoreName(storeFieldName))
			end
			fieldsWithSelectionSets = Set.new()
			selections:forEach(function(selection)
				-- ROBLOX deviation START: remove Boolean
				if isField(selection) and selection.selectionSet then
					-- ROBLOX deviation END
					fieldsWithSelectionSets:add(selection.name.value)
				end
			end)

			local function hasMergeFunction(storeFieldName: string)
				local childTree = mergeTree.map:get(storeFieldName)
				return childTree ~= nil and childTree.info ~= nil and childTree.info.merge ~= nil
			end

			-- ROBLOX deviation START: use helper to optimize Object.keys().forEach
			objectKeysForEach(fields, function(storeFieldName)
				-- ROBLOX deviation END
				-- If a merge function was defined for this field, trust that it
				-- did the right thing about (not) clobbering data. If the field
				-- has no selection set, it's a scalar field, so it doesn't need
				-- a merge function (even if it's an object, like JSON data).
				if hasSelectionSet(storeFieldName) and not hasMergeFunction(storeFieldName) then
					warnAboutDataLoss(entityRef, fields, storeFieldName, context.store)
				end
			end)
		end

		store:merge(dataId_, fields)
	end)

	-- Any IDs written explicitly to the cache will be retained as
	-- reachable root IDs for garbage collection purposes. Although this
	-- logic includes root IDs like ROOT_QUERY and ROOT_MUTATION, their
	-- retainment counts are effectively ignored because cache.gc() always
	-- includes them in its root ID set.
	store:retain(ref.__ref)

	return ref
end

function StoreWriter:processSelectionSet(ref_: ProcessSelectionSetOptions): StoreObject | Reference
	local dataId, result, selectionSet, context = ref_.dataId, ref_.result, ref_.selectionSet, ref_.context
	-- This object allows processSelectionSet to report useful information
	-- to its callers without explicitly returning that information.
	local mergeTree = ref_.mergeTree

	local policies = self.cache.policies

	-- Identify the result object, even if dataId was already provided,
	-- since we always need keyObject below.
	local policyIdentify = policies:identify(result, selectionSet, context.fragmentMap)
	local id, keyObject = table.unpack(policyIdentify, 1, 2)

	-- If dataId was not provided, fall back to the id just generated by
	-- policies.identify.
	-- ROBLOX deviation START: Remove Boolean
	dataId = dataId or id
	-- ROBLOX deviation END

	-- ROBLOX deviation START: use type instead of typeof
	if "string" == type(dataId) then
		-- ROBLOX deviation END
		-- Avoid processing the same entity object using the same selection
		-- set more than once. We use an array instead of a Set since most
		-- entity IDs will be written using only one selection set, so the
		-- size of this array is likely to be very small, meaning indexOf is
		-- likely to be faster than Set.prototype.has.
		local sets: Array<SelectionSetNode>
		if context.written[dataId] ~= nil then
			sets = context.written[dataId]
		else
			sets = {}
			context.written[dataId] = sets
		end
		local ref = makeReference(dataId)

		if Array.indexOf(sets, selectionSet) >= 1 then
			return ref
		end
		table.insert(sets, selectionSet)

		-- If we're about to write a result object into the store, but we
		-- happen to know that the exact same (===) result object would be
		-- returned if we were to reread the result with the same inputs,
		-- then we can skip the rest of the processSelectionSet work for
		-- this object, and immediately return a Reference to it.
		if self.reader ~= nil and self.reader:isFresh(result, ref, selectionSet, context) then
			return ref
		end
	end

	-- This variable will be repeatedly updated using context.merge to
	-- accumulate all fields that need to be written into the store.
	local incomingFields: StoreObject = {} :: StoreObject

	-- Write any key fields that were used during identification, even if
	-- they were not mentioned in the original query.
	if keyObject ~= nil then
		incomingFields = (context.merge(incomingFields, (keyObject :: any) :: StoreObject) :: any) :: StoreObject
	end

	-- If typename was not passed in, infer it. Note that typename is
	-- always passed in for tricky-to-infer cases such as "Query" for
	-- ROOT_QUERY.
	-- ROBLOX deviation START: use if then else instead of  function wrap
	local typename: string | nil = (if dataId then policies.rootTypenamesById[dataId] else dataId)
		or getTypenameFromResult(result, selectionSet, context.fragmentMap)
		or (if dataId then context.store:get(dataId :: string, "__typename") :: string else dataId :: any)
	-- ROBLOX deviation END

	-- ROBLOX deviation START: use type instead of typeof
	if "string" == type(typename) then
		-- ROBLOX deviation END
		incomingFields.__typename = typename
	end

	local selections = Set.new(selectionSet.selections) :: Set<SelectionNode>

	-- ROBLOX deviation START: set is being modified inside the loop, can't use forEach
	for _, selection in selections do
		if not shouldInclude(selection, context.variables) then
			continue
		end

		if isField(selection) then
			local resultFieldKey = resultKeyNameFromField(selection)
			local value = result[resultFieldKey]

			local wasClientOnly = context.clientOnly
			-- ROBLOX deviation START: remove Boolean
			context.clientOnly = wasClientOnly
				or (
					selection.directives
					and Array.some(selection.directives, function(d)
						return d.name.value == "client"
					end)
				)
			-- ROBLOX deviation END

			if value ~= nil then
				local storeFieldName = policies:getStoreFieldName({
					typename = typename,
					fieldName = selection.name.value,
					field = selection,
					variables = context.variables,
				})

				local childTree = getChildMergeTree(mergeTree, storeFieldName)

				local incomingValue = self:processFieldValue(value, selection, context, childTree)

				-- To determine if this field holds a child object with a merge
				-- function defined in its type policy (see PR #7070), we need to
				-- figure out the child object's __typename.
				local childTypename: string | nil

				-- The field's value can be an object that has a __typename only if
				-- the field has a selection set. Otherwise incomingValue is scalar.
				if selection.selectionSet ~= nil then
					-- We attempt to find the child __typename first in context.store,
					-- but the child object may not exist in the store yet, likely
					-- because it's being written for the first time, during this very
					-- call to writeToStore. Note: if incomingValue is a non-normalized
					-- StoreObject (not a Reference), getFieldValue will read from that
					-- object's properties to find its __typename.
					childTypename = context.store:getFieldValue(incomingValue :: StoreObject | Reference, "__typename")

					-- If the child object is being written for the first time, but
					-- incomingValue is a Reference, then the entity that Reference
					-- identifies should have an entry in context.incomingById, which
					-- likely contains a __typename field we can use. After all, how
					-- could we know the object's ID if it had no __typename? If we
					-- wrote data into context.store as each processSelectionSet call
					-- finished processing an entity object, the child object would
					-- already be in context.store, so we wouldn't need this extra
					-- check, but holding all context.store.merge calls until after
					-- we've finished all processSelectionSet work is cleaner and solves
					-- other problems, such as issue #8370.
					-- ROBLOX deviation START: remove Boolean
					if not childTypename and isReference(incomingValue) then
						-- ROBLOX deviation END
						local info = context.incomingById:get(incomingValue.__ref)
						if info ~= nil then
							childTypename = info.fields.__typename
						else
							childTypename = nil
						end
					end
				end

				local merge = policies:getMergeFunction(typename, selection.name.value, childTypename)

				if merge ~= nil then
					childTree.info = {
						-- TODO Check compatibility against any existing
						-- childTree.field?
						field = selection,
						typename = typename,
						merge = merge,
					}
				else
					maybeRecycleChildMergeTree(mergeTree, storeFieldName)
				end

				-- ROBLOX deviation: Another place where upstream is relying on TS gaps, it needs an explicit cast
				incomingFields =
					context.merge(incomingFields, ({ [storeFieldName] = incomingValue } :: any) :: StoreObject)
				-- ROBLOX deviation START: remove Boolean
			elseif not context.clientOnly and not addTypenameToDocument:added(selection) then
				-- ROBLOX deviation END
				invariant.error(
					string.sub(
						("Missing field '%s' while writing result %s"):format(
							resultKeyNameFromField(selection),
							HttpService:JSONEncode(result)
						),
						1,
						1000
					)
				)
			end

			context.clientOnly = wasClientOnly
		else
			-- This is not a field, so it must be a fragment, either inline or named
			local fragment = getFragmentFromSelection(selection, context.fragmentMap)
			-- ROBLOX deviation START: clean up comment and remove Boolean
			-- By passing result and context.variables, we enable
			-- policies.fragmentMatches to bend the rules when typename is
			-- not a known subtype of the fragment type condition, but the
			-- result object contains all the keys requested by the
			-- fragment, which strongly suggests the fragment probably
			-- matched. This fuzzy matching behavior must be enabled by
			-- including a regular expression string (such as ".*" or
			-- "Prefix.*" or ".*Suffix") in the possibleTypes array for
			-- specific supertypes; otherwise, all matching remains exact.
			-- Fuzzy matches are remembered by the Policies object and
			-- later used when reading from the cache. Since there is no
			-- incoming result object to check when reading, reading does
			-- not involve the same fuzzy inference, so the StoreReader
			-- class calls policies.fragmentMatches without passing result
			-- or context.variables. The flexibility of fuzzy matching
			-- allows existing clients to accommodate previously unknown
			-- __typename strings produced by server/schema changes, which
			-- would otherwise be breaking changes.
			if fragment and policies:fragmentMatches(fragment, typename, result, context.variables) then
				Array.forEach(fragment.selectionSet.selections, selections.add, selections)
			end
			-- ROBLOX deviation END
		end
	end
	-- ROBLOX deviation END

	-- ROBLOX deviation START: use type instead of typeof
	if "string" == type(dataId) then
		-- ROBLOX deviation END
		local previous =
			context.incomingById:get(dataId) :: { fields: StoreObject, mergeTree: MergeTree, selections: Set<SelectionNode> }?
		if previous then
			previous.fields = context.merge(previous.fields, incomingFields)
			previous.mergeTree = mergeMergeTrees(previous.mergeTree, mergeTree)
			-- Add all previous SelectionNode objects, rather than creating a new
			-- Set, since the original unmerged selections Set is not going to be
			-- needed again (only the merged Set).
			-- ROBLOX FIXME Luau: selections could not be converted into Object?
			previous.selections:forEach(selections.add :: any, selections :: any)
			previous.selections = selections
		else
			context.incomingById:set(
				dataId,
				{ fields = incomingFields, mergeTree = mergeTree, selections = selections }
			)
		end
		return makeReference(dataId)
	end

	return incomingFields
end

function StoreWriter:processFieldValue(
	value: any,
	field: FieldNode,
	context: WriteContext,
	mergeTree: MergeTree
): StoreValue
	-- ROBLOX deviation START: remove Boolean
	if not field.selectionSet or value == NULL then
		-- ROBLOX deviation END
		-- In development, we need to clone scalar values so that they can be
		-- safely frozen with maybeDeepFreeze in readFromStore.ts. In production,
		-- it's cheaper to store the scalar values directly in the cache.
		if __DEV__ then
			return cloneDeep(value)
		else
			return value
		end
	end

	if Array.isArray(value) then
		return Array.map(value, function(item, i)
			local value = self:processFieldValue(item, field, context, getChildMergeTree(mergeTree, i))
			maybeRecycleChildMergeTree(mergeTree, i)
			return value
		end)
	end

	return self:processSelectionSet({
		result = value,
		selectionSet = field.selectionSet,
		context = context,
		mergeTree = mergeTree,
	})
end

function StoreWriter:applyMerges<T>(
	mergeTree: MergeTree,
	existing: StoreValue,
	incoming: T,
	context: WriteContext,
	getStorageArgs: Tuple<string | StoreObject, string | number>?
): T | Reference
	-- ROBLOX deviation START: replace Boolean with number comparison
	if mergeTree.map.size > 0 and not isReference(incoming) then
		-- ROBLOX deviation END
		local e: StoreObject | Reference | nil = (function(): StoreObject | Reference | nil
			local ref = (function(): boolean
				-- Items in the same position in different arrays are not
				-- necessarily related to each other, so when incoming is an array
				-- we process its elements as if there was no existing data.
				if not Array.isArray(incoming) then
					-- Likewise, existing must be either a Reference or a StoreObject
					-- in order for its fields to be safe to merge with the fields of
					-- the incoming object.
					return isReference(existing) or storeValueIsStoreObject(existing)
				else
					return false
				end
			end)()

			if ref then
				return existing :: StoreObject | Reference
			else
				return nil
			end
		end)()

		-- This narrowing is implied by mergeTree.map.size > 0 and
		-- !isReference(incoming), though TypeScript understandably cannot
		-- hope to infer this type.
		local i = (incoming :: any) :: StoreObject | Array<StoreValue>

		-- The options.storage objects provided to read and merge functions
		-- are derived from the identity of the parent object plus a
		-- sequence of storeFieldName strings/numbers identifying the nested
		-- field name path of each field value to be merged.
		-- ROBLOX deviation START: remove Boolean
		if e ~= nil and not getStorageArgs then
			-- ROBLOX deviation END
			if isReference(e) then
				getStorageArgs = { (e :: Reference).__ref }
			else
				getStorageArgs = { e :: StoreObject }
			end
		end

		-- It's possible that applying merge functions to this subtree will
		-- not change the incoming data, so this variable tracks the fields
		-- that did change, so we can create a new incoming object when (and
		-- only when) at least one incoming field has changed. We use a Map
		-- to preserve the type of numeric keys.
		local changedFields: Map<string | number, StoreValue> | nil

		local function getValue(from: typeof(e) | typeof(i), name: string | number): StoreValue
			if Array.isArray(from) then
				if typeof(name) == "number" then
					return (from :: Array<StoreValue>)[name]
				else
					return nil
				end
			else
				return context.store:getFieldValue(from :: StoreObject | Reference, tostring(name))
			end
		end

		mergeTree.map:forEach(function(childTree, storeFieldName)
			local eVal = getValue(e, storeFieldName)
			local iVal = getValue(i, storeFieldName)
			-- If we have no incoming data, leave any existing data untouched.
			if nil == iVal then
				return
			end
			if getStorageArgs ~= nil then
				table.insert(getStorageArgs, storeFieldName)
			end
			local aVal = self:applyMerges(childTree, eVal, iVal, context, getStorageArgs)
			if aVal ~= iVal then
				-- ROBLOX deviation START: remove Boolean
				changedFields = changedFields or Map.new(nil);
				-- ROBLOX deviation END
				(changedFields :: Map<string | number, StoreValue>):set(storeFieldName, aVal)
			end
			if getStorageArgs ~= nil then
				invariant(table.remove(getStorageArgs, #getStorageArgs) == storeFieldName)
			end
		end)

		-- ROBLOX deviation START: remove Boolean
		if changedFields ~= nil then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: use table.clone for shallow copy
			-- Shallow clone i so we can add changed fields to it.
			incoming = (table.clone(i) :: any) :: T
			-- ROBLOX deviation END
			changedFields:forEach(function(value, name)
				(incoming :: any)[name] = value
			end)
		end
	end

	-- ROBLOX deviation START: remove Boolean
	if mergeTree.info then
		-- ROBLOX deviation END
		return self.cache.policies:runMergeFunction(
			existing,
			incoming,
			mergeTree.info,
			context,
			Boolean.toJSBoolean(getStorageArgs) and context.store:getStorage(table.unpack(getStorageArgs :: Array<any>))
				or nil
		)
	end

	return incoming
end
exports.StoreWriter = StoreWriter

local emptyMergeTreePool: Array<MergeTree> = {}

function getChildMergeTree(ref: MergeTree, name: string | number): MergeTree
	local map = ref.map
	if not map:has(name) then
		map:set(name, table.remove(emptyMergeTreePool, #emptyMergeTreePool) or {
			map = Map.new(nil),
		})
	end
	return map:get(name) :: MergeTree
end

function mergeMergeTrees(left: MergeTree | nil, right: MergeTree | nil): MergeTree
	if left == right or not (right ~= nil) or mergeTreeIsEmpty(right) then
		return left :: MergeTree
	end

	if (left == nil) or mergeTreeIsEmpty(left) then
		return right :: MergeTree
	end

	-- ROBLOX deviation START: convert Boolean to size comparison, use table.clone
	local info = if (left :: MergeTree).info and (right :: MergeTree).info
		then Object.assign(table.clone((left :: MergeTree).info :: MergeInfo), (right :: MergeTree).info)
		else (left :: MergeTree).info or (right :: MergeTree).info :: MergeInfo?

	local needToMergeMaps = if (left :: MergeTree).map.size > 0
		then (right :: MergeTree).map.size
		else (left :: MergeTree).map.size

	local map = if needToMergeMaps > 0
		then Map.new()
		else if (left :: MergeTree).map.size > 0
			then (left :: MergeTree).map
			else (right :: MergeTree).map :: Map<any, any>

	local merged = { info = info, map = map }

	if needToMergeMaps > 0 then
		-- ROBLOX deviation END
		local remainingRightKeys = Set.new((right :: MergeTree).map:keys());

		(left :: MergeTree).map:forEach(function(leftTree, key)
			(merged.map :: Map<any, any>):set(key, mergeMergeTrees(leftTree, (right :: MergeTree).map:get(key)))
			remainingRightKeys:delete(key)
		end)

		remainingRightKeys:forEach(function(key)
			(merged.map :: Map<any, any>):set(
				key,
				mergeMergeTrees((right :: MergeTree).map:get(key), (left :: MergeTree).map:get(key))
			)
		end)
	end

	return merged
end

function mergeTreeIsEmpty(tree: MergeTree | nil): boolean
	-- ROBLOX deviation START: remove Boolean
	return not tree or not ((tree :: MergeTree).info or (tree :: MergeTree).map.size > 0)
	-- ROBLOX deviaiton END
end

function maybeRecycleChildMergeTree(ref: MergeTree, name: string | number)
	local map = ref.map

	local childTree = map:get(name)

	if childTree ~= nil and mergeTreeIsEmpty(childTree) then
		table.insert(emptyMergeTreePool, childTree)
		map:delete(name)
	end
end

local warnings = Set.new()

-- Note that this function is unused in production, and thus should be
-- pruned by any well-configured minifier.
function warnAboutDataLoss(
	existingRef: Reference,
	incomingObj: StoreObject,
	storeFieldName: string,
	store: NormalizedCache
)
	-- ROBLOX deviation: getChild returns StoreObject | false
	local function getChild(objOrRef: StoreObject | Reference): StoreObject | boolean
		local child = store:getFieldValue(objOrRef, storeFieldName)
		return typeof(child) == "table" and child
	end

	local existing = getChild(existingRef)
	if not existing then
		return
	end

	local incoming = getChild(incomingObj)
	if not incoming then
		return
	end

	-- It's always safe to replace a reference, since it refers to data
	-- safely stored elsewhere.
	if isReference(existing) then
		return
	end

	-- If the values are structurally equivalent, we do not need to worry
	-- about incoming replacing existing.
	if equal(existing, incoming) then
		return
	end

	-- If we're replacing every key of the existing object, then the
	-- existing data would be overwritten even if the objects were
	-- normalized, so warning would not be helpful here.
	if
		Array.every(Object.keys(existing :: StoreObject), function(key)
			return store:getFieldValue(incoming :: StoreObject, key) ~= nil
		end)
	then
		return
	end

	local ref = store:getFieldValue(existingRef, "__typename")
	local parentType = Boolean.toJSBoolean(ref) and ref or store:getFieldValue(incomingObj, "__typename")

	local fieldName = fieldNameFromStoreName(storeFieldName)
	local typeDotName = ("%s.%s"):format(parentType, fieldName)

	-- Avoid warning more than once for the same type and field name.
	if warnings:has(typeDotName) then
		return
	end
	warnings:add(typeDotName)

	local childTypenames: Array<string> = {}
	-- Arrays do not have __typename fields, and always need a custom merge
	-- function, even if their elements are normalized entities.
	if not Array.isArray(existing) and not Array.isArray(incoming) then
		Array.forEach({ existing, incoming }, function(child)
			local typename = store:getFieldValue(child, "__typename")
			if typeof(typename) == "string" and not Array.includes(childTypenames, typename) then
				table.insert(childTypenames, typename)
			end
		end)
	end
	invariant.warn(
		([[Cache data may be lost when replacing the %s field of a %s object.

	To address this problem (which is not a bug in Apollo Client), %sdefine a custom merge function for the %s field, so InMemoryCache can safely merge these objects:

	  existing: %s
	  incoming: %s

	For more information about these options, please refer to the documentation:

	  * Ensuring entity objects have IDs: https://go.apollo.dev/c/generating-unique-identifiers
	  * Defining custom merge functions: https://go.apollo.dev/c/merging-non-normalized-objects
	]]):format(
			fieldName,
			parentType,
			(function()
				if Boolean.toJSBoolean(#childTypenames) then
					return "either ensure all objects of type "
						.. Array.join(childTypenames, " and ")
						.. " have an ID or a custom merge function, or "
				else
					return ""
				end
			end)(),
			typeDotName,
			string.sub(HttpService:JSONEncode(existing), 1, 1000),
			string.sub(HttpService:JSONEncode(incoming), 1, 1000)
		)
	)
end
return exports
