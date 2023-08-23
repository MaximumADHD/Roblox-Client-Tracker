--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/selectURI.ts

local rootWorkspace = script.Parent.Parent.Parent.Parent

local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Boolean = LuauPolyfill.Boolean

local exports = {}

-- ROBLOX deviation: using types module directly to avoid circular dependencies
local coreTypesModule = require(script.Parent.Parent.core.types)
type Operation = coreTypesModule.Operation
local function selectURI(operation: Operation, fallbackURI: (string | ((operation: Operation) -> string))?)
	local context = operation:getContext()
	local contextURI = context.uri

	if Boolean.toJSBoolean(contextURI) then
		return contextURI
	elseif typeof(fallbackURI) == "function" then
		return fallbackURI(operation)
	else
		return Boolean.toJSBoolean(fallbackURI) and fallbackURI :: string or "/graphql"
	end
end
exports.selectURI = selectURI

return exports
