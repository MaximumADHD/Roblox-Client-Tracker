--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/transformOperation.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

-- ROBLOX deviation: importing directly from core.types to avoid circular dependency
local coreModule = require(script.Parent.Parent.core.types)
type GraphQLRequest = coreModule.GraphQLRequest
type Operation = coreModule.Operation
local getOperationName = require(script.Parent.Parent.Parent.utilities).getOperationName

local function transformOperation(operation: GraphQLRequest): GraphQLRequest
	local transformedOperation: GraphQLRequest = {
		variables = Boolean.toJSBoolean(operation.variables) and operation.variables or {},
		extensions = Boolean.toJSBoolean(operation.extensions) and operation.extensions or {},
		operationName = operation.operationName,
		query = operation.query,
	}

	-- Best guess at an operation name
	if not Boolean.toJSBoolean(transformedOperation.operationName) then
		if typeof(transformedOperation.query) ~= "string" then
			transformedOperation.operationName = Boolean.toJSBoolean(getOperationName(transformedOperation.query))
					and getOperationName(transformedOperation.query)
				or nil
		else
			transformedOperation.operationName = ""
		end
	end
	return transformedOperation
end
exports.transformOperation = transformOperation
return exports
