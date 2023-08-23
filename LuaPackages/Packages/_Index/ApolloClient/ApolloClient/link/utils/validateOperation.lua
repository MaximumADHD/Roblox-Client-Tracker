--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/validateOperation.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Array, Object = LuauPolyfill.Array, LuauPolyfill.Object
local InvariantError = require(srcWorkspace.jsutils.invariant).InvariantError

-- ROBLOX deviation: importing directly from core.types to avoid circular dependency
local linkCoreModule = require(script.Parent.Parent.core.types)
type GraphQLRequest = linkCoreModule.GraphQLRequest

local function validateOperation(operation: GraphQLRequest): GraphQLRequest
	local OPERATION_FIELDS = { "query", "operationName", "variables", "extensions", "context" }
	for _, key in ipairs(Object.keys(operation)) do
		if Array.indexOf(OPERATION_FIELDS, key) < 0 then
			error(InvariantError.new(("illegal argument: %s"):format(key)))
		end
	end

	return operation
end
exports.validateOperation = validateOperation
return exports
