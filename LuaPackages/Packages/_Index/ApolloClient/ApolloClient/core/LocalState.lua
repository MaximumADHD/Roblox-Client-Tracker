--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/core/LocalState.ts

local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local Boolean = LuauPolyfill.Boolean
local String = LuauPolyfill.String
local Promise = require(rootWorkspace.Promise)

type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
type Record<T, U> = { [T]: U }

local nullModule = require(srcWorkspace.utilities.globals.null)
local NULL = nullModule.NULL
type NULL = nullModule.NULL

--[[
  ROBLOX deviation: no generic params for functions are supported.
  TData_, TCacheShape_
  are placeholders for generic
  TData, TCacheShape param
]]
type TData_ = any
type TCacheShape_ = any

local exports = {}
local graphqlModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphqlModule.DocumentNode
type OperationDefinitionNode = graphqlModule.OperationDefinitionNode
type SelectionSetNode = graphqlModule.SelectionSetNode
type SelectionNode = graphqlModule.SelectionNode
type InlineFragmentNode = graphqlModule.InlineFragmentNode
type FragmentDefinitionNode = graphqlModule.FragmentDefinitionNode
type FieldNode = graphqlModule.FieldNode
type ASTNode = graphqlModule.ASTNode
-- ROBLOX deviation: additional type necessary for type casting
type FragmentSpreadNode = graphqlModule.FragmentSpreadNode
local visit = graphqlModule.visit
local BREAK = graphqlModule.BREAK
local invariant = require(srcWorkspace.jsutils.invariant).invariant

local cacheModule = require(script.Parent.Parent.cache)
type ApolloCache<TSerialized> = cacheModule.ApolloCache<TSerialized>
local utilitiesModule = require(script.Parent.Parent.utilities)
type FragmentMap = utilitiesModule.FragmentMap
type StoreObject = utilitiesModule.StoreObject
local argumentsObjectFromField = utilitiesModule.argumentsObjectFromField
local buildQueryFromSelectionSet = utilitiesModule.buildQueryFromSelectionSet
local createFragmentMap = utilitiesModule.createFragmentMap
local getFragmentDefinitions = utilitiesModule.getFragmentDefinitions
local getMainDefinition = utilitiesModule.getMainDefinition
local hasDirectives = utilitiesModule.hasDirectives
local isField = utilitiesModule.isField
local isInlineFragment = utilitiesModule.isInlineFragment
local mergeDeep = utilitiesModule.mergeDeep
local mergeDeepArray = utilitiesModule.mergeDeepArray
local removeClientSetsFromDocument = utilitiesModule.removeClientSetsFromDocument
local resultKeyNameFromField = utilitiesModule.resultKeyNameFromField
local shouldInclude = utilitiesModule.shouldInclude
local apolloClientModule = require(script.Parent.ApolloClient_types)
type ApolloClient<TCacheShape> = apolloClientModule.ApolloClient<TCacheShape>
local typesModule = require(script.Parent.types)
type Resolvers = typesModule.Resolvers
type OperationVariables = typesModule.OperationVariables
local linkCoreModule = require(script.Parent.Parent.link.core)
type FetchResult<TData, C, E> = linkCoreModule.FetchResult<TData, C, E>
local cacheSlot = require(script.Parent.Parent.cache).cacheSlot
export type Resolver = (
	rootValue: any?,
	args: any?,
	context: any?,
	info: {
		field: FieldNode,
		fragmentMap: FragmentMap,
	}?
) -> any
export type VariableMap = { [string]: any }

export type FragmentMatcher = (self: any, rootValue: any, typeCondition: string, context: any) -> boolean

export type ExecContext = {
	fragmentMap: FragmentMap,
	context: any,
	variables: VariableMap,
	fragmentMatcher: FragmentMatcher,
	defaultOperationType: string,
	exportedVariables: Record<string, any>,
	onlyRunForcedResolvers: boolean,
}

export type LocalStateOptions<TCacheShape> = {
	cache: ApolloCache<TCacheShape>,
	client: ApolloClient<TCacheShape>?,
	resolvers: (Resolvers | Array<Resolvers>)?,
	fragmentMatcher: FragmentMatcher?,
}

export type LocalState<TCacheShape> = {
	addResolvers: (self: LocalState<TCacheShape>, resolvers: Resolvers | Array<Resolvers>) -> (),
	setResolvers: (self: LocalState<TCacheShape>, resolvers: Resolvers | Array<Resolvers>) -> (),
	getResolvers: (self: LocalState<TCacheShape>) -> Resolvers,
	runResolvers: (
		self: LocalState<TCacheShape>,
		ref: {
			document: DocumentNode | nil,
			remoteResult: FetchResult<TData_, Record<string, any>, Record<string, any>>,
			context: Record<string, any>?,
			variables: Record<string, any>?,
			onlyRunForcedResolvers: boolean?,
		}
	) -> Promise<FetchResult<TData_, Record<string, any>, Record<string, any>>>,
	setFragmentMatcher: (self: LocalState<TCacheShape>, fragmentMatcher: FragmentMatcher) -> (),
	getFragmentMatcher: (self: LocalState<TCacheShape>) -> FragmentMatcher,
	clientQuery: (self: LocalState<TCacheShape>, document: DocumentNode) -> DocumentNode | nil,
	serverQuery: (self: LocalState<TCacheShape>, document: DocumentNode) -> DocumentNode | nil,
	prepareContext: (
		self: LocalState<TCacheShape>,
		context: Record<string, any>?
	) -> Record<string, any> & {
		cache: ApolloCache<TCacheShape_>,
		getCacheKey: (self: any, obj: StoreObject) -> string | nil,
	},
	addExportedVariables: (
		self: LocalState<TCacheShape>,
		document: DocumentNode,
		variables: OperationVariables?,
		context: Object?
	) -> Promise<Record<string, any>>,
	shouldForceResolvers: (self: LocalState<TCacheShape>, document: ASTNode) -> boolean,
}

type LocalStatePrivate<TCacheShape> = LocalState<TCacheShape> & {
	cache: ApolloCache<TCacheShape>,
	client: ApolloClient<TCacheShape>,
	resolvers: Resolvers?,
	fragmentMatcher: FragmentMatcher,
	buildRootValueFromCache: (
		self: LocalStatePrivate<TCacheShape>,
		document: DocumentNode,
		variables: Record<string, any>?
	) -> any,
	resolveDocument: (
		self: LocalStatePrivate<TCacheShape>,
		document: DocumentNode,
		rootValue: TData_,
		context: any?,
		variables: VariableMap?,
		fragmentMatcher: FragmentMatcher?,
		onlyRunForcedResolvers: boolean?
	) -> Promise<any>,
	resolveSelectionSet: (
		self: LocalStatePrivate<TCacheShape>,
		selectionSet: SelectionSetNode,
		rootValue: TData_,
		execContext: ExecContext
	) -> Promise<TData_>,
	resolveField: (
		self: LocalStatePrivate<TCacheShape>,
		field: FieldNode,
		rootValue: any,
		execContext: ExecContext
	) -> Promise<any>,
	resolveSubSelectedArray: (
		self: LocalStatePrivate<TCacheShape>,
		field: FieldNode,
		result: Array<any>,
		execContext: ExecContext
	) -> any,
}

local LocalState = {}
LocalState.__index = LocalState

function LocalState.new(ref: LocalStateOptions<TCacheShape_>): LocalState<TCacheShape_>
	local self = setmetatable({}, LocalState)
	local cache, client, resolvers, fragmentMatcher = ref.cache, ref.client, ref.resolvers, ref.fragmentMatcher

	self.cache = cache

	if client ~= nil then
		self.client = client
	end

	if resolvers ~= nil then
		self:addResolvers(resolvers)
	end

	if fragmentMatcher ~= nil then
		self:setFragmentMatcher(fragmentMatcher)
	end

	return (self :: any) :: LocalState<TCacheShape_>
end

function LocalState:addResolvers(resolvers: Resolvers | Array<Resolvers>): ()
	self.resolvers = Boolean.toJSBoolean(self.resolvers) and self.resolvers or {}
	if Array.isArray(resolvers) then
		Array.forEach(resolvers :: Array<Resolvers>, function(resolverGroup)
			self.resolvers = mergeDeep(self.resolvers, resolverGroup)
		end)
	else
		self.resolvers = mergeDeep(self.resolvers, resolvers)
	end
end

function LocalState:setResolvers(resolvers: Resolvers | Array<Resolvers>): ()
	self.resolvers = {}
	self:addResolvers(resolvers)
end

function LocalState:getResolvers(): Resolvers
	return Boolean.toJSBoolean(self.resolvers) and self.resolvers or {}
end

-- Run local client resolvers against the incoming query and remote data.
-- Locally resolved field values are merged with the incoming remote data,
-- and returned. Note that locally resolved fields will overwrite
-- remote data using the same field name.
function LocalState:runResolvers(ref: {
	document: DocumentNode | nil,
	remoteResult: FetchResult<TData_, Record<string, any>, Record<string, any>>,
	context: Record<string, any>?,
	variables: Record<string, any>?,
	onlyRunForcedResolvers: boolean?,
}): Promise<FetchResult<TData_, Record<string, any>, Record<string, any>>>
	local document, remoteResult, context, variables, onlyRunForcedResolvers =
		ref.document, ref.remoteResult, ref.context, ref.variables, ref.onlyRunForcedResolvers
	if ref.onlyRunForcedResolvers == nil then
		onlyRunForcedResolvers = false
	end

	if Boolean.toJSBoolean(document) then
		return self:resolveDocument(
			document,
			remoteResult.data,
			context,
			variables,
			self.fragmentMatcher,
			onlyRunForcedResolvers
		):andThen(function(localResult)
			return Object.assign({}, remoteResult, { data = localResult.result })
		end)
	end

	return Promise.resolve(remoteResult)
end

function LocalState:setFragmentMatcher(fragmentMatcher: FragmentMatcher): ()
	((self :: any) :: LocalStatePrivate<TCacheShape_>).fragmentMatcher = fragmentMatcher
end

function LocalState:getFragmentMatcher(): FragmentMatcher
	return self.fragmentMatcher
end

-- Client queries contain everything in the incoming document (if a @client
-- directive is found).
function LocalState:clientQuery(document: DocumentNode): DocumentNode | NULL
	if hasDirectives({ "client" }, document) then
		if Boolean.toJSBoolean(self.resolvers) then
			return document
		end
	end
	return NULL
end

-- Server queries are stripped of all @client based selection sets.
function LocalState:serverQuery(document: DocumentNode): DocumentNode | nil
	return removeClientSetsFromDocument(document)
end

function LocalState:prepareContext(context: Record<string, any>?): Record<string, any> & {
	cache: ApolloCache<TCacheShape_>,
	getCacheKey: (self: any, obj: StoreObject) -> string | nil,
}
	local cache = self.cache
	return Object.assign({}, context, {
		cache = cache,
		-- Getting an entry's cache key is useful for local state resolvers.
		getCacheKey = function(_self, obj: StoreObject)
			return cache:identify(obj)
		end,
	})
end

-- To support `@client @export(as: "someVar")` syntax, we'll first resolve
-- @client @export fields locally, then pass the resolved values back to be
-- used alongside the original operation variables.
function LocalState:addExportedVariables(
	document: DocumentNode,
	variables: OperationVariables?,
	context: Object?
): Promise<Record<string, any>>
	if variables == nil then
		variables = {}
	end
	if context == nil then
		context = {}
	end

	if Boolean.toJSBoolean(document) then
		local ref = self:buildRootValueFromCache(document, variables)
		return self:resolveDocument(
			document,
			Boolean.toJSBoolean(ref) and ref or {},
			self:prepareContext(context),
			variables
		):andThen(function(data)
			return Object.assign({}, variables, data.exportedVariables)
		end)
	end

	return Promise.resolve(Object.assign({}, variables))
end

function LocalState:shouldForceResolvers(document: ASTNode): boolean
	local forceResolvers = false
	visit(document, {
		Directive = {
			enter = function(_self, node)
				if node.name.value == "client" and Boolean.toJSBoolean(node.arguments) then
					forceResolvers = Array.some(node.arguments, function(arg)
						return arg.name.value == "always"
							and arg.value.kind == "BooleanValue"
							and arg.value.value == true
					end)
					if forceResolvers then
						return BREAK
					end
				end
				return nil
			end,
		},
	})
	return forceResolvers
end

-- Query the cache and return matching data.
function LocalState:buildRootValueFromCache(document: DocumentNode, variables: Record<string, any>?)
	return self.cache:diff({
		query = buildQueryFromSelectionSet(document),
		variables = variables,
		returnPartialData = true,
		optimistic = false,
	}).result
end

function LocalState:resolveDocument(
	document: DocumentNode,
	rootValue: TData_,
	context: any?,
	variables: VariableMap?,
	fragmentMatcher: FragmentMatcher?,
	onlyRunForcedResolvers: boolean?
): Promise<{
	result: TData_,
	exportedVariables: Record<string, any>,
}>
	if context == nil then
		context = {}
	end
	if variables == nil then
		variables = {}
	end
	if fragmentMatcher == nil then
		fragmentMatcher = function()
			return true
		end
	end
	if onlyRunForcedResolvers == nil then
		onlyRunForcedResolvers = false
	end

	local mainDefinition = getMainDefinition(document)
	local fragments = getFragmentDefinitions(document)
	local fragmentMap = createFragmentMap(fragments)

	local definitionOperation = (mainDefinition :: OperationDefinitionNode).operation

	local defaultOperationType: string
	if Boolean.toJSBoolean(definitionOperation) then
		defaultOperationType = string.upper(string.sub(definitionOperation, 1, 1))
			.. String.slice(definitionOperation, 2)
	else
		defaultOperationType = "Query"
	end

	local cache, client = self.cache, self.client
	local execContext: ExecContext = {
		fragmentMap = fragmentMap,
		context = Object.assign({}, context, {
			cache = cache,
			client = client,
		}),
		variables = variables :: VariableMap,
		fragmentMatcher = fragmentMatcher :: FragmentMatcher,
		defaultOperationType = defaultOperationType,
		exportedVariables = {},
		onlyRunForcedResolvers = onlyRunForcedResolvers :: boolean,
	}

	return self:resolveSelectionSet(mainDefinition.selectionSet, rootValue, execContext):andThen(function(result)
		return { result = result, exportedVariables = execContext.exportedVariables }
	end)
end

function LocalState:resolveSelectionSet(
	selectionSet: SelectionSetNode,
	rootValue: TData_,
	execContext: ExecContext
): Promise<TData_>
	local fragmentMap, context, variables = execContext.fragmentMap, execContext.context, execContext.variables
	local resultsToMerge: Array<TData_> = { rootValue }

	local function execute(selection: SelectionNode): Promise<nil>
		if not Boolean.toJSBoolean(shouldInclude(selection, variables)) then
			-- Skip this entirely.
			return Promise.resolve(nil)
		end

		if isField(selection) then
			return self:resolveField(selection, rootValue, execContext):andThen(function(fieldResult)
				if typeof(fieldResult) ~= "nil" then
					table.insert(resultsToMerge, { [resultKeyNameFromField(selection)] = fieldResult } :: TData_)
				end
			end)
		end

		local fragment: InlineFragmentNode | FragmentDefinitionNode

		if isInlineFragment(selection) then
			fragment = selection :: InlineFragmentNode
		else
			-- This is a named fragment.
			fragment = fragmentMap[(selection :: FragmentSpreadNode).name.value]
			invariant(fragment, ("No fragment named %s"):format((selection :: FragmentSpreadNode).name.value))
		end

		if fragment and fragment.typeCondition ~= nil then
			local typeCondition = fragment.typeCondition.name.value
			if Boolean.toJSBoolean(execContext:fragmentMatcher(rootValue, typeCondition, context)) then
				return self:resolveSelectionSet(fragment.selectionSet, rootValue, execContext)
					:andThen(function(fragmentResult)
						table.insert(resultsToMerge, fragmentResult)
					end)
			end
		end
		return Promise.resolve(nil)
	end

	return Promise.all(Array.map(selectionSet.selections, execute)):andThen(function()
		return mergeDeepArray(resultsToMerge)
	end)
end

function LocalState:resolveField(field: FieldNode, rootValue: any, execContext: ExecContext): Promise<any>
	local variables = execContext.variables
	local fieldName = field.name.value
	local aliasedFieldName = resultKeyNameFromField(field)
	local aliasUsed = fieldName ~= aliasedFieldName
	local defaultResult = Boolean.toJSBoolean(rootValue[aliasedFieldName]) and rootValue[aliasedFieldName]
		or rootValue[fieldName]
	local resultPromise = Promise.resolve(defaultResult)

	-- Usually all local resolvers are run when passing through here, but
	-- if we've specifically identified that we only want to run forced
	-- resolvers (that is, resolvers for fields marked with
	-- `@client(always: true)`), then we'll skip running non-forced resolvers.
	if not execContext.onlyRunForcedResolvers or self:shouldForceResolvers(field) then
		local resolverType = Boolean.toJSBoolean(rootValue.__typename) and rootValue.__typename
			or execContext.defaultOperationType
		local resolverMap
		if Boolean.toJSBoolean(self.resolvers) then
			resolverMap = self.resolvers[tostring(resolverType)]
		else
			resolverMap = self.resolvers
		end
		if Boolean.toJSBoolean(resolverMap) then
			local resolve = resolverMap[(function()
				if aliasUsed then
					return fieldName
				else
					return aliasedFieldName
				end
			end)()]
			if Boolean.toJSBoolean(resolve) then
				resultPromise = Promise.resolve(
					-- In case the resolve function accesses reactive variables,
					-- set cacheSlot to the current cache instance.
					cacheSlot:withValue(self.cache, resolve, {
						rootValue,
						argumentsObjectFromField(field, variables),
						execContext.context,
						{ field = field, fragmentMap = execContext.fragmentMap },
					})
				)
			end
		end
	end

	return resultPromise:andThen(function(result: any?)
		if result == nil then
			result = defaultResult
		end
		-- If an @export directive is associated with the current field, store
		-- the `as` export variable name and current result for later use.
		if field.directives ~= nil then
			Array.forEach(field.directives, function(directive)
				if directive.name.value == "export" and Boolean.toJSBoolean(directive.arguments) then
					Array.forEach(directive.arguments, function(arg)
						if arg.name.value == "as" and arg.value.kind == "StringValue" then
							execContext.exportedVariables[arg.value.value] = result
						end
					end)
				end
			end)
		end

		-- Handle all scalar types here.
		if not Boolean.toJSBoolean(field.selectionSet) then
			return result
		end

		-- From here down, the field has a selection set, which means it's trying
		-- to query a GraphQLObjectType.
		if result == nil or result == NULL then
			-- Basically any field in a GraphQL response can be null, or missing
			return result
		end

		if Array.isArray(result) then
			return self:resolveSubSelectedArray(field, result, execContext)
		end

		-- Returned value is an object, and the query has a sub-selection. Recurse.
		if Boolean.toJSBoolean(field.selectionSet) then
			return self:resolveSelectionSet(field.selectionSet, result, execContext)
		end
		return nil
	end)
end

function LocalState:resolveSubSelectedArray(field: FieldNode, result: Array<any>, execContext: ExecContext): any
	return Promise.all(Array.map(result, function(item): any
		if item == NULL then
			return NULL
		end

		-- This is a nested array, recurse.
		if Array.isArray(item) then
			return self:resolveSubSelectedArray(field, item, execContext)
		end

		-- This is an object, run the selection set on it.
		if Boolean.toJSBoolean(field.selectionSet) then
			return self:resolveSelectionSet(field.selectionSet, item, execContext)
		end
		return nil
	end))
end

exports.LocalState = LocalState

return exports
