--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/http/createSignalIfSupported.ts

local exports = {}

local function createSignalIfSupported()
	local AbortController = _G.AbortController
	if typeof(AbortController) == "nil" then
		return { controller = false, signal = false }
	end
	local controller = AbortController.new()
	local signal = controller.signal
	return { controller = controller, signal = signal }
end
exports.createSignalIfSupported = createSignalIfSupported

return exports
