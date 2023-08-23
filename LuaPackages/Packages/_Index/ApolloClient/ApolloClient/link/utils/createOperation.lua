--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/utils/createOperation.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object

-- ROBLOX deviation: importing directly from core.types to avoid circular dependency
local coreModule = require(script.Parent.Parent.core.types)
type GraphQLRequest = coreModule.GraphQLRequest
type Operation = coreModule.Operation

local function createOperation(starting: any, operation_: GraphQLRequest): Operation
	local operation = operation_ :: any
	local context = Object.assign({}, starting)
	local function setContext(_self, next: any)
		if typeof(next) == "function" then
			context = Object.assign({}, context, next(context))
		else
			context = Object.assign({}, context, next)
		end
	end

	local function getContext(_self)
		return Object.assign({}, context)
	end

	operation = setmetatable(operation, { __index = { setContext = setContext, getContext = getContext } })

	return operation :: Operation
end

exports.createOperation = createOperation

return exports
