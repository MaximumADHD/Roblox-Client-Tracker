--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/objects.ts

local function isNonNullObject(obj: any): boolean
	return obj ~= nil and type(obj) == "table"
end

return {
	isNonNullObject = isNonNullObject,
}
