-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/cache/inmemory/policies.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local HttpService = game:GetService("HttpService")

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
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
		else (if Boolean.toJSBoolean(spec.field) then argumentsObjectFromField(spec.field, spec.variables) else nil)
end
export type FieldFunctionOptions<TArgs, TVars> = policiesTypesModule.FieldFunctionOptions<TArgs, TVars>

type MergeObjectsFunction = policiesTypesModule.MergeObjectsFunction
export type FieldReadFunction<TExisting, TIncoming> = policiesTypesModule.FieldReadFunction<TExisting, TIncoming>
export type FieldMergeFunction<TExisting, TIncoming> = policiesTypesModule.FieldMergeFunction<TExisting, TIncoming>
type FieldMergeFunction_<TExisting> = policiesTypesModule.FieldMergeFunction_<TExisting>

local function defaultDataIdFromObject(_self, ref, context: KeyFieldsContext?): string | nil
	local __typename, id, _id = ref.__typename, ref.id, ref._id
	if typeof(__typename) == "string" then
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
			return ("%s:%s"):format(
				__typename,
				(function()
					if
						Boolean.toJSBoolean(
							Boolean.toJSBoolean(typeof(id) == "number") and typeof(id) == "number"
								or typeof(id) == "string"
						)
					then
						return id
					else
						return HttpService:JSONEncode(id)
					end
				end)()
			)
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

	if Boolean.toJSBoolean(config.possibleTypes) then
		self:addPossibleTypes(config.possibleTypes :: any)
	end
	if Boolean.toJSBoolean(config.typePolicies) then
		self:addTypePolicies(config.typePolicies :: any)
	end

	return (self :: any) :: Policies
end

function Policies:identify(
	object: StoreObject,
	selectionSet: SelectionSetNode?,
	fragmentMap: FragmentMap?
): any -- ROBLOX TODO: return multiple values to make this more Lua native [string?, StoreObject?]
	-- TODO Use an AliasMap here?
	local typename
	if Boolean.toJSBoolean(selectionSet) and Boolean.toJSBoolean(fragmentMap) then
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
	if Boolean.toJSBoolean(typename) then
		policy = self:getTypePolicy(typename)
	else
		policy = typename
	end
	local keyFn
	if Boolean.toJSBoolean(policy) and Boolean.toJSBoolean(policy.keyFn) then
		keyFn = policy.keyFn
	else
		keyFn = self.config.dataIdFromObject
	end
	while Boolean.toJSBoolean(keyFn) do
		-- ROBLOX deviation: passing policy as self
		local specifierOrId = keyFn(policy, object, context)
		if Array.isArray(specifierOrId) then
			keyFn = keyFieldsFnFromSpecifier(specifierOrId)
		else
			id = specifierOrId
			break
		end
	end

	if Boolean.toJSBoolean(id) then
		id = tostring(id)
	else
		id = nil
	end
	return Boolean.toJSBoolean(context.keyObject) and { id, context.keyObject } or { id }
end

function Policies:addTypePolicies(typePolicies: TypePolicies): ()
	Array.forEach(Object.keys(typePolicies), function(typename)
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
		if Boolean.toJSBoolean(queryType) then
			self:setRootTypename("Query", typename)
		end
		if Boolean.toJSBoolean(mutationType) then
			self:setRootTypename("Mutation", typename)
		end
		if Boolean.toJSBoolean(subscriptionType) then
			self:setRootTypename("Subscription", typename)
		end

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
		if Boolean.toJSBoolean(Array.isArray(keyFields)) then
			(existing :: any).keyFn = keyFieldsFnFromSpecifier(keyFields :: any)
		else
			-- Pass a function to take full control over identification.
			if typeof(keyFields) == "function" then
				(existing :: any).keyFn = keyFields
			else
				-- Leave existing.keyFn unchanged if above cases fail.
				(existing :: any).keyFn = (existing :: any).keyFn
			end
		end
	end

	if Boolean.toJSBoolean(fields) then
		Array.forEach(Object.keys(fields :: Record<string, any>), function(fieldName)
			local existing = self:getFieldPolicy(typename, fieldName, true)
			local incoming = (fields :: any)[fieldName]

			if typeof(incoming) == "function" then
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
					if Array.isArray(keyArgs) then
						existing.keyFn = keyArgsFnFromSpecifier(keyArgs) :: any
					else
						-- Pass a function to take full control over field identity.
						if typeof(keyArgs) == "function" then
							existing.keyFn = keyArgs
						else
							-- Leave existing.keyFn unchanged if above cases fail.
							existing.keyFn = existing.keyFn
						end
					end
				end

				if typeof(read) == "function" then
					existing.read = read
				end

				setMerge(existing :: any, merge)
			end

			if Boolean.toJSBoolean(existing.read) and Boolean.toJSBoolean(existing.merge) then
				-- If we have both a read and a merge function, assume
				-- keyArgs:false, because read and merge together can take
				-- responsibility for interpreting arguments in and out. This
				-- default assumption can always be overridden by specifying
				-- keyArgs explicitly in the FieldPolicy.
				existing.keyFn = Boolean.toJSBoolean(existing.keyFn) and existing.keyFn or simpleKeyArgsFn
			end
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
		invariant(
			not Boolean.toJSBoolean(old) or old == which,
			("Cannot change root %s __typename more than once"):format(which)
		)
		-- First, delete any old __typename associated with this rootId from
		-- rootIdsByTypename.
		if Boolean.toJSBoolean(old) then
			self.rootIdsByTypename[old] = nil
		end
		-- Now make this the only __typename that maps to this rootId.
		self.rootIdsByTypename[typename] = rootId
		-- Finally, update the __typename associated with this rootId.
		self.rootTypenamesById[rootId] = typename
	end
end

function Policies:addPossibleTypes(possibleTypes: PossibleTypesMap): ()
	self.usingPossibleTypes = true
	Array.forEach(Object.keys(possibleTypes), function(supertype)
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
		if Boolean.toJSBoolean(supertypes) and Boolean.toJSBoolean(supertypes.size) then
			supertypes:forEach(function(supertype)
				local ref = self:getTypePolicy(supertype)
				local fields, rest = ref.fields, Object.assign({}, ref, { fields = Object.None })
				Object.assign(policy, rest)
				Object.assign(policy.fields, fields)
			end)
		end
	end

	local inbox = self.toBeAdded[typename]
	if Boolean.toJSBoolean(inbox) and Boolean.toJSBoolean(#inbox) then
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
	if Boolean.toJSBoolean(typename) then
		local fieldPolicies = self:getTypePolicy(typename).fields
		if Boolean.toJSBoolean(fieldPolicies[fieldName]) then
			return fieldPolicies[fieldName]
		else
			if Boolean.toJSBoolean(createIfMissing) then
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
	if not Boolean.toJSBoolean(supertypeSet) and createIfMissing then
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
	if not Boolean.toJSBoolean(fragment.typeCondition) then
		return true
	end

	-- If the fragment has a type condition but the object we're matching
	-- against does not have a __typename, the fragment cannot match.
	if not Boolean.toJSBoolean(typename) then
		return false
	end

	local supertype = (fragment.typeCondition :: any).name.value
	-- Common case: fragment type condition and __typename are the same.
	if typename == supertype then
		return true
	end

	if Boolean.toJSBoolean(self.usingPossibleTypes) and self.supertypeMap:has(supertype) then
		local typenameSupertypeSet = self:getSupertypeSet(typename, true)
		local workQueue = { typenameSupertypeSet }
		local function maybeEnqueue(subtype: string)
			local supertypeSet = self:getSupertypeSet(subtype, false)
			if
				Boolean.toJSBoolean(supertypeSet)
				and Boolean.toJSBoolean(supertypeSet.size)
				and Array.indexOf(workQueue, supertypeSet) < 1
			then
				table.insert(workQueue, supertypeSet)
			end
		end

		-- We need to check fuzzy subtypes only if we encountered fuzzy
		-- subtype strings in addPossibleTypes, and only while writing to
		-- the cache, since that's when selectionSetMatchesResult gives a
		-- strong signal of fragment matching. The StoreReader class calls
		-- policies.fragmentMatches without passing a result object, so
		-- needToCheckFuzzySubtypes is always false while reading.
		local needToCheckFuzzySubtypes =
			not not Boolean.toJSBoolean(Boolean.toJSBoolean(result) and self.fuzzySubtypes.size)
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
					if Boolean.toJSBoolean(match) and match[1] == typename then
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
	return Boolean.toJSBoolean(policy) and policy ~= nil and Boolean.toJSBoolean(policy.keyFn)
end

function Policies:getStoreFieldName(fieldSpec: FieldSpecifier): string
	local typename, fieldName = fieldSpec.typename, fieldSpec.fieldName
	local policy = (self :: PoliciesPrivate):getFieldPolicy(typename, fieldName, false)
	local storeFieldName: KeyArgsResult

	local keyFn
	if Boolean.toJSBoolean(policy) then
		keyFn = (policy :: any).keyFn
	else
		keyFn = nil
	end
	if Boolean.toJSBoolean(keyFn) and Boolean.toJSBoolean(typename) then
		local context: any --[[ ROBLOX TODO: Parameters<KeyArgsFunction>[1] ]] = {
			typename = typename,
			fieldName = fieldName,
			field = Boolean.toJSBoolean(fieldSpec.field) and fieldSpec.field or nil,
			variables = fieldSpec.variables,
		}
		local args = argsFromFieldSpecifier(fieldSpec)
		while Boolean.toJSBoolean(keyFn) do
			local specifierOrString = keyFn(args, context)
			if Array.isArray(specifierOrString) then
				keyFn = keyArgsFnFromSpecifier(specifierOrString)
			else
				-- If the custom keyFn returns a falsy value, fall back to
				-- fieldName instead.
				storeFieldName = Boolean.toJSBoolean(specifierOrString) and specifierOrString or fieldName
				break
			end
		end
	end

	if storeFieldName == nil then
		if Boolean.toJSBoolean(fieldSpec.field) then
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

	local nameOrField = options.field and options.field or options.fieldName
	if not Boolean.toJSBoolean(nameOrField) then
		return
	end

	if options.typename == nil then
		local typename = context.store:getFieldValue(objectOrReference, "__typename")
		if Boolean.toJSBoolean(typename) then
			options.typename = typename
		end
	end

	local storeFieldName = self:getStoreFieldName(options)
	local fieldName = fieldNameFromStoreName(storeFieldName)
	local existing = context.store:getFieldValue(objectOrReference, storeFieldName)
	local policy = (self :: PoliciesPrivate):getFieldPolicy(options.typename, fieldName, false)
	local read
	if Boolean.toJSBoolean(policy) then
		read = (policy :: any).read
	else
		read = nil
	end

	if Boolean.toJSBoolean(read) then
		local readOptions = makeFieldFunctionOptions(
			self :: Policies,
			objectOrReference,
			options,
			context,
			context.store:getStorage(
				(function()
					if isReference(objectOrReference) then
						-- ROBLOX deviation: Luau narrowing, doesn't understand guard clause above
						return ((objectOrReference :: FIX_ANALYZE) :: Reference).__ref
					else
						-- ROBLOX TODO: change cast to :: StoreObject once crash is fixed CLI-47051
						return objectOrReference :: FIX_ANALYZE
					end
				end)(),
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
	if Boolean.toJSBoolean(policy) then
		merge = policy.merge
	else
		merge = policy
	end
	if not Boolean.toJSBoolean(merge) and Boolean.toJSBoolean(childTypename) then
		policy = self:getTypePolicy(childTypename)
		if Boolean.toJSBoolean(policy) then
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
	if Boolean.toJSBoolean(context.overwrite) then
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
			Boolean.toJSBoolean(storage) and storage :: StorageType or {}
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
	local variables = Boolean.toJSBoolean(fieldSpec.variables) and fieldSpec.variables or context.variables
	return {
		args = argsFromFieldSpecifier(fieldSpec),
		field = Boolean.toJSBoolean(fieldSpec.field) and fieldSpec.field or nil,
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
			-- ROBLOX deviation: format arguments to print helpful message (handle nil, and Object.None)
			local arguments = {
				if isNonNullObject(fieldNameOrOptions)
					then Object.assign(
						{},
						fieldNameOrOptions :: ReadFieldOptions,
						if (fieldNameOrOptions :: ReadFieldOptions).from == Object.None
							then { from = "<Object.None>" }
							else nil :: any
					)
					else fieldNameOrOptions,
				if select("#", ...) >= 1 then "<nil>" else nil :: any,
			} :: Array<any>

			local options: ReadFieldOptions

			if typeof(fieldNameOrOptions) == "string" then
				options = {
					fieldName = fieldNameOrOptions,
					-- Default to objectOrReference only when no second argument was
					-- passed for the from parameter, not when undefined is explicitly
					-- passed as the second argument.
					from = if select("#", ...) >= 1 then ... else objectOrReference,
				}
			elseif isNonNullObject(fieldNameOrOptions) then
				options = Object.assign({}, fieldNameOrOptions)
				-- Default to objectOrReference only when fieldNameOrOptions.from is
				-- actually omitted, rather than just undefined.
				-- ROBLOX deviation: {from: nil} works the same as omitted in Lua, use Object.None instead
				if not hasOwn(fieldNameOrOptions, "from") then
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
			local typesDiffer = Boolean.toJSBoolean(eType) and Boolean.toJSBoolean(iType) and eType ~= iType

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
local function keyObjEncode(object: Record<string, any>, specifier): string
	if Array.isArray(specifier) and #specifier == 0 then
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
						-- ROBLOX deivation START: HttpService encoding does not handle nil
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
			if Boolean.toJSBoolean(info.aliasMap) then
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
				if Boolean.toJSBoolean(selection.alias) then
					local responseKey = selection.alias.value
					local storeKey = selection.name.value
					if storeKey ~= responseKey then
						local aliases
						if Boolean.toJSBoolean(map.aliases) then
							aliases = map.aliases
						else
							map.aliases = {}
							aliases = map.aliases
						end
						(aliases :: any)[storeKey] = responseKey
					end
				end
				if Boolean.toJSBoolean(selection.selectionSet) then
					local subsets
					if Boolean.toJSBoolean(map.subsets) then
						subsets = map.subsets
					else
						map.subsets = {}
						subsets = map.subsets
					end
					(subsets :: any)[selection.name.value] = makeAliasMap(selection.selectionSet, fragmentMap)
				end
			else
				local fragment = getFragmentFromSelection(selection, fragmentMap)
				if Boolean.toJSBoolean(fragment) then
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
	Array.forEach(specifier, function(s)
		if Boolean.toJSBoolean(Array.isArray(s)) then
			if typeof(prevKey) == "string" then
				local subsets
				if Boolean.toJSBoolean(aliasMap) then
					subsets = (aliasMap :: any).subsets
				else
					subsets = aliasMap
				end
				local subset
				if Boolean.toJSBoolean(subsets) then
					subset = subsets[prevKey]
				else
					subset = subsets
				end
				keyObj[prevKey] = computeKeyObject(response[prevKey], s, strict, subset)
			end
		else
			local aliases
			if Boolean.toJSBoolean(aliasMap) then
				aliases = (aliasMap :: any).aliases
			else
				aliases = aliasMap
			end
			local responseName
			if Boolean.toJSBoolean(aliases) and Boolean.toJSBoolean(aliases[s]) then
				responseName = aliases[s]
			else
				responseName = s
			end
			if Boolean.toJSBoolean(hasOwn(response, responseName)) then
				prevKey = s
				keyObj[(prevKey :: any) :: string] = response[responseName]
			else
				invariant(
					not Boolean.toJSBoolean(strict),
					("Missing field '%s' while computing key fields"):format(responseName)
				)
				prevKey = nil
			end
		end
		return nil
	end)
	return keyObj
end

-- ROBLOX deviation: reexport Object.None
exports.None = Object.None

return exports
