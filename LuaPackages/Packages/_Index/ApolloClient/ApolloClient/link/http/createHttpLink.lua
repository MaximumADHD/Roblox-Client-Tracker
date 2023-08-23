--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/createHttpLink.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set
type Record<T, U> = { [T]: U }

local exports = {}

local graphQLModule = require(rootWorkspace.GraphQL)
local visit = graphQLModule.visit
type DefinitionNode = graphQLModule.DefinitionNode
type VariableDefinitionNode = graphQLModule.VariableDefinitionNode
type OperationDefinitionNode = graphQLModule.OperationDefinitionNode

local ApolloLink = require(script.Parent.Parent.core).ApolloLink
local Observable = require(script.Parent.Parent.Parent.utilities).Observable
local serializeFetchParameter = require(script.Parent.serializeFetchParameter).serializeFetchParameter
local selectURI = require(script.Parent.selectURI).selectURI
local parseAndCheckHttpResponse = require(script.Parent.parseAndCheckHttpResponse).parseAndCheckHttpResponse
local checkFetcher = require(script.Parent.checkFetcher).checkFetcher
local selectHttpOptionsAndBodyModule = require(script.Parent.selectHttpOptionsAndBody)
local selectHttpOptionsAndBody = selectHttpOptionsAndBodyModule.selectHttpOptionsAndBody
local fallbackHttpConfig = selectHttpOptionsAndBodyModule.fallbackHttpConfig
type HttpOptions = selectHttpOptionsAndBodyModule.HttpOptions
local createSignalIfSupported = require(script.Parent.createSignalIfSupported).createSignalIfSupported
local rewriteURIForGET = require(script.Parent.rewriteURIForGET).rewriteURIForGET
local fromError = require(script.Parent.Parent.utils).fromError

local function createHttpLink(linkOptions_: HttpOptions?)
	local linkOptions: HttpOptions = linkOptions_ :: any
	if linkOptions == nil then
		linkOptions = {}
	end

	local uri, fetcher, includeExtensions, useGETForQueries, includeUnusedVariables, requestOptions =
		linkOptions.uri ~= nil and linkOptions.uri or "/graphql", -- use default global fetch if nothing passed in
		linkOptions.fetch :: any,
		linkOptions.includeExtensions,
		linkOptions.useGETForQueries,
		linkOptions.includeUnusedVariables ~= nil and linkOptions.includeUnusedVariables or false,
		Object.assign({}, linkOptions, {
			uri = Object.None,
			fetch = Object.None,
			includeExtensions = Object.None,
			useGETForQueries = Object.None,
			includeUnusedVariables = Object.None,
		})

	-- dev warnings to ensure fetch is present
	checkFetcher(fetcher)

	--fetcher is set here rather than the destructuring to ensure fetch is
	--declared before referencing it. Reference in the destructuring would cause
	--a ReferenceError
	if not Boolean.toJSBoolean(fetcher) then
		fetcher = _G.fetch
	end

	local linkConfig = {
		http = { includeExtensions = includeExtensions },
		options = requestOptions.fetchOptions,
		credentials = requestOptions.credentials,
		headers = requestOptions.headers,
	}

	return ApolloLink.new(function(_self, operation)
		local chosenURI = selectURI(operation, uri)

		local context = operation:getContext()

		-- `apollographql-client-*` headers are automatically set if a
		-- `clientAwareness` object is found in the context. These headers are
		-- set first, followed by the rest of the headers pulled from
		-- `context.headers`. If desired, `apollographql-client-*` headers set by
		-- the `clientAwareness` object can be overridden by
		-- `apollographql-client-*` headers set in `context.headers`.
		-- ROBLOX FIXME: temporary workaround
		local clientAwarenessHeaders --[[: { ["apollographql-client-name"]: string?, ["apollographql-client-version"]: string? } ]] =
			{} :: typeof({
				["apollographql-client-name"] = ("string" :: any) :: string?,
				["apollographql-client-version"] = ("string" :: any) :: string?,
			})

		if Boolean.toJSBoolean(context.clientAwareness) then
			local name, version = context.clientAwareness.name, context.clientAwareness.version
			if Boolean.toJSBoolean(name) then
				clientAwarenessHeaders["apollographql-client-name"] = name
			end
			if Boolean.toJSBoolean(version) then
				clientAwarenessHeaders["apollographql-client-version"] = version
			end
		end

		local contextHeaders = Object.assign({}, clientAwarenessHeaders, context.headers)

		local contextConfig = {
			http = context.http,
			options = context.fetchOptions,
			credentials = context.credentials,
			headers = contextHeaders,
		}

		--uses fallback, link, and then context to build options
		local ref = selectHttpOptionsAndBody(operation, fallbackHttpConfig, linkConfig, contextConfig)
		local options, body = ref.options, ref.body

		if body.variables ~= nil and not includeUnusedVariables then
			local unusedNames = Set.new(Object.keys(body.variables))
			visit(operation.query, {
				Variable = function(self, node, _key, parent)
					-- A variable type definition at the top level of a query is not
					-- enough to silence server-side errors about the variable being
					-- unused, so variable definitions do not count as usage.
					-- https://spec.graphql.org/draft/#sec-All-Variables-Used
					if
						Boolean.toJSBoolean(parent)
						and (parent :: VariableDefinitionNode).kind ~= "VariableDefinition"
					then
						unusedNames:delete(node.name.value)
					end
				end,
			})
			if Boolean.toJSBoolean(unusedNames.size) then
				-- Make a shallow copy of body.variables (with keys in the same
				-- order) and then delete unused variables from the copy.
				body.variables = Object.assign({}, body.variables)
				unusedNames:forEach(function(name)
					body.variables[name] = nil
				end)
			end
		end

		local controller: any
		if not Boolean.toJSBoolean((options :: any).signal) then
			local ref_ = createSignalIfSupported()
			local _controller, signal = ref_.controller, ref_.signal
			controller = _controller
			if Boolean.toJSBoolean(controller) then
				(options :: any).signal = signal
			end
		end

		-- If requested, set method to GET if there are no mutations.
		local function definitionIsMutation(d: DefinitionNode): boolean
			return d.kind == "OperationDefinition" and (d :: OperationDefinitionNode).operation == "mutation"
		end
		if
			Boolean.toJSBoolean(useGETForQueries)
			and not Array.some(operation.query.definitions, definitionIsMutation)
		then
			options.method = "GET"
		end

		if options.method == "GET" then
			local ref__ = rewriteURIForGET(chosenURI, body)
			local newURI, parseError = ref__.newURI, ref__.parseError
			if Boolean.toJSBoolean(parseError) then
				return fromError(parseError)
			end
			chosenURI = newURI
		else
			local ok, result = pcall(function()
				(options :: any).body = serializeFetchParameter(body, "Payload")
			end)
			if not ok then
				return fromError(result)
			end
		end
		return Observable.new(function(observer)
			fetcher(chosenURI, options)
				:andThen(function(response)
					operation:setContext({ response = response })
					return response
				end)
				:andThen(parseAndCheckHttpResponse(operation))
				:andThen(function(result)
					-- we have data and can send it to back up the link chain
					observer:next(result)
					observer:complete()
					return result
				end)
				:catch(function(err)
					-- fetch was cancelled so it's already been cleaned up in the unsubscribe
					if err.name == "AbortError" then
						return
					end
					-- if it is a network error, BUT there is graphql result info
					-- fire the next observer before calling error
					-- this gives apollo-client (and react-apollo) the `graphqlErrors` and `networErrors`
					-- to pass to UI
					-- this should only happen if we *also* have data as part of the response key per
					-- the spec
					if
						Boolean.toJSBoolean(err.result)
						and Boolean.toJSBoolean(err.result.errors)
						and Boolean.toJSBoolean(err.result.data)
					then
						-- if we don't call next, the UI can only show networkError because AC didn't
						-- get any graphqlErrors
						-- this is graphql execution result info (i.e errors and possibly data)
						-- this is because there is no formal spec how errors should translate to
						-- http status codes. So an auth error (401) could have both data
						-- from a public field, errors from a private field, and a status of 401
						-- {
						--  user { // this will have errors
						--    firstName
						--  }
						--  products { // this is public so will have data
						--    cost
						--  }
						-- }
						--
						-- the result of above *could* look like this:
						-- {
						--   data: { products: [{ cost: "$10" }] },
						--   errors: [{
						--      message: 'your session has timed out',
						--      path: []
						--   }]
						-- }
						-- status code of above would be a 401
						-- in the UI you want to show data where you can, errors as data where you can
						-- and use correct http status codes
						observer:next(err.result)
					end
					observer:error(err)
				end)

			return function()
				-- XXX support canceling this request
				-- https://developers.google.com/web/updates/2017/09/abortable-fetch
				if Boolean.toJSBoolean(controller) then
					controller:abort()
				end
			end
		end)
	end)
end
exports.createHttpLink = createHttpLink

return exports
