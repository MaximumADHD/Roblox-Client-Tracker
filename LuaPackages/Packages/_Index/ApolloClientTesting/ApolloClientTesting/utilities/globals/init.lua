-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/globals/index.ts
local exports = {}
--[[
// Just in case the graphql package switches from process.env.NODE_ENV to
// __DEV__, make sure __DEV__ is polyfilled before importing graphql.
]]
local DEV = require(script.DEV).default
exports.DEV = DEV

-- ROBLOX deviation: not upstream
local nullModule = require(script.null)
local NULL = nullModule.NULL
exports.NULL = NULL
export type NULL = nullModule.NULL

return exports
