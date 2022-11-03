-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7d5804a5ad/resolvers/mergedResolvers.ts
local exports = {}
-- ROBLOX Deviation: use custom mergeResolvers until graphql tools is imported
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local utils = require(script.Parent.Parent.utils)
local mergeResolvers = utils.mergeResolvers
type IResolvers<TSource, TContext> = utils.IResolvers<TSource, TContext>
local UserResolver = require(script.Parent.UserResolver).default
local PlayerResolver = require(script.Parent.PlayerResolver).default
local resolvers = mergeResolvers({ UserResolver, PlayerResolver } :: Array<IResolvers<any, any>>)
exports.default = resolvers
return exports
