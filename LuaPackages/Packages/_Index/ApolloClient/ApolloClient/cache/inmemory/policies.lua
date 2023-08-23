--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/policies.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local HttpService = game:GetService("HttpService")

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
local Map = LuauPolyfill.Map
type Array<T> = LuauPolyfill.Array<T>
type Set<T> = LuauPolyfill.Set<T>
type Map<K, V> = LuauPolyfill.Map<K, V>
type Function = (...any) -> ...any
type Record<T, U> = { [T]: U }
type Readonly<T> = T

-- ROBLOX FIXME: remove if better solution is found
type FIX_ANALYZE = any

local isCallable = require(srcWorkspace.luaUtils.isCallable)
local objectKeysForEach = require(srcWorkspace.luaUtils.objectKeysForEach)

local RegExp = require(rootWorkspace.LuauRegExp)
type RegExp = RegExp.RegExp

local exports = {}

-- ROBLOX deviation: predefine functions
local makeFieldFunctionOptions
local makeMergeObjectsFunction
local keyArgsFnFromSpecifier
local keyFieldsFnFromSpecifier
local makeAliasMap
local computeKeyObject

local graphqlModule = require(rootWorkspace.GraphQL)
type InlineFragmentNode = graphqlModule.InlineFragmentNode
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type SelectionSetNode = graphqlModule.SelectionSetNode
type FieldNode = graphqlModule.FieldNode

local Trie = require(srcWorkspace.wry.trie).Trie
local invariantModule = require(srcWorkspace.jsutils.invariant)
local invariant = invariantModule.invariant
local InvariantError = invariantModule.InvariantError

local utilitiesModule = require(script.Parent.Parent.Parent.utilities)
type FragmentMap = utilitiesModule.FragmentMap
local getFragmentFromSelection = utilitiesModule.getFragmentFromSelection
local isField = utilitiesModule.isField
local getTypenameFromResult = utilitiesModule.getTypenameFromResult
local storeKeyNameFromField = utilitiesModule.storeKeyNameFromField
type StoreValue = utilitiesModule.StoreValue
type StoreObject = utilitiesModule.StoreObject
local argumentsObjectFromField = utilitiesModule.argumentsObjectFromField
type Reference = utilitiesModule.Reference
local isReference = utilitiesModule.isReference
local getStoreKeyName = utilitiesModule.getStoreKeyName
local canUseWeakMap = utilitiesModule.canUseWeakMap
local isNonNullObject = utilitiesModule.isNonNullObject
local stringifyForDisplay = utilitiesModule.stringifyForDisplay
-- ROBLOX TODO: circular dependency
-- local typesModule = require(script.Parent.types)
type IdGetter = (any) -> string | nil -- typesModule.IdGetter
type MergeInfo = { field: FieldNode, typename: string | nil, merge: Function } -- typesModule.MergeInfo
type NormalizedCache = { [string]: any } -- typesModule.NormalizedCache
type ReadMergeModifyContext = { [string]: any } -- typesModule.ReadMergeModifyContext
local helpersModule = require(script.Parent.helpers)
-- ROBLOX deviation: using luaUtils implementation instead of one from helpers
local hasOwn = require(srcWorkspace.luaUtils.hasOwnProperty)
local fieldNameFromStoreName = helpersModule.fieldNameFromStoreName
local storeValueIsStoreObject = helpersModule.storeValueIsStoreObject
local selectionSetMatchesResult = helpersModule.selectionSetMatchesResult
local TypeOrFieldNameRegExp = helpersModule.TypeOrFieldNameRegExp
local cacheSlot = require(script.Parent.reactiveVars).cacheSlot

-- ROBLOX TODO: Circular dependency
-- local inMemoryCacheModule = require(script.Parent.inMemoryCache)
-- type InMemoryCache = inMemoryCacheModule.InMemoryCache
type InMemoryCache = any
local commonModule = require(script.Parent.Parent.core.types.common)
type SafeReadonly<T> = commonModule.SafeReadonly<T>
type FieldSpecifier = commonModule.FieldSpecifier
type ToReferenceFunction = commonModule.ToReferenceFunction
type ReadFieldFunction = commonModule.ReadFieldFunction
type ReadFieldOptions = commonModule.ReadFieldOptions
type CanReadFunction = commonModule.CanReadFunction
local writeToStoreModule = require(script.Parent.writeToStore_types)
type WriteContext = writeToStoreModule.WriteContext

-- Upgrade to a faster version of the default stable JSON.stringify function
-- used by getStoreKeyName. This function is used when computing storeFieldName
-- strings (when no keyArgs has been configured for a field).
local canonicalStringify = require(script.Parent["object-canon"]).canonicalStringify

getStoreKeyName:setStringify(canonicalStringify)

local policiesTypesModule = require(script.Parent.policies_types)

export type TypePolicies = policiesTypesModule.TypePolicies

type KeySpecifier = policiesTypesModule.KeySpecifier
type KeyFieldsContext = policiesTypesModule.KeyFieldsContext
export type KeyFieldsFunction = policiesTypesModule.KeyFieldsFunction
type KeyFieldsResult = policiesTypesModule.KeyFieldsResult

export type TypePolicy = policiesTypesModule.TypePolicy

export type KeyArgsFunction = policiesTypesModule.KeyArgsFunction

type KeyArgsResult = policiesTypesModule.KeyArgsResult

-- The internal representation used to store the field's data in the
-- cache. Must be JSON-serializable if you plan to serialize the result
-- of cache.extract() using JSON.
-- ROBLOX deviation: TExisting = any
-- TExisting,
-- The type of the incoming parameter passed to the merge function,
-- typically matching the GraphQL response format, but with Reference
-- objects substituted for any identifiable child objects. Often the
-- same as TExisting, but not necessarily.
-- ROBLOX deviation: TIncoming = TExisting,
-- TIncoming,
-- The type that the read function actually returns, using TExisting
-- data and options.args as input. Usually the same as TIncoming.
-- ROBLOX deviation: TReadResult = TIncoming,
-- TReadResult
export type FieldPolicy<TExisting, TIncoming, TReadResult> = policiesTypesModule.FieldPolicy<
	TExisting,
	TIncoming,
	TReadResult
>

export type StorageType = policiesTypesModule.StorageType

local function argsFromFieldSpecifier(spec: FieldSpecifier)
	return if spec.args ~= nil
		then spec.args
		-- ROBLOX deviation START: remove Boolean
		else (if spec.field then argumentsObjectFromField(spec.field, spec.variables) else nil)
	-- ROBLOX deviation END
end
export type FieldFunctionOptions<TArgs, TVars> = policiesTypesModule.FieldFunctionOptions<TArgs, TVars>

type MergeObjectsFunction = policiesTypesModule.MergeObjectsFunction
export type FieldReadFunction<TExisting, TIncoming> = policiesTypesModule.FieldReadFunction<TExisting, TIncoming>
export type FieldMergeFunction<TExisting, TIncoming> = policiesTypesModule.FieldMergeFunction<TExisting, TIncoming>
type FieldMergeFunction_<TExisting> = policiesTypesModule.FieldMergeFunction_<TExisting>

local function defaultDataIdFromObject(_self, ref, context: KeyFieldsContext?): string | nil
	local __typename, id, _id = ref.__typename, ref.id, ref._id
	-- ROBLOX deviation START: use type instead of typeof
	if type(__typename) == "string" then
		-- ROBLOX deviation END
		if context then
			if id ~= nil then
				context.keyObject = { id = id }
			elseif _id ~= nil then
				context.keyObject = { _id = _id }
			else
				context.keyObject = nil
			end
		end
		if id == nil then
			id = _id
		end
		if id ~= nil then
			-- ROBLOX deviation START: reformat function wrap into if then else
			local idType = type(id)

			return string.format(
				"%s:%s",
				__typename,
				if idType == "number" or idType == "string" then id else HttpService:JSONEncode(id)
			)
			-- ROBLOX deviation END
		end
	end
	return nil
end
exports.defaultDataIdFromObject = defaultDataIdFromObject
local function nullKeyFieldsFn(_self) -- : KeyFieldsFunction
	return nil
end
local function simpleKeyArgsFn(_args, context) -- : KeyArgsFunction
	return context.fieldName
end

-- These merge functions can be selected by specifying merge:true or
-- merge:false in a field policy.
local mergeTrueFn: FieldMergeFunction_<any>
function mergeTrueFn(_self, existing, incoming, ref)
	return ref:mergeObjects(existing, incoming)
end
local mergeFalseFn: FieldMergeFunction_<any>
function mergeFalseFn(_self, _, incoming)
	return incoming
end
export type PossibleTypesMap = { [string]: Array<string> }

export type Policies = {
	cache: InMemoryCache,
	rootIdsByTypename: Record<string, string>,
	rootTypenamesById: Record<string, string>,
	usingPossibleTypes: boolean,

	identify: (
		self: Policies,
		object: StoreObject,
		selectionSet: SelectionSetNode?,
		fragmentMap: FragmentMap?
	) -> any, -- ROBLOX TODO: original return type [string?, StoreObject?]
	addTypePolicies: (self: Policies, typePolicies: TypePolicies) -> (),
	addPossibleTypes: (self: Policies, possibleTypes: PossibleTypesMap) -> (),
	fragmentMatches: (
		self: Policies,
		fragment: InlineFragmentNode | FragmentDefinitionNode,
		typename: string | nil,
		result: Record<string, any>?,
		variables: Record<string, any>?
	) -> boolean,
	hasKeyArgs: (self: Policies, typename: string | nil, fieldName: string) -> boolean,
	getStoreFieldName: (self: Policies, fieldSpec: FieldSpecifier) -> string,
	readField--[[<V = StoreValue>]]: (
		self: Policies,
		options: ReadFieldOptions,
		context: ReadMergeModifyContext
	) -> SafeReadonly<V_> | nil,
	getMergeFunction: (
		self: Policies,
		parentTypename: string | nil,
		fieldName: string,
		childTypename: string | nil
	) -> FieldMergeFunction<any, any> | nil,
	runMergeFunction: (
		self: Policies,
		existing: StoreValue,
		incoming: StoreValue,
		ref: MergeInfo,
		context: WriteContext,
		storage: StorageType?
	) -> any,
}

-- ROBLOX deviation: extract this since Luau can't index into a type
type TypePoliciesStringIndex = { -- [__typename: string]
	keyFn: KeyFieldsFunction?,
	merge: FieldMergeFunction<any, any>?,
	fields: {
		[string]: { -- [fieldName: string]
			keyFn: KeyArgsFunction?,
			read: FieldReadFunction<any, any>?,
			merge: FieldMergeFunction<any, any>?,
		},
	},
}
export type PoliciesPrivate = Policies & {
	typePolicies: {
		[string]: TypePoliciesStringIndex,
	},
	toBeAdded: {
		[string]: Array<TypePolicy>, -- [__typename: string]
	},

	-- Map from subtype names to sets of supertype names. Note that this
	-- representation inverts the structure of possibleTypes (whose keys are
	-- supertypes and whose values are arrays of subtypes) because it tends
	-- to be much more efficient to search upwards than downwards.
	supertypeMap: Map<string, Set<string>>,

	-- Any fuzzy subtypes specified by possibleTypes will be converted to
	-- RegExp objects and recorded here. Every key of this map can also be
	-- found in supertypeMap. In many cases this Map will be empty, which
	-- means no fuzzy subtype checking will happen in fragmentMatches.
	fuzzySubtypes: Map<string, RegExp>,

	config: {
		cache: InMemoryCache,
		dataIdFromObject: KeyFieldsFunction?,
		possibleTypes: PossibleTypesMap?,
		typePolicies: TypePolicies?,
	},

	updateTypePolicy: (self: PoliciesPrivate, typename: string, incoming: TypePolicy) -> (),
	setRootTypename: (
		self: PoliciesPrivate,
		which: string, --[[ ROBLOX TODO: "Query" | "Mutation" | "Subscription" ]]
		typename: string?
	) -> (),
	getTypePolicy: (typename: string) -> any, --[[ ROBLOX TODO: Policies["typePolicies"][string] ]]
	getFieldPolicy: (
		self: PoliciesPrivate,
		typename: string | nil,
		fieldName: string,
		createIfMissing: boolean
	) -> { keyFn: KeyArgsFunction?, read: FieldReadFunction<any, any>?, merge: FieldMergeFunction<any, any>? } | nil,
	getSupertypeSet: (self: PoliciesPrivate, subtype: string, createIfMissing: boolean) -> Set<string> | nil,
}

local Policies = {}
Policies.__index = Policies

function Policies.new(config: {
	cache: InMemoryCache,
	dataIdFromObject: KeyFieldsFunction?,
	possibleTypes: PossibleTypesMap?,
	typePolicies: TypePolicies?,
}): Policies
	local self = (setmetatable({}, Policies) :: any) :: PoliciesPrivate

	self.typePolicies = {}
	self.toBeAdded = {}
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	self.supertypeMap = Map.new(nil) :: Map<string, Set<string>>
	-- ROBLOX TODO: Luau doesnt support explicit generic params, so we cast to the expected Map type
	self.fuzzySubtypes = Map.new(nil) :: Map<string, RegExp>

	self.cache = nil
	self.rootIdsByTypename = {}
	self.rootTypenamesById = {}
	self.usingPossibleTypes = false

	self.config = config
	self.config = Object.assign({
		dataIdFromObject = defaultDataIdFromObject,
	}, config)
	self.cache = self.config.cache
	self:setRootTypename("Query")
	self:setRootTypename("Mutation")
	self:setRootTypename("Subscription")

	-- ROBLOX deviation START: remove Boolean
	if config.possibleTypes then
		self:addPossibleTypes(config.possibleTypes :: any)
	end
	if config.typePolicies then
		self:addTypePolicies(config.typePolicies :: any)
	end
	-- ROBLOX deviation END

	return (self :: any) :: Policies
end

function Policies:identify(
	object: StoreObject,
	selectionSet: SelectionSetNode?,
	fragmentMap: FragmentMap?
): any -- ROBLOX TODO: return multiple values to make this more Lua native [string?, StoreObject?]
	-- TODO Use an AliasMap here?
	local typename
	-- ROBLOX deviation START: remove Boolean
	if selectionSet and fragmentMap then
		-- ROBLOX deviation END
		typename = getTypenameFromResult(object, selectionSet, fragmentMap)
	else
		typename = object.__typename
	end

	-- It should be possible to write root Query fields with
	-- writeFragment, using { __typename: "Query", ... } as the data, but
	-- it does not make sense to allow the same identification behavior
	-- for the Mutation and Subscription types, since application code
	-- should never be writing directly to (or reading directly from)
	-- those root objects.
	if typename == self.rootTypenamesById.ROOT_QUERY then
		return { "ROOT_QUERY" }
	end

	local context: KeyFieldsContext = { typename = typename, selectionSet = selectionSet, fragmentMap = fragmentMap }

	local id: KeyFieldsResult

	local policy
	-- ROBLOX deviation START: remove Boolean
	if typename then
		-- ROBLOX deviation END
		policy = self:getTypePolicy(typename)
	else
		policy = typename
	end
	local keyFn
	-- ROBLOX deviation START: remove Boolean
	if policy and policy.keyFn then
		-- ROBLOX deviation END
		keyFn = policy.keyFn
	else
		keyFn = self.config.dataIdFromObject
	end
	-- ROBLOX deviation START: remove Boolean
	while keyFn do
		-- ROBLOX deviation END
		-- ROBLOX deviation: passing policy as self
		local specifierOrId = keyFn(policy, object, context)
		-- ROBLOX deviation START: if this is a table, it must be an array
		if type(specifierOrId) == "table" then
			-- ROBLOX deviation END
			keyFn = keyFieldsFnFromSpecifier(specifierOrId)
		else
			id = specifierOrId
			break
		end
	end

	-- ROBLOX deviation START: remove Boolean
	if id then
		-- ROBLOX deviation END
		id = tostring(id)
	else
		id = nil
	end
	-- ROBLOX deviation START: use if then else, remove Boolean
	return if context.keyObject then { id, context.keyObject } else { id }
	-- ROBLOX deviation END
end

function Policies:addTypePolicies(typePolicies: TypePolicies): ()
	-- ROBLOX deviation START: use helper to optimize Object.keys().forEach
	objectKeysForEach(typePolicies, function(typename)
		-- ROBLOX deviation END
		local ref = typePolicies[typename]
		local queryType, mutationType, subscriptionType = ref.queryType, ref.mutationType, ref.subscriptionType
		local incoming = Object.assign({}, ref, {
			queryType = Object.None,
			mutationType = Object.None,
			subscriptionType = Object.None,
		})

		-- Though {query,mutation,subscription}Type configurations are rare,
		-- it's important to call setRootTypename as early as possible,
		-- since these configurations should apply consistently for the
		-- entire lifetime of the cache. Also, since only one __typename can
		-- qualify as one of these root types, these three properties cannot
		-- be inherited, unlike the rest of the incoming properties. That
		-- restriction is convenient, because the purpose of this.toBeAdded
		-- is to delay the processing of type/field policies until the first
		-- time they're used, allowing policies to be added in any order as
		-- long as all relevant policies (including policies for supertypes)
		-- have been added by the time a given policy is used for the first
		-- time. In other words, since inheritance doesn't matter for these
		-- properties, there's also no need to delay their processing using
		-- the this.toBeAdded queue.
		-- ROBLOX deviation START: remove Boolean
		if queryType then
			self:setRootTypename("Query", typename)
		end
		if mutationType then
			self:setRootTypename("Mutation", typename)
		end
		if subscriptionType then
			self:setRootTypename("Subscription", typename)
		end
		-- ROBLOX deviation END

		if hasOwn(self.toBeAdded, typename) then
			table.insert(self.toBeAdded[typename], incoming)
		else
			self.toBeAdded[typename] = { incoming }
		end
	end)
end

function Policies:updateTypePolicy(typename: string, incoming: TypePolicy): ()
	local existing = self:getTypePolicy(typename)
	local keyFields, fields = incoming.keyFields, incoming.fields

	local function setMerge(
		existing: { merge: (FieldMergeFunction<any, any> | boolean)? },
		merge: (FieldMergeFunction<any, any> | boolean)?
	)
		if isCallable(merge) then
			existing.merge = merge
		else
			-- Pass merge:true as a shorthand for a merge implementation
			-- that returns options.mergeObjects(existing, incoming).
			if merge == true then
				existing.merge = mergeTrueFn
			else
				-- Pass merge:false to make incoming always replace existing
				-- without any warnings about data clobbering.
				if merge == false then
					existing.merge = mergeFalseFn
				else
					existing.merge = existing.merge
				end
			end
		end
	end

	-- Type policies can define merge functions, as an alternative to
	-- using field policies to merge child objects.
	setMerge(existing, incoming.merge)

	-- Pass false to disable normalization for this typename.
	if keyFields == false then
		(existing :: any).keyFn = nullKeyFieldsFn
	else
		-- Pass an array of strings to use those fields to compute a
		-- composite ID for objects of this typename.
		-- ROBLOX deviation START: if this is a table, it must be an array
		local keyFieldsType = type(keyFields)
		if keyFieldsType == "table" then
			-- ROBLOX deviation END
			(existing :: any).keyFn = keyFieldsFnFromSpecifier(keyFields :: any)
		else
			-- Pass a function to take full control over identification.
			-- ROBLOX deviation START: use type instead of typeof
			if keyFieldsType == "function" then
				-- ROBLOX deviation END
				(existing :: any).keyFn = keyFields
			else
				-- Leave existing.keyFn unchanged if above cases fail.
				(existing :: any).keyFn = (existing :: any).keyFn
			end
		end
	end

	-- ROBLOX deviation START: remove Boolean
	if fields then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use helper to optimize Object.keys().forEach
		objectKeysForEach(fields :: Record<string, any>, function(fieldName)
			-- ROBLOX deviation END
			local existing = self:getFieldPolicy(typename, fieldName, true)
			local incoming = fields[fieldName]

			-- ROBLOX deviation START: use type instead of typeof
			if type(incoming) == "function" then
				-- ROBLOX deviation END
				existing.read = incoming
			else
				local keyArgs, read, merge = incoming.keyArgs, incoming.read, incoming.merge

				-- Pass false to disable argument-based differentiation of
				-- field identities.
				if keyArgs == false then
					existing.keyFn = simpleKeyArgsFn
				else
					-- Pass an array of strings to use named arguments to
					-- compute a composite identity for the field.
					-- ROBLOX deviation START: reuse keyArgs type. If keyArgs is a table, it is an array
					local keyArgsType = type(keyArgs)
					if keyArgsType == "table" then
						existing.keyFn = keyArgsFnFromSpecifier(keyArgs :: KeySpecifier) :: any
					else
						-- Pass a function to take full control over field identity.
						if keyArgsType == "function" then
							existing.keyFn = (keyArgs :: KeyArgsFunction) :: any
							-- ROBLOX deviation END
						else
							-- Leave existing.keyFn unchanged if above cases fail.
							existing.keyFn = existing.keyFn
						end
					end
				end

				-- ROBLOX deviation START: use type instead of typeof
				if type(read) == "function" then
					-- ROBLOX deviation END
					existing.read = read
				end

				setMerge(existing :: any, merge)
			end

			-- ROBLOX deviation START: remove Boolean
			if existing.read and existing.merge then
				-- If we have both a read and a merge function, assume
				-- keyArgs:false, because read and merge together can take
				-- responsibility for interpreting arguments in and out. This
				-- default assumption can always be overridden by specifying
				-- keyArgs explicitly in the FieldPolicy.
				existing.keyFn = existing.keyFn or simpleKeyArgsFn
			end
			-- ROBLOX deviation END
		end)
	end
end

function Policies:setRootTypename(
	which: string --[[ ROBLOX deviation: "Query" | "Mutation" | "Subscription" ]],
	typename_: string?
): ()
	local typename: string = typename_ :: any
	if typename == nil then
		typename = which
	end
	local rootId = "ROOT_" .. string.upper(which)
	local old = self.rootTypenamesById[rootId]
	if typename ~= old then
		-- ROBLOX deviation START: remove Boolean, avoid invariant
		local isOldTypename = not old or old == which
		if not isOldTypename then
			invariant(isOldTypename, ("Cannot change root %s __typename more than once"):format(which))
		end
		-- First, delete any old __typename associated with this rootId from
		-- rootIdsByTypename.
		if old then
			self.rootIdsByTypename[old] = nil
		end
		-- ROBLOX deviation END
		-- Now make this the only __typename that maps to this rootId.
		self.rootIdsByTypename[typename] = rootId
		-- Finally, update the __typename associated with this rootId.
		self.rootTypenamesById[rootId] = typename
	end
end

function Policies:addPossibleTypes(possibleTypes: PossibleTypesMap): ()
	self.usingPossibleTypes = true
	-- ROBLOX deviation START: use helper to optimize Object.keys().forEach
	objectKeysForEach(possibleTypes, function(supertype)
		-- ROBLOX deviation END
		-- Make sure all types have an entry in this.supertypeMap, even if
		-- their supertype set is empty, so we can return false immediately
		-- from policies.fragmentMatches for unknown supertypes.
		self:getSupertypeSet(supertype, true)

		Array.forEach(possibleTypes[supertype], function(subtype)
			self:getSupertypeSet(subtype, true):add(supertype)
			-- ROBLOX deviation: string.match doesn't work with RegExps. Using RegExp:exec instead
			local match = TypeOrFieldNameRegExp:exec(subtype)
			if not match or match[1] ~= subtype then
				-- TODO Don't interpret just any invalid typename as a RegExp.
				self.fuzzySubtypes:set(subtype, RegExp.new(subtype))
			end
		end)
	end)
end

function Policies:getTypePolicy(
	typename: string
): TypePoliciesStringIndex --[[ ROBLOX TODO: Policies["typePolicies"][string] ]]
	if not hasOwn(self.typePolicies, typename) then
		self.typePolicies[typename] = {}
		local policy: TypePoliciesStringIndex --[[ ROBLOX TODO: Policies["typePolicies"][string] ]] =
			self.typePolicies[typename]
		policy.fields = {}

		-- When the TypePolicy for typename is first accessed, instead of
		-- starting with an empty policy object, inherit any properties or
		-- fields from the type policies of the supertypes of typename.
		--
		-- Any properties or fields defined explicitly within the TypePolicy
		-- for typename will take precedence, and if there are multiple
		-- supertypes, the properties of policies whose types were added
		-- later via addPossibleTypes will take precedence over those of
		-- earlier supertypes. TODO Perhaps we should warn about these
		-- conflicts in development, and recommend defining the property
		-- explicitly in the subtype policy?
		--
		-- Field policy inheritance is atomic/shallow: you can't inherit a
		-- field policy and then override just its read function, since read
		-- and merge functions often need to cooperate, so changing only one
		-- of them would be a recipe for inconsistency.
		--
		-- Once the TypePolicy for typename has been accessed, its
		-- properties can still be updated directly using addTypePolicies,
		-- but future changes to supertype policies will not be reflected in
		-- this policy, because this code runs at most once per typename.
		local supertypes = self.supertypeMap:get(typename)
		-- ROBLOX deviation START: remove Boolean
		if supertypes and supertypes.size > 0 then
			-- ROBLOX deviation END
			supertypes:forEach(function(supertype)
				local ref = self:getTypePolicy(supertype)
				-- ROBLOX deviation START: use table.clone instead of copying to empty table
				local fields, rest = ref.fields, Object.assign(table.clone(ref), { fields = Object.None })
				-- ROBLOX deviation END
				Object.assign(policy, rest)
				Object.assign(policy.fields, fields)
			end)
		end
	end

	local inbox = self.toBeAdded[typename]
	-- ROBLOX deviation START: remove Boolean
	if inbox and #inbox > 0 then
		-- ROBLOX deviation END
		-- Merge the pending policies into this.typePolicies, in the order they
		-- were originally passed to addTypePolicy.
		Array.forEach(Array.splice(inbox, 1), function(policy)
			self:updateTypePolicy(typename, policy)
		end)
	end

	return self.typePolicies[typename]
end

function Policies:getFieldPolicy(
	typename: string | nil,
	fieldName: string,
	createIfMissing: boolean
): {
	keyFn: KeyArgsFunction?,
	read: FieldReadFunction<any, any>?,
	merge: FieldMergeFunction<any, any>?,
} | nil
	-- ROBLOX deviation START: remove Boolean
	if typename then
		local fieldPolicies = self:getTypePolicy(typename).fields
		if fieldPolicies[fieldName] then
			return fieldPolicies[fieldName]
		else
			if createIfMissing then
				-- ROBLOX deviation END
				fieldPolicies[fieldName] = {}
				return fieldPolicies[fieldName]
			else
				return nil
			end
		end
	end
	return nil
end

function Policies:getSupertypeSet(subtype: string, createIfMissing: boolean): Set<string> | nil
	local supertypeSet = self.supertypeMap:get(subtype)
	-- ROBLOX deviation START: remove Boolean
	if not supertypeSet and createIfMissing then
		-- ROBLOX deviation END
		supertypeSet = Set.new()
		self.supertypeMap:set(subtype, supertypeSet)
	end
	return supertypeSet
end

function Policies:fragmentMatches(
	fragment: InlineFragmentNode | FragmentDefinitionNode,
	typename: string | nil,
	result: Record<string, any>?,
	variables: Record<string, any>?
): boolean
	-- ROBLOX deviation START: remove Boolean
	if not fragment.typeCondition then
		-- ROBLOX deviation END
		return true
	end

	-- If the fragment has a type condition but the object we're matching
	-- against does not have a __typename, the fragment cannot match.
	-- ROBLOX deviation START: remove Boolean
	if not typename then
		-- ROBLOX deviation END
		return false
	end

	local supertype = (fragment.typeCondition :: any).name.value
	-- Common case: fragment type condition and __typename are the same.
	if typename == supertype then
		return true
	end

	-- ROBLOX deviation START: remove Boolean
	if self.usingPossibleTypes and self.supertypeMap:has(supertype) then
		-- ROBLOX deviation END
		local typenameSupertypeSet = self:getSupertypeSet(typename, true)
		local workQueue = { typenameSupertypeSet }
		local function maybeEnqueue(subtype: string)
			local supertypeSet = self:getSupertypeSet(subtype, false)
			-- ROBLOX deviation START: remove Boolean
			if supertypeSet and supertypeSet.size > 0 and Array.indexOf(workQueue, supertypeSet) < 1 then
				-- ROBLOX deviation END
				table.insert(workQueue, supertypeSet)
			end
		end

		-- We need to check fuzzy subtypes only if we encountered fuzzy
		-- subtype strings in addPossibleTypes, and only while writing to
		-- the cache, since that's when selectionSetMatchesResult gives a
		-- strong signal of fragment matching. The StoreReader class calls
		-- policies.fragmentMatches without passing a result object, so
		-- needToCheckFuzzySubtypes is always false while reading.
		-- ROBLOX deviation START: remove Boolean
		local needToCheckFuzzySubtypes = result ~= nil and self.fuzzySubtypes.size > 0
		-- ROBLOX deviation END
		local checkingFuzzySubtypes = false

		-- It's important to keep evaluating workQueue.length each time through
		-- the loop, because the queue can grow while we're iterating over it.
		-- ROBLOX deviation START: iterate directly over queue to handle insertion inside loop
		for i, _ in workQueue do
			-- ROBLOX deviation END
			local supertypeSet = workQueue[i]

			if supertypeSet:has(supertype) then
				if not typenameSupertypeSet:has(supertype) then
					if checkingFuzzySubtypes then
						invariant.warn(("Inferring subtype %s of supertype %s"):format(typename :: string, supertype))
					end
					-- Record positive results for faster future lookup.
					-- Unfortunately, we cannot safely cache negative results,
					-- because new possibleTypes data could always be added to the
					-- Policies class.
					typenameSupertypeSet:add(supertype)
				end
				return true
			end

			-- ROBLOX deviation START: use built-in set iteration
			supertypeSet:forEach(maybeEnqueue)
			-- ROBLOX deviation END

			if
				needToCheckFuzzySubtypes
				-- Start checking fuzzy subtypes only after exhausting all
				-- non-fuzzy subtypes (after the final iteration of the loop).
				and i == #workQueue
				-- We could wait to compare fragment.selectionSet to result
				-- after we verify the supertype, but this check is often less
				-- expensive than that search, and we will have to do the
				-- comparison anyway whenever we find a potential match.
				and selectionSetMatchesResult(fragment.selectionSet, result :: any, variables)
			then
				-- We don't always need to check fuzzy subtypes (if no result
				-- was provided, or !this.fuzzySubtypes.size), but, when we do,
				-- we only want to check them once.
				needToCheckFuzzySubtypes = false
				checkingFuzzySubtypes = true

				-- If we find any fuzzy subtypes that match typename, extend the
				-- workQueue to search through the supertypes of those fuzzy
				-- subtypes. Otherwise the for-loop will terminate and we'll
				-- return false below.
				-- ROBLOX deviation: using Map:entries() as Array.map can't be used on a Map directly
				Array.forEach(self.fuzzySubtypes:entries(), function(entry)
					local regExp, fuzzyString = entry[2], entry[1] :: string
					-- ROBLOX deviation: string.match doesn't work with RegExps. Using RegExp:exec instead
					local match = regExp:exec(typename :: string)
					-- ROBLOX deviation START: remove Boolean
					if match and match[1] == typename then
						-- ROBLOX deviation END
						maybeEnqueue(fuzzyString)
					end
					return 1
				end)
			end
		end
	end

	return false
end

function Policies:hasKeyArgs(typename: string | nil, fieldName: string): boolean
	local policy = (self :: PoliciesPrivate):getFieldPolicy(typename, fieldName, false)
	-- ROBLOX deviation START: remove Boolean
	return policy ~= nil and policy.keyFn ~= nil
	-- ROBLOX deviation END
end

function Policies:getStoreFieldName(fieldSpec: FieldSpecifier): string
	local typename, fieldName = fieldSpec.typename, fieldSpec.fieldName
	local policy = (self :: PoliciesPrivate):getFieldPolicy(typename, fieldName, false)
	local storeFieldName: KeyArgsResult

	local keyFn
	-- ROBLOX deviation START: remove Boolean
	if policy then
		-- ROBLOX deviation END
		keyFn = (policy :: any).keyFn
	else
		keyFn = nil
	end
	-- ROBLOX deviation START: remove Boolean
	if keyFn and typename then
		-- ROBLOX deviation END
		local context: any --[[ ROBLOX TODO: Parameters<KeyArgsFunction>[1] ]] = {
			typename = typename,
			fieldName = fieldName,
			-- ROBLOX deviation START: remove Boolean
			field = fieldSpec.field or nil,
			-- ROBLOX deviation END
			variables = fieldSpec.variables,
		}
		local args = argsFromFieldSpecifier(fieldSpec)
		-- ROBLOX deviation START: remove Boolean
		while keyFn do
			-- ROBLOX deviation END
			local specifierOrString = keyFn(args, context)
			-- ROBLOX deviation START: if specifierOrString is a table, then it is an array
			if type(specifierOrString) == "table" then
				-- ROBLOX deviation END
				keyFn = keyArgsFnFromSpecifier(specifierOrString)
			else
				-- If the custom keyFn returns a falsy value, fall back to
				-- fieldName instead.
				-- ROBLOX deviation START: remove Boolean
				storeFieldName = specifierOrString or fieldName
				-- ROBLOX deviation END
				break
			end
		end
	end

	if storeFieldName == nil then
		-- ROBLOX deviation START: remove Boolean
		if fieldSpec.field then
			-- ROBLOX deviation END
			storeFieldName = storeKeyNameFromField(fieldSpec.field, fieldSpec.variables)
		else
			storeFieldName = getStoreKeyName(fieldName, argsFromFieldSpecifier(fieldSpec))
		end
	end

	-- Returning false from a keyArgs function is like configuring
	-- keyArgs: false, but more dynamic.
	if storeFieldName == false then
		return fieldName
	end

	-- Make sure custom field names start with the actual field.name.value
	-- of the field, so we can always figure out which properties of a
	-- StoreObject correspond to which original field names.
	if fieldName == fieldNameFromStoreName(storeFieldName) then
		return storeFieldName
	else
		return fieldName .. ":" .. storeFieldName
	end
end

type V_ = any
function Policies:readField--[[<V = StoreValue>]](options: ReadFieldOptions, context: ReadMergeModifyContext): SafeReadonly<V_> | nil
	local objectOrReference = options.from
	if not objectOrReference then
		return
	end

	-- ROBLOX deviation START: remove additional options.field and Boolean
	local nameOrField = options.field or options.fieldName
	if not nameOrField then
		-- ROBLOX deviation END
		return
	end

	if options.typename == nil then
		local typename = context.store:getFieldValue(objectOrReference, "__typename")
		-- ROBLOX deviation START: remove Boolean
		if typename then
			-- ROBLOX deviation END
			options.typename = typename
		end
	end

	local storeFieldName = self:getStoreFieldName(options)
	local fieldName = fieldNameFromStoreName(storeFieldName)
	local existing = context.store:getFieldValue(objectOrReference, storeFieldName)
	local policy = (self :: PoliciesPrivate):getFieldPolicy(options.typename, fieldName, false)
	local read
	-- ROBLOX deviation START: remove Boolean
	if policy then
		-- ROBLOX deviation END
		read = (policy :: any).read
	else
		read = nil
	end

	-- ROBLOX deviation START: remove Boolean
	if read then
		-- ROBLOX deviation END: remove Boolean
		local readOptions = makeFieldFunctionOptions(
			self :: Policies,
			objectOrReference,
			options,
			context,
			context.store:getStorage(
				-- ROBLOX deviation START: convert function wrap to if then else
				if (objectOrReference :: Reference).__ref
					then (objectOrReference :: Reference).__ref
					else objectOrReference,
				-- ROBLOX deviation END
				storeFieldName
			)
		)

		-- Call read(existing, readOptions) with cacheSlot holding this.cache.
		return cacheSlot:withValue(self.cache, read, { existing, readOptions }) :: SafeReadonly<V_>
	end

	return existing
end

function Policies:getMergeFunction(
	parentTypename: string | nil,
	fieldName: string,
	childTypename: string | nil
): FieldMergeFunction<any, any> | nil
	local policy: any --[[ ROBLOX TODO: Policies["typePolicies"][string] | Policies["typePolicies"][string]["fields"][string] | undefined ]] = (
		self :: PoliciesPrivate
	):getFieldPolicy(parentTypename, fieldName, false)
	local merge
	-- ROBLOX deviation START: remove Boolean
	if policy then
		-- ROBLOX deviation END
		merge = policy.merge
	else
		merge = policy
	end
	-- ROBLOX deviation START: remove Boolean
	if not merge and childTypename then
		-- ROBLOX deviation END
		policy = self:getTypePolicy(childTypename)
		-- ROBLOX deviation START: remove Boolean
		if policy then
			-- ROBLOX deviation END
			merge = policy.merge
		else
			merge = policy
		end
	end
	return merge
end

function Policies:runMergeFunction(
	existing: StoreValue,
	incoming: StoreValue,
	ref: MergeInfo,
	context: WriteContext,
	storage: StorageType?
): any
	local field, typename, merge = ref.field, ref.typename, ref.merge

	if merge == mergeTrueFn then
		-- Instead of going to the trouble of creating a full
		-- FieldFunctionOptions object and calling mergeTrueFn, we can
		-- simply call mergeObjects, as mergeTrueFn would.
		return makeMergeObjectsFunction(context.store)(ref, existing :: StoreObject, incoming :: StoreObject)
	end

	if merge == mergeFalseFn then
		-- Likewise for mergeFalseFn, whose implementation is even simpler.
		return incoming
	end

	-- If cache.writeQuery or cache.writeFragment was called with
	-- options.overwrite set to true, we still call merge functions, but
	-- the existing data is always undefined, so the merge function will
	-- not attempt to combine the incoming data with the existing data.
	-- ROBLOX deviation START: remove Boolean
	if context.overwrite then
		-- ROBLOX deviation END
		existing = nil
	end

	return merge(
		ref,
		existing,
		incoming,
		makeFieldFunctionOptions(
			self,
			-- Unlike options.readField for read functions, we do not fall
			-- back to the current object if no foreignObjOrRef is provided,
			-- because it's not clear what the current object should be for
			-- merge functions: the (possibly undefined) existing object, or
			-- the incoming object? If you think your merge function needs
			-- to read sibling fields in order to produce a new value for
			-- the current field, you might want to rethink your strategy,
			-- because that's a recipe for making merge behavior sensitive
			-- to the order in which fields are written into the cache.
			-- However, readField(name, ref) is useful for merge functions
			-- that need to deduplicate child objects and references.
			nil,
			{ typename = typename, fieldName = field.name.value, field = field, variables = context.variables },
			context,
			-- ROBLOX deviation START: remove Boolean
			storage :: StorageType or {}
			-- ROBLOX deviation END
		)
	)
end

exports.Policies = Policies

function makeFieldFunctionOptions(
	policies: Policies,
	objectOrReference: (StoreObject | Reference)?,
	fieldSpec: FieldSpecifier,
	context: ReadMergeModifyContext,
	storage: StorageType
): FieldFunctionOptions<Record<string, any>, Record<string, any>>
	local storeFieldName = policies:getStoreFieldName(fieldSpec)
	local fieldName = fieldNameFromStoreName(storeFieldName)
	-- ROBLOX deviation START: remove Boolean
	local variables = fieldSpec.variables or context.variables
	-- ROBLOX deviation END
	return {
		args = argsFromFieldSpecifier(fieldSpec),
		-- ROBLOX deviation START: remove Boolean
		field = fieldSpec.field or nil,
		-- ROBLOX deviation END
		fieldName = fieldName,
		storeFieldName = storeFieldName,
		variables = variables,
		isReference = function(_self, ...)
			return isReference(...)
		end,
		toReference = context.store.toReference,
		storage = storage,
		cache = policies.cache,
		canRead = context.store.canRead,
		readField = function(_self, fieldNameOrOptions: string | ReadFieldOptions, ...: (StoreObject | Reference)?)
			-- ROBLOX deviation START: optimize calls to type(fieldNameOrOptions)
			local fieldNameOrOptionsType = type(fieldNameOrOptions)

			-- ROBLOX deviation: format arguments to print helpful message (handle nil, and Object.None)
			local arguments = {
				if fieldNameOrOptionsType == "table"
					then Object.assign(
						table.clone(fieldNameOrOptions :: ReadFieldOptions),
						if (fieldNameOrOptions :: ReadFieldOptions).from == Object.None
							then { from = "<Object.None>" }
							else nil :: any
					)
					else fieldNameOrOptions,
				if select("#", ...) >= 1 then "<nil>" else nil :: any,
			} :: Array<any>

			local options: ReadFieldOptions

			if fieldNameOrOptionsType == "string" then
				options = {
					fieldName = fieldNameOrOptions :: string,
					-- Default to objectOrReference only when no second argument was
					-- passed for the from parameter, not when undefined is explicitly
					-- passed as the second argument.
					from = if select("#", ...) >= 1 then ... else objectOrReference,
				}
			elseif fieldNameOrOptionsType == "table" then
				--[[
					ROBLOX comment: This cannot be converted to a table.clone,
					we need to remove Object.None from fieldNameOrOptions
				]]
				options = Object.assign({}, fieldNameOrOptions)
				-- ROBLOX deviation END
				-- Default to objectOrReference only when fieldNameOrOptions.from is
				-- actually omitted, rather than just undefined.
				-- ROBLOX deviation: {from: nil} works the same as omitted in Lua, use Object.None instead
				if not hasOwn(fieldNameOrOptions :: ReadFieldOptions, "from") then
					options.from = objectOrReference :: any
				end
			else
				invariant.warn(
					("Unexpected readField arguments: %s"):format(stringifyForDisplay(Array.from(arguments)))
				)
				-- The readField helper function returns undefined for any missing
				-- fields, so it should also return undefined if the arguments were not
				-- of a type we expected
				return
			end

			if _G.__DEV__ and nil == options.from then
				invariant.warn(
					("Undefined 'from' passed to readField with arguments %s"):format(
						stringifyForDisplay(Array.from(arguments))
					)
				)
			end

			if nil == options.variables then
				options.variables = variables
			end
			return policies:readField(options, context)
		end,
		mergeObjects = makeMergeObjectsFunction(context.store),
	}
end

function makeMergeObjectsFunction(store: NormalizedCache): MergeObjectsFunction
	return function(self, existing, incoming)
		if Array.isArray(existing) or Array.isArray(incoming) then
			error(InvariantError.new("Cannot automatically merge arrays"))
		end

		-- These dynamic checks are necessary because the parameters of a
		-- custom merge function can easily have the any type, so the type
		-- system cannot always enforce the StoreObject | Reference parameter
		-- types of options.mergeObjects.
		if isNonNullObject(existing) and isNonNullObject(incoming) then
			local eType = store:getFieldValue(existing, "__typename")
			local iType = store:getFieldValue(incoming, "__typename")
			-- ROBLOX deviation START: remove Boolean
			local typesDiffer = eType ~= nil and iType ~= nil and eType ~= iType
			-- ROBLOX deviation END

			if typesDiffer then
				return incoming
			end

			if isReference(existing) and storeValueIsStoreObject(incoming :: any) then
				-- Update the normalized EntityStore for the entity identified by
				-- existing.__ref, preferring/overwriting any fields contributed by the
				-- newer incoming StoreObject.
				store:merge(((existing :: any) :: Reference).__ref, incoming)
				return existing
			end

			if storeValueIsStoreObject((existing :: any) :: StoreValue) and isReference(incoming) then
				-- Update the normalized EntityStore for the entity identified by
				-- incoming.__ref, taking fields from the older existing object only if
				-- those fields are not already present in the newer StoreObject
				-- identified by incoming.__ref.
				store:merge(existing, ((incoming :: any) :: Reference).__ref)
				return incoming
			end

			if
				storeValueIsStoreObject((existing :: any) :: StoreValue)
				and storeValueIsStoreObject((incoming :: any) :: StoreValue)
			then
				return Object.assign({}, existing, incoming)
			end
		end

		return incoming
	end
end

-- ROBLOX deviation: preserve order of keyFieldsFn when encoding
local function keyObjEncode(object: Record<string, any>, specifier: { any }): string
	-- ROBLOX deviation START: check if this is an empty array in constant time
	assert(typeof(specifier) == "table", "specifier must be an array")
	if not next(specifier) then
		-- ROBLOX deviation END
		return "[]"
	end
	return "{"
		.. Array.join(
			Array.filter(
				Array.map(specifier, function(s, i)
					if Array.isArray(s) then
						return ""
					else
						local arg
						-- ROBLOX deviation START: HttpService encoding does not handle nil
						if not object[s] then
							return ""
						end
						-- ROBLOX deviation END

						if i < #specifier then
							if Array.isArray(specifier[i + 1]) then
								arg = keyObjEncode(object[s], specifier[i + 1])
							else
								arg = HttpService:JSONEncode(object[s])
							end
							return HttpService:JSONEncode(s) .. ":" .. arg
						else
							return HttpService:JSONEncode(s) .. ":" .. HttpService:JSONEncode(object[s])
						end
					end
				end),
				function(val)
					return val ~= ""
				end
			),
			","
		)
		.. "}"
end

function keyArgsFnFromSpecifier(specifier: KeySpecifier): KeyArgsFunction
	return function(args, context)
		if args then
			return ("%s:%s"):format(
				context.fieldName,
				keyObjEncode(computeKeyObject(args, specifier, false), specifier)
			)
		else
			return context.fieldName
		end
	end
end

function keyFieldsFnFromSpecifier(specifier: KeySpecifier): KeyFieldsFunction
	local trie = Trie.new(canUseWeakMap)
	return function(_self, object, context)
		local aliasMap: AliasMap | nil
		if context.selectionSet and context.fragmentMap then
			local info = trie:lookupArray({ context.selectionSet, context.fragmentMap })
			-- ROBLOX deviation START: remove Boolean
			if info.aliasMap then
				-- ROBLOX deviation END
				aliasMap = info.aliasMap
			else
				info.aliasMap = makeAliasMap(context.selectionSet, context.fragmentMap)
				aliasMap = info.aliasMap
			end
		end
		context.keyObject = computeKeyObject(object, specifier, true, aliasMap)
		local keyObject = context.keyObject
		-- ROBLOX deviation: typename is string?, so a fallback is necessary
		return ("%s:%s"):format(context.typename or "null", keyObjEncode(keyObject :: Record<string, any>, specifier))
	end
end
type AliasMap = {
	-- Map from store key to corresponding response key. Undefined when there are
	-- no aliased fields in this selection set.
	aliases: Record<string, string>?,
	-- Map from store key to AliasMap correponding to a child selection set.
	-- Undefined when there are no child selection sets.
	subsets: Record<string, AliasMap>?,
}

function makeAliasMap(selectionSet: SelectionSetNode, fragmentMap: FragmentMap): AliasMap
	local map: AliasMap = {}
	-- TODO Cache this work, perhaps by storing selectionSet._aliasMap?
	local workQueue = Set.new({ selectionSet })
	for _, selectionSet in workQueue do
		Array.forEach(selectionSet.selections, function(selection)
			if isField(selection) then
				-- ROBLOX deviation START: remove Boolean
				if selection.alias then
					-- ROBLOX deviation END
					local responseKey = selection.alias.value
					local storeKey = selection.name.value
					if storeKey ~= responseKey then
						local aliases
						-- ROBLOX deviation START: remove Boolean
						if map.aliases then
							-- ROBLOX deviation END
							aliases = map.aliases
						else
							map.aliases = {}
							aliases = (map.aliases :: any) :: Record<string, string>
						end
						(aliases :: any)[storeKey] = responseKey
					end
				end
				-- ROBLOX deviation START: remove Boolean
				if selection.selectionSet then
					local subsets
					if map.subsets then
						-- ROBLOX deviation END
						subsets = map.subsets
					else
						map.subsets = {}
						subsets = (map.subsets :: any) :: Record<string, AliasMap>
					end
					(subsets :: any)[selection.name.value] = makeAliasMap(selection.selectionSet, fragmentMap)
				end
			else
				local fragment = getFragmentFromSelection(selection, fragmentMap)
				-- ROBLOX deviation START: remove Boolean
				if fragment then
					-- ROBLOX deviation END
					workQueue:add(fragment.selectionSet)
				end
			end
		end)
	end
	return map
end

function computeKeyObject(
	response: Record<string, any>,
	specifier: KeySpecifier,
	strict: boolean,
	aliasMap: AliasMap?
): Record<string, any>
	local keyObj = {}
	local prevKey: string | nil
	-- ROBLOX deviation START: convert Array forEach to for in loop
	for _, s in specifier do
		-- ROBLOX deviation START: s must be an array if it is a table
		if type(s) == "table" then
			-- ROBLOX deviation END
			-- ROBLOX deviation START: use type instead of typeof
			if type(prevKey) == "string" then
				-- ROBLOX deviation END
				local subsets
				-- ROBLOX deviation START: remove Boolean
				if aliasMap then
					-- ROBLOX deviation END
					subsets = (aliasMap :: any).subsets
				else
					subsets = aliasMap
				end
				local subset
				-- ROBLOX deviation START: remove Boolean
				if subsets then
					-- ROBLOX deviation END
					subset = subsets[prevKey]
				else
					subset = subsets
				end
				keyObj[prevKey] = computeKeyObject(response[prevKey], s, strict, subset)
			end
		else
			local aliases
			-- ROBLOX deviation START: remove Boolean
			if aliasMap then
				-- ROBLOX deviation END
				aliases = (aliasMap :: any).aliases
			else
				aliases = aliasMap
			end
			local responseName
			-- ROBLOX deviation START: remove Boolean
			if aliases and aliases[s] then
				-- ROBLOX deviation END
				responseName = aliases[s]
			else
				responseName = s
			end
			-- ROBLOX deviation START: remove Boolean
			if hasOwn(response, responseName) then
				-- ROBLOX deviation END
				prevKey = s
				keyObj[(prevKey :: any) :: string] = response[responseName]
			else
				-- ROBLOX deviation START: remove Boolean
				invariant(not strict, ("Missing field '%s' while computing key fields"):format(responseName))
				-- ROBLOX deviation END
				prevKey = nil
			end
		end
	end
	-- ROBLOX deviation END

	return keyObj
end

-- ROBLOX deviation: reexport Object.None
exports.None = Object.None

return exports
