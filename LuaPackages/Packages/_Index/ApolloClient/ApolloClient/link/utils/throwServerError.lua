--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/throwServerError.ts

local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Error = LuauPolyfill.Error

type Error = LuauPolyfill.Error
type Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
type Record<T, U> = { [T]: U }

local responseModule = require(srcWorkspace.luaUtils.Response)
type Response = responseModule.Response

local exports = {}

export type ServerError = Error & {
	response: Response,
	result: Record<string, any>,
	statusCode: number,
}

local function throwServerError(response: Response, result: any, message: string)
	local error_ = Error.new(message) :: ServerError
	error_.name = "ServerError"
	error_.response = response
	error_.statusCode = response.status
	error_.result = result
	error(error_)
end
exports.throwServerError = throwServerError

return exports
