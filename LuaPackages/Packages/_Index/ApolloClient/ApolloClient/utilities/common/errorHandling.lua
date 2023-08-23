--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/errorHandling.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean
type Array<T> = LuauPolyfill.Array<T>

local graphQlModule = require(rootWorkspace.GraphQL)
type ExecutionResult = graphQlModule.ExecutionResult

local function graphQLResultHasError(result: ExecutionResult): boolean
	return Boolean.toJSBoolean(result.errors) and #(result.errors :: Array<any>) > 0 or false
end

exports.graphQLResultHasError = graphQLResultHasError

return exports
