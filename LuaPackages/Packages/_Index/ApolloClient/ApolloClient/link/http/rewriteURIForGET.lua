--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/rewriteURIForGET.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
local Object = LuauPolyfill.Object

type Array<T> = LuauPolyfill.Array<T>

local encodeURIComponent = require(srcWorkspace.luaUtils.encodeURIComponent)

local exports = {}

local serializeFetchParameter = require(script.Parent.serializeFetchParameter).serializeFetchParameter
local selectHttpOptionsAndBodyModule = require(script.Parent.selectHttpOptionsAndBody)
type Body = selectHttpOptionsAndBodyModule.Body

-- For GET operations, returns the given URI rewritten with parameters, or a
-- parse error.
local function rewriteURIForGET(
	chosenURI: string,
	body: Body
): {
	newURI: string?,
	parseError: any?,
}
	-- Implement the standard HTTP GET serialization, plus 'extensions'. Note
	-- the extra level of JSON serialization!
	local queryParams: Array<string> = {}
	local function addQueryParam(key: string, value: string)
		table.insert(queryParams, ("%s=%s"):format(key, encodeURIComponent(value)))
	end

	if Array.indexOf(Object.keys(body), "query") ~= -1 then
		addQueryParam("query", body.query :: string)
	end
	if Boolean.toJSBoolean(body.operationName) then
		addQueryParam("operationName", body.operationName :: string)
	end
	if Boolean.toJSBoolean(body.variables) then
		local serializedVariables
		local ok, result = pcall(function()
			serializedVariables = serializeFetchParameter(body.variables, "Variables map", true)
		end)
		if not ok then
			return { parseError = result }
		end

		addQueryParam("variables", serializedVariables)
	end
	if Boolean.toJSBoolean(body.extensions) then
		local serializedExtensions
		local ok, result = pcall(function()
			serializedExtensions = serializeFetchParameter(body.extensions, "Extensions map")
		end)
		if not ok then
			return { parseError = result }
		end
		addQueryParam("extensions", serializedExtensions)
	end

	-- Reconstruct the URI with added query params.
	-- XXX This assumes that the URI is well-formed and that it doesn't
	--     already contain any of these query params. We could instead use the
	--     URL API and take a polyfill (whatwg-url@6) for older browsers that
	--     don't support URLSearchParams. Note that some browsers (and
	--     versions of whatwg-url) support URL but not URLSearchParams!
	local fragment, preFragment = "", chosenURI
	local fragmentStart = string.find(chosenURI, "#")
	-- ROBLOX deviation: string.find returns nil in case not found
	if fragmentStart ~= nil then
		fragment = string.sub(chosenURI, fragmentStart)
		preFragment = string.sub(chosenURI, 1, fragmentStart - 1)
	end
	-- ROBLOX deviation: string.find returns nil in case not found
	local queryParamsPrefix = string.find(preFragment, "?") == nil and "?" or "&"
	local newURI = preFragment .. queryParamsPrefix .. Array.join(queryParams, "&") .. fragment
	return { newURI = newURI }
end
exports.rewriteURIForGET = rewriteURIForGET

return exports
