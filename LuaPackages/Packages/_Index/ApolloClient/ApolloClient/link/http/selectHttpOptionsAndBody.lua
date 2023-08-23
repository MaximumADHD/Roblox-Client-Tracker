--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/selectHttpOptionsAndBody.ts

local rootWorkspace = script.Parent.Parent.Parent.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object

type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
type Record<T, U> = { [T]: U }

type WindowOrWorkerGlobalScope_fetch = (...any) -> Promise<any>

local exports = {}

local print_ = require(rootWorkspace.GraphQL).print

-- ROBLOX deviation: using types module directly to avoid circular dependencies
local coreTypesModule = require(script.Parent.Parent.core.types)
type Operation = coreTypesModule.Operation

-- ROBLOX deviation: predefine functions
local headersToLowerCase

export type UriFunction = (operation: Operation) -> string
export type Body = {
	query: string?,
	operationName: string?,
	variables: Record<string, any>?,
	extensions: Record<string, any>?,
}

export type HttpOptions = {
	--[[*
      * The URI to use when fetching operations.
      *
      * Defaults to '/graphql'.
	]]
	uri: (string | UriFunction)?,

	--[[*
      * Passes the extensions field to your graphql server.
      *
      * Defaults to false.
	]]
	includeExtensions: boolean?,

	--[[*
      * A `fetch`-compatible API to use when making requests.
	]]
	fetch: WindowOrWorkerGlobalScope_fetch?,

	--[[*
      * An object representing values to be sent as headers on the request.
	]]
	headers: any?,

	--[[*
      * The credentials policy you want to use for the fetch call.
	]]
	credentials: string?,

	--[[*
      * Any overrides of the fetch options argument to pass to the fetch call.
	]]
	fetchOptions: any?,

	--[[*
      * If set to true, use the HTTP GET method for query operations. Mutations
      * will still use the method specified in fetchOptions.method (which defaults
      * to POST).
	]]
	useGETForQueries: boolean?,

	--[[*
      * If set to true, the default behavior of stripping unused variables
      * from the request will be disabled.
      *
      * Unused variables are likely to trigger server-side validation errors,
      * per https://spec.graphql.org/draft/#sec-All-Variables-Used, but this
      * includeUnusedVariables option can be useful if your server deviates
      * from the GraphQL specification by not strictly enforcing that rule.
	]]
	includeUnusedVariables: boolean?,
}

export type HttpQueryOptions = { includeQuery: boolean?, includeExtensions: boolean? }

export type HttpConfig = { http: HttpQueryOptions?, options: any?, headers: any?, credentials: any? }

local defaultHttpOptions: HttpQueryOptions = { includeQuery = true, includeExtensions = false }

local defaultHeaders = {
	-- headers are case insensitive (https://stackoverflow.com/a/5259004)
	accept = "*/*",
	["content-type"] = "application/json",
}

local defaultOptions = { method = "POST" }

local fallbackHttpConfig = { http = defaultHttpOptions, headers = defaultHeaders, options = defaultOptions }
exports.fallbackHttpConfig = fallbackHttpConfig :: HttpConfig

local function selectHttpOptionsAndBody(operation: Operation, fallbackConfig: HttpConfig, ...: HttpConfig)
	local configs: Array<HttpConfig> = { ... }

	local options: HttpConfig & Record<string, any> = Object.assign(
		{},
		fallbackConfig.options,
		{ headers = fallbackConfig.headers, credentials = fallbackConfig.credentials }
	)
	local http: HttpQueryOptions
	if fallbackConfig.http ~= nil then
		http = fallbackConfig.http
	else
		http = {}
	end

	--[[
      * use the rest of the configs to populate the options
      * configs later in the list will overwrite earlier fields
	]]
	Array.forEach(configs, function(config)
		options = Object.assign(
			{},
			options,
			config.options,
			{ headers = Object.assign({}, options.headers, headersToLowerCase(config.headers)) }
		)
		if Boolean.toJSBoolean(config.credentials) then
			options.credentials = config.credentials
		end

		http = Object.assign({}, http, config.http)
	end)

	--The body depends on the http options
	local operationName, extensions, variables, query =
		operation.operationName, operation.extensions, operation.variables, operation.query
	local body: Body = { operationName = operationName, variables = variables }

	if http.includeExtensions then
		(body :: any).extensions = extensions
	end

	-- not sending the query (i.e persisted queries)
	if http.includeQuery then
		(body :: any).query = print_(query)
	end

	return { options = options, body = body }
end
exports.selectHttpOptionsAndBody = selectHttpOptionsAndBody

function headersToLowerCase(headers: Record<string, string> | nil): Record<string, string> | nil
	if headers ~= nil then
		local normalized = {}
		Array.forEach(Object.keys(headers), function(name: string)
			normalized[string.lower(name)] = headers[name]
		end)
		return normalized
	end
	return headers
end

return exports
