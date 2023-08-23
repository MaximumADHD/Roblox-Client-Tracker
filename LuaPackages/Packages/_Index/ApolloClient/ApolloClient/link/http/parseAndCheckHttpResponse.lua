--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/parseAndCheckHttpResponse.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error

type Array<T> = LuauPolyfill.Array<T>
type Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>

local responseModule = require(srcWorkspace.luaUtils.Response)
type Response = responseModule.Response

local HttpService = game:GetService("HttpService")

local exports = {}

-- ROBLOX deviation: using types module directly to avoid circular dependencies
local coreTypesModule = require(script.Parent.Parent.core.types)
type Operation = coreTypesModule.Operation
local throwServerError = require(script.Parent.Parent.utils).throwServerError
local hasOwnProperty = require(srcWorkspace.luaUtils.hasOwnProperty)
export type ServerParseError = Error & { response: Response, statusCode: number, bodyText: string }
local function parseAndCheckHttpResponse(operations: Operation | Array<Operation>)
	return function(response: Response)
		return response
			:text()
			:andThen(function(bodyText: string)
				local ok, result = pcall(function()
					return HttpService:JSONDecode(bodyText), true
				end)
				if not ok then
					-- ROBLOX deviation: creating new error because HttpService:JSONDecode throws a bare string
					local parseError = Error.new(result) :: ServerParseError
					parseError.name = "ServerParseError"
					parseError.response = response
					parseError.statusCode = response.status
					parseError.bodyText = bodyText
					error(parseError)
				end

				return result
			end)
			:andThen(function(result: any)
				-- ROBLOX deviation comparison with nil is valid in JS
				if response.status ~= nil and response.status >= 300 then
					-- Network error
					throwServerError(
						response,
						result,
						("Response not successful: Received status code %s"):format(tostring(response.status))
					)
				end
				if
					not Array.isArray(result)
					and not hasOwnProperty(result, "data")
					and not hasOwnProperty(result, "errors")
				then
					-- Data error
					throwServerError(
						response,
						result,
						("Server response was missing for query '%s'."):format(
							Array.isArray(operations)
									-- ROBLOX deviation: using Array.join to convert the array to string
									and Array.join(
										Array.map(operations :: Array<Operation>, function(op)
											return op.operationName
										end),
										", "
									)
								or (operations :: Operation).operationName
						)
					)
				end
				return result
			end)
	end
end
exports.parseAndCheckHttpResponse = parseAndCheckHttpResponse

return exports
