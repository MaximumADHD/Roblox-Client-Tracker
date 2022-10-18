--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/v15.5.1/src/subscription/index.js
local subscribeModule = require(script.subscribe)
local subscribe = subscribeModule.subscribe
local createSourceEventStream = subscribeModule.createSourceEventStream

export type SubscriptionArgs = subscribeModule.SubscriptionArgs

return {
	subscribe = subscribe,
	createSourceEventStream = createSourceEventStream,
}
