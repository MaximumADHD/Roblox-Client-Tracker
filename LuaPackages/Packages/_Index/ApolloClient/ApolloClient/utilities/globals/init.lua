-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/globals/index.ts
local exports = {}
--[[
// Just in case the graphql package switches from process.env.NODE_ENV to
// __DEV__, make sure __DEV__ is polyfilled before importing graphql.
]]
local DEV = require(script.DEV).default
exports.DEV = DEV

--[[
// Import graphql/jsutils/instanceOf safely, working around its unchecked usage
// of process.env.NODE_ENV and https://github.com/graphql/graphql-js/pull/2894.
]]
local removeTemporaryGlobals = require(script.graphql).removeTemporaryGlobals
exports.removeTemporaryGlobals = removeTemporaryGlobals

-- ROBLOX deviation: not upstream
local NULL = require(script.null).NULL
exports.NULL = NULL

--[[
// Synchronously undo the global process.env.NODE_ENV polyfill that we created
// temporarily while importing the offending graphql/jsutils/instanceOf module.
]]
removeTemporaryGlobals()

return exports
