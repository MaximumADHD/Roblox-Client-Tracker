--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/entityStore.ts
local exports = {}

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local instanceOf = LuauPolyfill.instanceof
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local isCallable = require(srcWorkspace.luaUtils.isCallable)
local objectKeysForEach = require(srcWorkspace.luaUtils.objectKeysForEach)
type Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>

type Record<T, U> = { [T]: U }

-- ROBLOX TODO: replace when function generics are available
type T_ = any

local optimismModule = require(srcWorkspace.optimism)
local dep = optimismModule.dep
type OptimisticDependencyFunction<TKey> = optimismModule.OptimisticDependencyFunction<TKey>

local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant

local equal = require(srcWorkspace.jsutils.equal)

local trieModule = require(srcWorkspace.wry.trie)
local Trie = trieModule.Trie
type Trie<T> = trieModule.Trie<T>

local utilitiesModule = require(script.Parent.Parent.Parent.utilities)
local isReference = utilitiesModule.isReference
type StoreValue = utilitiesModule.StoreValue
type StoreObject = utilitiesModule.StoreObject
type Reference = utilitiesModule.Reference
local makeReference = utilitiesModule.makeReference
local DeepMerger = utilitiesModule.DeepMerger
local maybeDeepFreeze = utilitiesModule.maybeDeepFreeze
local canUseWeakMap = utilitiesModule.canUseWeakMap
local isNonNullObject = utilitiesModule.isNonNullObject

local typesModule = require(script.Parent.types)
type NormalizedCache = typesModule.NormalizedCache
type NormalizedCacheObject = typesModule.NormalizedCacheObject

local helpersModule = require(script.Parent.helpers)
local hasOwn = helpersModule.hasOwn
local fieldNameFromStoreName = helpersModule.fieldNameFromStoreName

local policiesModule = require(script.Parent.policies)
type Policies = policiesModule.Policies
type StorageType = policiesModule.StorageType

local cacheTypesModule = require(script.Parent.Parent.core.types.Cache)
type Cache_EvictOptions = cacheTypesModule.Cache_EvictOptions

local commonModule = require(script.Parent.Parent.core.types.common)
type SafeReadonly<T> = commonModule.SafeReadonly<T>
type Modifier<T> = commonModule.Modifier<T>
type Modifiers = commonModule.Modifiers
type ReadFieldOptions = commonModule.ReadFieldOptions
type ToReferenceFunction = commonModule.ToReferenceFunction
type CanReadFunction = commonModule.CanReadFunction

local DELETE: any = {}

local delModifier: Modifier<any>
function delModifier()
	return DELETE
end

local INVALIDATE: any = {}

--ROBLOX deviation: predefined variables
local Layer
local Stump
local makeDepKey
local storeObjectReconciler
local supportsResultCaching

export type EntityStore = {
	policies: Policies,
	group: CacheGroup,
	addLayer: (self: EntityStore, layerId: string, replay: (layer: EntityStore) -> any?) -> Layer,
	removeLayer: (self: EntityStore, layerId: string) -> EntityStore,
	toObject: (self: EntityStore) -> NormalizedCacheObject,
	has: (self: EntityStore, dataId: string) -> boolean,
	get: (self: EntityStore, dataId: string, fieldName: string) -> StoreValue,
	merge: (self: EntityStore, ...any) -> (),
	modify: (self: EntityStore, dataId: string, fields: Modifier<any> | Modifiers) -> boolean,
	delete: (
		self: EntityStore,
		dataId: string,
		fieldName: (string | nil)?,
		args: (Record<string, any> | nil)?
	) -> boolean,
	evict: (self: EntityStore, options: Cache_EvictOptions) -> boolean,
	clear: (self: EntityStore) -> (),
	extract: (self: EntityStore) -> NormalizedCacheObject,
	replace: (self: EntityStore, newData: NormalizedCacheObject | nil) -> (),
	getStorage: (self: EntityStore, idOrObj: string | StoreObject, ...(string | number)) -> StorageType,
	retain: (self: EntityStore, rootId: string) -> number,
	release: (self: EntityStore, rootId: string) -> number,
	getRootIdSet: (self: EntityStore, ids: Set<string>?) -> Set<string>,
	gc: (self: EntityStore) -> Array<string>,
	findChildRefIds: (self: EntityStore, dataId: string) -> Record<string, boolean>,
	makeCacheKey: (self: EntityStore, ...any) -> Object,
	-- ROBLOX TODO: default type arg
	getFieldValue: <T>(
		self: EntityStore,
		objectOrReference: StoreObject | Reference | nil,
		storeFieldName: string
	) -> SafeReadonly<T>,
	canRead: (self: EntityStore, value: StoreValue) -> boolean,
	toReference: (
		self: EntityStore,
		objOrIdOrRef: StoreObject | string | Reference,
		mergeIntoStore: (boolean | nil)?
	) -> Reference | nil,
}
local EntityStore = {}
EntityStore.__index = EntityStore

function EntityStore.new(policies: Policies, group: CacheGroup): EntityStore
	local self = setmetatable({}, EntityStore) :: any
	self.policies = policies
	self.group = group
	self.data = {} :: NormalizedCacheObject

	-- Maps root entity IDs to the number of times they have been retained, minus
	-- the number of times they have been released. Retained entities keep other
	-- entities they reference (even indirectly) from being garbage collected.
	self.rootIds = {}

	-- Lazily tracks { __ref: <dataId> } strings contained by this.data[dataId].
	self.refs = {}

	-- Bound function that can be passed around to provide easy access to fields
	-- of Reference objects as well as ordinary objects.
	self.getFieldValue = function(
		_self: EntityStore,
		objectOrReference: StoreObject | Reference | nil,
		storeFieldName: string
	)
		-- ROBLOX deviation START: translate if then else by hand
		return maybeDeepFreeze(
			if isReference(objectOrReference)
				then self:get((objectOrReference :: Reference).__ref, storeFieldName)
				else objectOrReference and (objectOrReference :: StoreObject)[storeFieldName]
		) :: SafeReadonly<any>
		-- ROBLOX deviation END
	end

	-- Returns true for non-normalized StoreObjects and non-dangling
	-- References, indicating that readField(name, objOrRef) has a chance of
	-- working. Useful for filtering out dangling references from lists.
	self.canRead = function(_self: EntityStore, objOrRef): boolean
		if isReference(objOrRef) then
			return self:has((objOrRef :: Reference).__ref)
		else
			return typeof(objOrRef) == "table"
		end
	end

	-- Bound function that converts an id or an object with a __typename and
	-- primary key fields to a Reference object. If called with a Reference object,
	-- that same Reference object is returned. Pass true for mergeIntoStore to persist
	-- an object into the store.
	self.toReference = function(_self: EntityStore, objOrIdOrRef, mergeIntoStore)
		-- ROBLOX deviation START: use type instead of typeof
		if type(objOrIdOrRef) == "string" then
			-- ROBLOX deviation END
			return makeReference(objOrIdOrRef)
		end

		if isReference(objOrIdOrRef) then
			return objOrIdOrRef
		end

		local id = table.unpack(self.policies:identify(objOrIdOrRef), 1, 1)

		-- ROBLOX deviation START: remove Boolean
		if id then
			-- ROBLOX deviation END
			local ref = makeReference(id)
			-- ROBLOX deviation START: remove Boolean
			if mergeIntoStore then
				-- ROBLOX deviation END
				(self :: EntityStore):merge(id, objOrIdOrRef :: StoreObject)
			end
			return ref
		end
		return
	end

	return self :: EntityStore
end

function EntityStore:addLayer(layerId: string, replay: (layer: EntityStore) -> any): Layer
	error("not implemented abstract method")
end

function EntityStore:removeLayer(layerId: string): EntityStore
	error("not implemented abstract method")
end

-- Although the EntityStore class is abstract, it contains concrete
-- implementations of the various NormalizedCache interface methods that
-- are inherited by the Root and Layer subclasses

function EntityStore:toObject(): NormalizedCacheObject
	-- ROBLOX deviation START: clone data
	return table.clone(self.data)
	-- ROBLOX deviation END
end

function EntityStore:has(dataId: string): boolean
	return self:lookup(dataId, true) ~= nil
end

function EntityStore:get(dataId: string, fieldName: string): StoreValue
	self.group:depend(dataId, fieldName)
	if hasOwn(self.data, dataId) then
		local storeObject = self.data[dataId]
		if Boolean.toJSBoolean(storeObject) and hasOwn(storeObject, fieldName) then
			return storeObject[fieldName]
		end
	end

	if fieldName == "__typename" and hasOwn(self.policies.rootTypenamesById, dataId) then
		return self.policies.rootTypenamesById[dataId]
	end

	if instanceOf(self, Layer) then
		return (self :: Layer).parent:get(dataId, fieldName)
	end
	return nil
end

function EntityStore:lookup(dataId: string, dependOnExistence: boolean?): StoreObject | nil
	-- The has method (above) calls lookup with dependOnExistence = true, so
	-- that it can later be invalidated when we add or remove a StoreObject for
	-- this dataId. Any consumer who cares about the contents of the StoreObject
	-- should not rely on this dependency, since the contents could change
	-- without the object being added or removed.
	-- ROBLOX deviation START: remove Boolean
	if dependOnExistence then
		-- ROBLOX deviation END
		self.group:depend(dataId, "__exists")
	end

	if hasOwn(self.data, dataId) then
		return self.data[dataId]
	end

	if instanceOf(self, Layer) then
		return self.parent:lookup(dataId, dependOnExistence)
	end

	-- ROBLOX deviation START: remove Boolean
	if self.policies.rootTypenamesById[dataId] then
		-- ROBLOX deviation END
		return {} :: StoreObject
	end

	return nil
end

function EntityStore:merge(older: string | StoreObject, newer: StoreObject | string): ()
	local dataId: string | nil

	-- Convert unexpected references to ID strings.
	if isReference(older) then
		-- ROBLOX deviation START: added type annotation
		older = ((older :: any) :: Reference).__ref
		-- ROBLOX deviation END
	end
	if isReference(newer) then
		-- ROBLOX deviation START: added type annotation
		newer = ((newer :: any) :: Reference).__ref
		-- ROBLOX deviation END
	end

	-- ROBLOX deviation START: Use type instead of typeof
	local existing: StoreObject | nil
	if type(older) == "string" then
		-- ROBLOX deviation END
		dataId = older
		existing = self:lookup(dataId)
	else
		existing = older
	end

	local incoming: StoreObject | nil
	-- ROBLOX deviation START: Use type instead of typeof
	if type(newer) == "string" then
		-- ROBLOX deviation END
		dataId = newer
		incoming = self:lookup(dataId)
	else
		incoming = newer
	end

	-- If newer was a string ID, but that ID was not defined in this store,
	-- then there are no fields to be merged, so we're done.
	-- ROBLOX deviation START: remove Boolean
	if not incoming then
		-- ROBLOX deviation END
		return
	end

	invariant(typeof(dataId) == "string", "store.merge expects a string ID")

	local merged: StoreObject = DeepMerger.new(storeObjectReconciler):merge(existing, incoming)

	-- Even if merged === existing, existing may have come from a lower
	-- layer, so we always need to set this.data[dataId] on this level.
	self.data[dataId] = merged
	if merged ~= existing then
		self.refs[dataId] = nil
		-- ROBLOX deviation START: remove Boolean
		if self.group.caching then
			-- ROBLOX deviation END
			local fieldsToDirty: Record<string, number> = {}

			-- If we added a new StoreObject where there was previously none, dirty
			-- anything that depended on the existence of this dataId, such as the
			-- EntityStore#has method.
			-- ROBLOX deviation START: remove Boolean
			if not existing then
				-- ROBLOX deviation END
				fieldsToDirty.__exists = 1
			end

			-- Now invalidate dependents who called getFieldValue for any fields
			-- that are changing as a result of this merge.
			-- ROBLOX deviation START: optimize Object.keys().forEach for luau
			objectKeysForEach(incoming :: StoreObject, function(storeFieldName)
				-- ROBLOX deviation END
				-- ROBLOX deviation START: remove Boolean
				if not existing or (existing :: StoreObject)[storeFieldName] ~= merged[storeFieldName] then
					-- ROBLOX deviation END
					-- Always dirty the full storeFieldName, which may include
					-- serialized arguments following the fieldName prefix.
					fieldsToDirty[storeFieldName] = 1

					-- Also dirty fieldNameFromStoreName(storeFieldName) if it's
					-- different from storeFieldName and this field does not have
					-- keyArgs configured, because that means the cache can't make
					-- any assumptions about how field values with the same field
					-- name but different arguments might be interrelated, so it
					-- must err on the side of invalidating all field values that
					-- share the same short fieldName, regardless of arguments.
					local fieldName = fieldNameFromStoreName(storeFieldName)
					if fieldName ~= storeFieldName and not self.policies:hasKeyArgs(merged.__typename, fieldName) then
						fieldsToDirty[fieldName] = 1
					end

					-- If merged[storeFieldName] has become undefined, and this is the
					-- Root layer, actually delete the property from the merged object,
					-- which is guaranteed to have been created fresh in this method.
					if merged[storeFieldName] == nil and not instanceOf(self, Layer) then
						merged[storeFieldName] = nil
					end
				end
			end)

			-- ROBLOX deviation START: remove Boolean
			if
				fieldsToDirty.__typename
				and not (existing and (existing :: StoreObject).__typename)
				-- ROBLOX deviation END
				-- Since we return default root __typename strings
				-- automatically from store.get, we don't need to dirty the
				-- ROOT_QUERY.__typename field if merged.__typename is equal
				-- to the default string (usually "Query").
				-- ROBLOX deviation START: remove tostring around dataId
				and self.policies.rootTypenamesById[dataId] == merged.__typename
				-- ROBLOX deviation END
			then
				(fieldsToDirty :: any).__typename = nil
			end

			-- ROBLOX deviation START: optimize Object.keys().forEach for luau
			objectKeysForEach(fieldsToDirty, function(fieldName)
				-- ROBLOX deviation END
				return self.group:dirty(dataId :: string, fieldName)
			end)
		end
	end
end

function EntityStore:modify(dataId: string, fields: Modifier<any> | Modifiers): boolean
	local storeObject = self:lookup(dataId)

	-- ROBLOX deviation START: remove Boolean
	if storeObject then
		-- ROBLOX deviation END
		local changedFields: Record<string, any> = {}
		local needToMerge = false
		local allDeleted = true

		local sharedDetails = {
			DELETE = DELETE,
			INVALIDATE = INVALIDATE,
			isReference = function(_self, ...)
				return isReference(...)
			end,
			toReference = self.toReference,
			canRead = self.canRead,
			readField = function(
				_self,
				fieldNameOrOptions: string | ReadFieldOptions,
				from: (StoreObject | Reference)?
			)
				return self.policies:readField(typeof(fieldNameOrOptions) == "string" and {
					fieldName = fieldNameOrOptions,
					-- ROBLOX deviation START: remove Boolean
					from = from or makeReference(dataId),
					-- ROBLOX deviation END
				} or fieldNameOrOptions, {
					store = self,
				})
			end,
		}

		-- ROBLOX deviation START: optimize Object.keys().forEach for luau
		objectKeysForEach(storeObject, function(storeFieldName)
			-- ROBLOX deviation END
			local fieldName = fieldNameFromStoreName(storeFieldName)
			local fieldValue = storeObject[storeFieldName]
			if fieldValue == nil then
				return
			end
			local modify: Modifier<StoreValue>
			if isCallable(fields) then
				modify = fields :: Modifier<any>
			else
				local fields_ = fields :: Modifiers
				-- ROBLOX deviation START: remove Boolean
				modify = fields_[storeFieldName] or fields_[fieldName]
				-- ROBLOX deviation END
			end

			-- ROBLOX deviation START: remove Boolean
			if modify then
				-- ROBLOX deviation END
				local newValue
				if modify == delModifier then
					newValue = DELETE
				else
					newValue = modify(
							-- ROBLOX deviation: passing fields as self
						not isCallable(fields) and fields :: Modifiers or nil,
						maybeDeepFreeze(fieldValue),
						-- ROBLOX deviation START: use table.clone to prevent additional iteration
						Object.assign(table.clone(sharedDetails), {
							-- ROBLOX deviation END
							fieldName = fieldName,
							storeFieldName = storeFieldName,
							storage = self:getStorage(dataId, storeFieldName),
						})
					)
				end
				if newValue == INVALIDATE then
					self.group:dirty(dataId, storeFieldName)
				else
					if newValue == DELETE then
						newValue = DeepMerger.None
					end
					if newValue ~= fieldValue then
						changedFields[storeFieldName] = newValue
						needToMerge = true
						fieldValue = newValue
					end
				end
			end

			if fieldValue ~= nil and fieldValue ~= DeepMerger.None then
				allDeleted = false
			end
		end)

		if needToMerge then
			self:merge(dataId, changedFields)

			if allDeleted then
				if instanceOf(self, Layer) then
					self.data[dataId] = nil
				else
					self.data[dataId] = nil
				end
				self.group:dirty(dataId, "__exists")
			end

			return true
		end
	end
	return false
end

-- If called with only one argument, removes the entire entity
-- identified by dataId. If called with a fieldName as well, removes all
-- fields of that entity whose names match fieldName according to the
-- fieldNameFromStoreName helper function. If called with a fieldName
-- and variables, removes all fields of that entity whose names match fieldName
-- and whose arguments when cached exactly match the variables passed.
function EntityStore:delete(dataId: string, fieldName: string?, args: Record<string, any>?)
	local storeObject = self:lookup(dataId)
	-- ROBLOX deviation START: remove Boolean
	if storeObject then
		-- ROBLOX deviation END
		local typename = self:getFieldValue(storeObject, "__typename")

		local storeFieldName
		-- ROBLOX deviation START: remove Boolean
		if fieldName and args then
			-- ROBLOX deviation END
			storeFieldName = self.policies:getStoreFieldName({
				typename = typename,
				fieldName = fieldName,
				args = args,
			})
		else
			storeFieldName = fieldName
		end

		-- ROBLOX deviation START: use if then else, remove boolean
		return self:modify(dataId, if storeFieldName then { [storeFieldName] = delModifier } else delModifier)
		-- ROBLOX deviation END
	end
	return false
end

function EntityStore:evict(options: Cache_EvictOptions): boolean
	local evicted = false
	-- ROBLOX deviation START: remove Boolean
	if options.id then
		-- ROBLOX deviation END
		if hasOwn(self.data, options.id :: string) then
			evicted = self:delete(options.id, options.fieldName, options.args)
		end
		if instanceOf(self, Layer) then
			local res = self.parent:evict(options)
			-- ROBLOX deviation START: remove Boolean
			evicted = res or evicted
			-- ROBLOX deviation END
		end

		-- Always invalidate the field to trigger rereading of watched
		-- queries, even if no cache data was modified by the eviction,
		-- because queries may depend on computed fields with custom read
		-- functions, whose values are not stored in the EntityStore.
		-- ROBLOX deviation START: remove Boolean
		if options.fieldName or evicted then
			self.group:dirty(options.id, options.fieldName or "__exists")
			-- ROBLOX deviation END
		end
	end
	return evicted
end

function EntityStore:clear(): ()
	self:replace(nil)
end

function EntityStore:extract(): NormalizedCacheObject
	local obj = self:toObject()
	local extraRootIds: Array<string> = {}
	self:getRootIdSet():forEach(function(id)
		if not hasOwn(self.policies.rootTypenamesById, id) then
			table.insert(extraRootIds, id :: string)
		end
	end)
	-- ROBLOX deviation START: remove Boolean
	if #extraRootIds > 0 then
		-- ROBLOX deviation END
		obj.__META = { extraRootIds = Array.sort(extraRootIds) }
	end
	return obj
end

function EntityStore:replace(newData: NormalizedCacheObject | nil): ()
	-- ROBLOX deviation START: optimize Object.keys().forEach for luau
	objectKeysForEach(self.data, function(dataId)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: remove Boolean
		if not (newData and hasOwn(newData :: NormalizedCacheObject, dataId)) then
			-- ROBLOX deviation END
			self:delete(dataId)
		end
	end)

	-- ROBLOX deviation START: remove Boolean
	if newData ~= nil then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use table.clone instead of iterating over data
		local __META, rest = newData.__META, Object.assign(table.clone(newData), { __META = Object.None }) :: Object
		-- ROBLOX deviation START: remove Boolean
		-- ROBLOX deviation START: optimize Object.keys().forEach for luau
		objectKeysForEach(rest, function(dataId)
			-- ROBLOX deviation END
			self:merge(dataId, rest[dataId] :: StoreObject)
		end)

		-- ROBLOX deviation START: remove Boolean
		if __META ~= nil then
			-- ROBLOX deviation END
			Array.forEach(__META.extraRootIds, self.retain, self :: any)
		end
	end
end

function EntityStore:getStorage(idOrObj: string | StoreObject, ...): StorageType
	error("not implemented abstract method")
end

function EntityStore:retain(rootId: string): number
	-- ROBLOX deviation START: use if then else
	self.rootIds[rootId] = (if Boolean.toJSBoolean(self.rootIds[rootId]) then self.rootIds[rootId] else 0) + 1
	-- ROBLOX deviation END
	return self.rootIds[rootId]
end

function EntityStore:release(rootId: string)
	if self.rootIds[rootId] > 0 then
		-- ROBLOX deviation START: remove tostring(rootId)
		self.rootIds[rootId] -= 1
		-- ROBLOX deviation END
		local count = self.rootIds[rootId]

		if not Boolean.toJSBoolean(count) then
			self.rootIds[rootId] = nil
		end
		return count
	end
	return 0
end

-- Return a Set<string> of all the ID strings that have been retained by
-- this layer/root *and* any layers/roots beneath it.
function EntityStore:getRootIdSet(ids_: Set<string>?): Set<string>
	local ids = ids_ :: Set<string>
	if ids_ == nil then
		ids = Set.new()
	end
	Array.forEach(Object.keys(self.rootIds), ids.add, ids)
	if instanceOf(self, Layer) then
		self.parent:getRootIdSet(ids)
	else
		-- Official singleton IDs like ROOT_QUERY and ROOT_MUTATION are
		-- always considered roots for garbage collection, regardless of
		-- their retainment counts in this.rootIds.
		Array.forEach(Object.keys(self.policies.rootTypenamesById), ids.add, ids)
	end
	return ids
end

-- The goal of garbage collection is to remove IDs from the Root layer of the
-- store that are no longer reachable starting from any IDs that have been
-- explicitly retained (see retain and release, above). Returns an array of
-- dataId strings that were removed from the store.
function EntityStore:gc()
	local ids = self:getRootIdSet()
	local snapshot = self:toObject()
	-- ROBLOX deviation START: set is being modified inside the loop, can't use forEach
	for _, id in ids do
		if hasOwn(snapshot, id) then
			-- Because we are iterating over an ECMAScript Set, the IDs we add here
			-- will be visited in later iterations of the forEach loop only if they
			-- were not previously contained by the Set.
			Array.forEach(Object.keys(self:findChildRefIds(id)), ids.add, ids :: any)
			-- By removing IDs from the snapshot object here, we protect them from
			-- getting removed from the root store layer below.
			snapshot[id] = nil
		end
	end
	-- ROBLOX deviation END

	local idsToRemove = Object.keys(snapshot)

	if Boolean.toJSBoolean(#idsToRemove) then
		local root: EntityStore = (self :: any) :: EntityStore

		while instanceOf(root, Layer) do
			root = ((root :: any) :: Layer).parent
		end
		Array.forEach(idsToRemove, function(id)
			return root:delete(id)
		end)
	end
	return idsToRemove
end

function EntityStore:findChildRefIds(dataId: string): Record<string, boolean>
	if not hasOwn(self.refs, dataId) then
		self.refs[dataId] = {}
		local found = self.refs[dataId]
		local root = self.data[dataId]
		-- ROBLOX deviation START: remove Boolean
		if not root then
			-- ROBLOX deviation END
			return found
		end

		local workSet = Set.new({ root }) :: Set<Record<string | number, any>>
		-- Within the store, only arrays and objects can contain child entity
		-- references, so we can prune the traversal using this predicate:
		-- ROBLOX deviation START: set is being modified inside the loop, can't use forEach
		for _, obj in workSet do
			if isReference(obj) then
				found[obj.__ref] = true
				-- In rare cases, a { __ref } Reference object may have other fields.
				-- This often indicates a mismerging of References with StoreObjects,
				-- but garbage collection should not be fooled by a stray __ref
				-- property in a StoreObject (ignoring all the other fields just
				-- because the StoreObject looks like a Reference). To avoid this
				-- premature termination of findChildRefIds recursion, we fall through
				-- to the code below, which will handle any other properties of obj.
			end

			if isNonNullObject(obj) then
				-- ROBLOX deviation START: optimize Object.keys().forEach for luau
				objectKeysForEach(obj, function(key)
					-- ROBLOX deviation END
					local child = obj[key]
					-- No need to add primitive values to the workSet, since they cannot
					-- contain reference objects.
					if isNonNullObject(child) then
						workSet:add(child)
					end
				end)
			end
		end
		-- ROBLOX deviation END
	end
	return self.refs[dataId]
end

-- Used to compute cache keys specific to this.group.
function EntityStore:makeCacheKey(...): { [string]: any }
	return self.group.keyMaker:lookupArray({ ... })
end
exports.EntityStore = EntityStore

export type FieldValueGetter = typeof((({} :: any) :: EntityStore).getFieldValue)

-- A single CacheGroup represents a set of one or more EntityStore objects,
-- typically the Root store in a CacheGroup by itself, and all active Layer
-- stores in a group together. A single EntityStore object belongs to only
-- one CacheGroup, store.group. The CacheGroup is responsible for tracking
-- dependencies, so store.group is helpful for generating unique keys for
-- cached results that need to be invalidated when/if those dependencies
-- change. If we used the EntityStore objects themselves as cache keys (that
-- is, store rather than store.group), the cache would become unnecessarily
-- fragmented by all the different Layer objects. Instead, the CacheGroup
-- approach allows all optimistic Layer objects in the same linked list to
-- belong to one CacheGroup, with the non-optimistic Root object belonging
-- to another CacheGroup, allowing resultCaching dependencies to be tracked
-- separately for optimistic and non-optimistic entity data.
type CacheGroup = {
	caching: boolean,
	-- Used by the EntityStore#makeCacheKey method to compute cache keys
	-- specific to this CacheGroup.
	keyMaker: Trie<Object>,
	resetCaching: (self: CacheGroup) -> (),
	depend: (self: CacheGroup, dataId: string, storeFieldName: string) -> (),
	dirty: (self: CacheGroup, dataId: string, storeFieldName: string) -> (),
}
local CacheGroup = {}
CacheGroup.__index = CacheGroup
function CacheGroup.new(caching: boolean, parent: CacheGroup | nil): CacheGroup
	local self = setmetatable({}, CacheGroup)
	self.caching = caching
	self.parent = parent
	self.d = nil :: OptimisticDependencyFunction<string>?
	self:resetCaching()
	return (self :: any) :: CacheGroup
end

function CacheGroup:resetCaching()
	-- ROBLOX deviation START: remove Boolean
	self.d = if self.caching then dep() else nil
	-- ROBLOX deviation END
	self.keyMaker = Trie.new(canUseWeakMap)
end

function CacheGroup:depend(dataId: string, storeFieldName: string)
	-- ROBLOX deviation START: remove Boolean
	if self.d then
		-- ROBLOX deviation END
		self.d(makeDepKey(dataId, storeFieldName))
		local fieldName = fieldNameFromStoreName(storeFieldName)
		if fieldName ~= storeFieldName then
			-- Fields with arguments that contribute extra identifying
			-- information to the fieldName (thus forming the storeFieldName)
			-- depend not only on the full storeFieldName but also on the
			-- short fieldName, so the field can be invalidated using either
			-- level of specificity.
			self.d(makeDepKey(dataId, fieldName))
		end
		-- ROBLOX deviation START: remove Boolean
		if self.parent then
			-- ROBLOX deviation END
			self.parent:depend(dataId, storeFieldName)
		end
	end
end

function CacheGroup:dirty(dataId: string, storeFieldName: string)
	-- ROBLOX deviation START: remove Boolean
	if self.d then
		-- ROBLOX deviation END
		self.d:dirty(
			makeDepKey(dataId, storeFieldName),
			-- When storeFieldName === "__exists", that means the entity identified
			-- by dataId has either disappeared from the cache or was newly added,
			-- so the result caching system would do well to "forget everything it
			-- knows" about that object. To achieve that kind of invalidation, we
			-- not only dirty the associated result cache entry, but also remove it
			-- completely from the dependency graph. For the optimism implmentation
			-- details, see https://github.com/benjamn/optimism/pull/195.
			storeFieldName == "__exists" and "forget" or "setDirty"
		)
	end
end

function makeDepKey(dataId: string, storeFieldName: string): string
	-- Since field names cannot have '#' characters in them, this method
	-- of joining the field name and the ID should be unambiguous, and much
	-- cheaper than JSON.stringify([dataId, fieldName]).
	return storeFieldName .. "#" .. dataId
end

local function maybeDependOnExistenceOfEntity(store: NormalizedCache, entityId: string)
	if supportsResultCaching(store) then
		-- We use this pseudo-field __exists elsewhere in the EntityStore code to
		-- represent changes in the existence of the entity object identified by
		-- entityId. This dependency gets reliably dirtied whenever an object with
		-- this ID is deleted (or newly created) within this group, so any result
		-- cache entries (for example, StoreReader#executeSelectionSet results) that
		-- depend on __exists for this entityId will get dirtied as well, leading to
		-- the eventual recomputation (instead of reuse) of those result objects the
		-- next time someone reads them from the cache.
		((store :: any) :: EntityStore).group:depend(entityId, "__exists")
	end
end
exports.maybeDependOnExistenceOfEntity = maybeDependOnExistenceOfEntity

export type EntityStore_Root = EntityStore & {
	stump: Stump,
	addLayer: (self: EntityStore_Root, layerId: string, replay: (layer: EntityStore) -> any) -> Layer,
	removeLayer: (self: EntityStore_Root) -> EntityStore_Root,
	storageTrie: Trie<StorageType>,
	getStorage: (self: EntityStore_Root) -> StorageType,
}
local EntityStore_Root = setmetatable({}, { __index = EntityStore })
EntityStore_Root.__index = EntityStore_Root

function EntityStore_Root.new(ref: {
	policies: Policies,
	resultCaching: boolean?,
	seed: NormalizedCacheObject?,
}): EntityStore_Root
	local policies, resultCaching, seed = ref.policies, ref.resultCaching :: boolean, ref.seed
	if ref.resultCaching == nil then
		resultCaching = true
	end

	local self = (
		setmetatable(EntityStore.new(policies, CacheGroup.new(resultCaching)), EntityStore_Root) :: any
	) :: EntityStore_Root
	self.stump = Stump.new(self)
	self.storageTrie = Trie.new(canUseWeakMap)

	-- ROBLOX deviation START: remove Boolean
	if seed then
		-- ROBLOX deviation END
		self:replace(seed)
	end
	return self
end

function EntityStore_Root:addLayer(layerId: string, replay: (self: any, layer: EntityStore) -> any): Layer
	-- Adding an optimistic Layer on top of the Root actually adds the Layer
	-- on top of the Stump, so the Stump always comes between the Root and
	-- any Layer objects that we've added.
	return self.stump:addLayer(layerId, replay)
end

function EntityStore_Root:removeLayer(): EntityStore_Root
	-- Never remove the root layer.
	return self
end

function EntityStore_Root:getStorage(...): StorageType
	return self.storageTrie:lookupArray({ ... })
end
exports.EntityStore_Root = EntityStore_Root

type Layer = EntityStore & {
	id: string,
	parent: EntityStore,
	replay: (self: Layer, layer: EntityStore) -> any,
	group: CacheGroup,
	addLayer: (self: Layer, layerId: string, replay: (layer: EntityStore) -> any?) -> Layer,
	removeLayer: (self: Layer, layerId: string) -> EntityStore,
	toObject: (self: Layer) -> NormalizedCacheObject,
	findChildRefIds: (self: Layer, dataId: string) -> Record<string, boolean>,
	getStorage: (self: Layer) -> StorageType,
}

-- Not exported, since all Layer instances are created by the addLayer method
-- of the EntityStore.Root class.
Layer = setmetatable({}, { __index = EntityStore })
Layer.__index = Layer

function Layer.new(
	id: string,
	parent: EntityStore,
	replay: (self: Layer, layer: EntityStore) -> any,
	group: CacheGroup
): Layer
	local self = (setmetatable(EntityStore.new(parent.policies, group), Layer) :: any) :: Layer
	self.id = id
	self.parent = parent
	self.replay = replay
	self.group = group
	replay(self, self :: EntityStore)
	return self :: Layer
end

function Layer:addLayer(layerId: string, replay: (self: Layer, layer: EntityStore) -> any): Layer
	return Layer.new(layerId, self, replay, self.group)
end

function Layer:removeLayer(layerId: string): EntityStore
	-- Remove all instances of the given id, not just the first one.
	local parent = self.parent:removeLayer(layerId)

	if layerId == self.id then
		if self.group.caching then
			-- Dirty every ID we're removing. Technically we might be able to avoid
			-- dirtying fields that have values in higher layers, but we don't have
			-- easy access to higher layers here, and we're about to recreate those
			-- layers anyway (see parent.addLayer below).
			-- ROBLOX deviation START: optimize Object.keys().forEach for luau
			objectKeysForEach(self.data, function(dataId)
				-- ROBLOX deviation END
				local ownStoreObject = self.data[dataId]
				local parentStoreObject = parent["lookup"](parent, dataId)
				-- ROBLOX deviation START: remove Boolean
				if not parentStoreObject then
					-- ROBLOX deviation END
					-- The StoreObject identified by dataId was defined in this layer
					-- but will be undefined in the parent layer, so we can delete the
					-- whole entity using this.delete(dataId). Since we're about to
					-- throw this layer away, the only goal of this deletion is to dirty
					-- the removed fields.
					self:delete(dataId)
					-- ROBLOX deviation START: remove Boolean
				elseif not ownStoreObject then
					-- ROBLOX deviation END
					-- This layer had an entry for dataId but it was undefined, which
					-- means the entity was deleted in this layer, and it's about to
					-- become undeleted when we remove this layer, so we need to dirty
					-- all fields that are about to be reexposed.
					self.group:dirty(dataId, "__exists")
					-- ROBLOX deviation START: optimize Object.keys().forEach for luau
					objectKeysForEach(parentStoreObject, function(storeFieldName)
						-- ROBLOX deviation END
						self.group:dirty(dataId, storeFieldName)
					end)
				elseif ownStoreObject ~= parentStoreObject then
					-- If ownStoreObject is not exactly the same as parentStoreObject,
					-- dirty any fields whose values will change as a result of this
					-- removal.
					-- ROBLOX deviation START: optimize Object.keys().forEach for luau
					objectKeysForEach(ownStoreObject, function(storeFieldName)
						-- ROBLOX deviation END
						if not equal(ownStoreObject[storeFieldName], parentStoreObject[storeFieldName]) then
							self.group:dirty(dataId, storeFieldName)
						end
					end)
				end
			end)
		end
		return parent
	end

	-- No changes are necessary if the parent chain remains identical.
	if parent == self.parent then
		return self
	end

	-- Recreate this layer on top of the new parent
	return parent:addLayer(self.id, self.replay)
end

function Layer:toObject(): NormalizedCacheObject
	return Object.assign({}, self.parent:toObject(), self.data)
end

function Layer:findChildRefIds(dataId: string): Record<string, boolean>
	local fromParent = self.parent:findChildRefIds(dataId)
	local super = getmetatable(getmetatable(self)).__index
	-- ROBLOX deviation START: super does not have this object's attributes, provide self as first argument
	return hasOwn(self.data, dataId) and Object.assign({}, fromParent, super.findChildRefIds(self, dataId))
		or fromParent
	-- ROBLOX deviation END
end

function Layer:getStorage(...): StorageType
	local p: EntityStore = self.parent
	while ((p :: any) :: Layer).parent do
		p = ((p :: any) :: Layer).parent
	end
	return p:getStorage(...)
end

-- Represents a Layer permanently installed just above the Root, which allows
-- reading optimistically (and registering optimistic dependencies) even when
-- no optimistic layers are currently active. The stump.group CacheGroup object
-- is shared by any/all Layer objects added on top of the Stump.
type Stump = Layer & { removeLayer: (self: Stump) -> Stump, merge: (self: Stump) -> any }
Stump = setmetatable({}, { __index = Layer })
Stump.__index = Stump

function Stump.new(root: EntityStore_Root): Stump
	local self = Layer.new("EntityStore.Stump", root, function() end, CacheGroup.new(root.group.caching, root.group))
	self = setmetatable(self, Stump)
	return self
end

function Stump:removeLayer()
	-- Never remove the Stump layer.
	return self
end

function Stump:merge(...)
	-- We never want to write any data into the Stump, so we forward any merge
	-- calls to the Root instead. Another option here would be to throw an
	-- exception, but the toReference(object, true) function can sometimes
	-- trigger Stump writes (which used to be Root writes, before the Stump
	-- concept was introduced).
	return self.parent:merge(...)
end

function storeObjectReconciler(
	_self,
	existingObject: StoreObject,
	incomingObject: StoreObject,
	property: string
): StoreValue
	local existingValue = existingObject[property]
	local incomingValue = incomingObject[property]
	-- Wherever there is a key collision, prefer the incoming value, unless
	-- it is deeply equal to the existing value. It's worth checking deep
	-- equality here (even though blindly returning incoming would be
	-- logically correct) because preserving the referential identity of
	-- existing data can prevent needless rereading and rerendering.
	if equal(existingValue, incomingValue) then
		return existingValue
	else
		return incomingValue
	end
end

function supportsResultCaching(store: any): boolean
	-- When result caching is disabled, store.depend will be null.
	-- ROBLOX deviation START: instanceOf is expensive, just check that store.group.caching is true
	return type(store) == "table" and type(store.group) == "table" and store.group.caching == true
	-- ROBLOX deviation END
end
exports.supportsResultCaching = supportsResultCaching

return exports
