--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/config/jest/setup.ts
local Packages = script.Parent.Parent.Parent.Parent
local gqlModule = require(Packages.GraphQLTag)

-- Turn off warnings for repeated fragment names
gqlModule.disableFragmentWarnings()

-- ROBLOX deviation START: no global error handler
-- process:on("unhandledRejection", function() end)
-- ROBLOX deviation END

return {}
