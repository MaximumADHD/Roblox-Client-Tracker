--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/canUse.ts
-- ROBLOX deviation START: the upstream of this file would always return true in Roblox environment
return {
	canUseWeakMap = true,
	canUseWeakSet = false,
}
-- ROBLOX deviation END
