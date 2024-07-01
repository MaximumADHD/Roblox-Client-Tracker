--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/utils/useBaseQuery.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local Promise = require(rootWorkspace.Promise)
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean, Object = LuauPolyfill.Boolean, LuauPolyfill.Object

type FIX_ANALYZE = any

local React = require(rootWorkspace.React)
local useContext = React.useContext
local useEffect = React.useEffect
local useReducer = React.useReducer
local useRef = React.useRef

local GraphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = GraphQLModule.DocumentNode

local typedDocumentNodeModule = require(srcWorkspace.jsutils.typedDocumentNode)
type TypedDocumentNode<Result, Variables> = typedDocumentNodeModule.TypedDocumentNode<Result, Variables>

local typesModule = require(script.Parent.Parent.Parent.types.types)
type QueryHookOptions<TData, TVariables> = typesModule.QueryHookOptions<TData, TVariables>
type QueryDataOptions<TData, TVariables> = typesModule.QueryDataOptions<TData, TVariables>
type QueryTuple<TData, TVariables> = typesModule.QueryTuple<TData, TVariables>
type LazyQueryResult<TData, TVariables> = typesModule.LazyQueryResult<TData, TVariables>
type QueryResult<TData, TVariables> = typesModule.QueryResult<TData, TVariables>
local dataModule = require(script.Parent.Parent.Parent.data)
local QueryData = dataModule.QueryData
type QueryData<TData, TVariables> = dataModule.QueryData<TData, TVariables>
local useDeepMemo = require(script.Parent.useDeepMemo).useDeepMemo
local coreModule = require(script.Parent.Parent.Parent.Parent.core)
type OperationVariables = coreModule.OperationVariables
local getApolloContext = require(script.Parent.Parent.Parent.context).getApolloContext

local useAfterFastRefresh = require(script.Parent.useAfterFastRefresh).useAfterFastRefresh

-- ROBLOX deviation: error is triggered because array with nil values has a different count
local NIL = { __value = "nil placeholder" }

local function useBaseQuery<TData, TVariables>(
	query: DocumentNode | TypedDocumentNode<TData, TVariables>,
	options: QueryHookOptions<TData, TVariables>?,
	lazy: boolean?
)
	if lazy == nil then
		lazy = false
	end
	local context = useContext(getApolloContext())
	-- ROBLOX FIXME Luau: we shouldn't need to annotate x, bidirectional inference should work
	local tick, forceUpdate = useReducer(function(x: number)
		return x + 1
	end, 0)
	local updatedOptions = Boolean.toJSBoolean(options) and Object.assign({}, options, { query = query })
		or { query = query }
	local queryDataRef = useRef((nil :: any) :: QueryData<TData, TVariables>?)
	local queryData: QueryData<TData, TVariables>
	queryData = queryDataRef.current
		or (function(): QueryData<TData, TVariables>
			queryDataRef.current = QueryData.new({
				options = updatedOptions :: QueryDataOptions<TData, TVariables>,
				context = context,
				onNewData = function(_self)
					if not Boolean.toJSBoolean(queryData:ssrInitiated()) then
						-- // When new data is received from the `QueryData` object, we want to
						-- // force a re-render to make sure the new data is displayed. We can't
						-- // force that re-render if we're already rendering however so to be
						-- // safe we'll trigger the re-render in a microtask. In case the
						-- // component gets unmounted before this callback fires, we re-check
						-- // queryDataRef.current.isMounted before calling forceUpdate().
						Promise.delay(0):andThen(function()
							-- ROBLOX FIXME Luau: analyze fails to narrow based on '.current ~= nil'
							if
								queryDataRef.current ~= nil
								and ((queryDataRef.current :: any) :: QueryData<TData, TVariables>).isMounted
							then
								-- ROBLOX deviation: Roact forces us to provide a value here
								return forceUpdate(nil)
							end
							return
						end)
					else
						-- // If we're rendering on the server side we can force an update at
						-- // any point.
						-- ROBLOX deviation: Roact forces us to provide a value here
						forceUpdate(nil)
					end
				end,
			})
			-- ROBLOX FIXME Luau: analyze fails to narrow based on '.current or (function() .current = QueryData.new() end)'
			return (queryDataRef.current :: any) :: QueryData<TData, TVariables>
		end)()

	queryData:setOptions(updatedOptions)
	queryData.context = context

	-- `onError` and `onCompleted` callback functions will not always have a
	-- stable identity, so we'll exclude them from the memoization key to
	-- prevent `afterExecute` from being triggered un-necessarily.
	local memo = {
		options = Object.assign({}, updatedOptions, { onError = Object.None, onCompleted = Object.None }) :: QueryHookOptions<any, any>,
		context = context,
		tick = tick,
	}

	-- ROBLOX Luau FIXME: shouldn't need this manual annotation on the return type of the anon function
	local result = useDeepMemo(function(): QueryTuple<TData, TVariables> | QueryResult<TData, TVariables>
		if lazy then
			return queryData:executeLazy()
		else
			return queryData:execute()
		end
	end, memo)
	-- ROBLOX FIXME Luau: this if-expression requires explicit annotation of each branch, due a bunch of errors: TypeError: Key 'loading' is missing
	local queryResult = if lazy
		then (result :: QueryTuple<TData, TVariables>)[2] :: LazyQueryResult<TData, TVariables>
		else result :: QueryResult<TData, TVariables>

	if _G.__DEV__ then
		-- ensure we run an update after refreshing so that we reinitialize
		useAfterFastRefresh(forceUpdate)
	end

	useEffect(function()
		return function()
			queryData:cleanup()
			-- this effect can run multiple times during a fast-refresh
			-- so make sure we clean up the ref
			queryDataRef.current = nil
		end
	end, {})

	useEffect(function()
		return queryData:afterExecute({ lazy = lazy })
	end, {
		queryResult.loading ~= nil and queryResult.loading or NIL,
		queryResult.networkStatus ~= nil and queryResult.networkStatus or NIL,
		queryResult.error ~= nil and queryResult.error or NIL,
		-- ROBLOX FIXME Luau: `any` required to eliminate TypeError: Type 'NIL | TData' could not be converted into 'NIL | boolean'
		queryResult.data ~= nil and queryResult.data :: any or NIL,
	})
	return result
end
exports.useBaseQuery = useBaseQuery
return exports
