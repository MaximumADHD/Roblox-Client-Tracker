-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/e027a80507/graphql/resolvers/mergedResolvers.ts
local exports = {}
-- TODO: https://jira.rbx.com/browse/LUAFDN-1445 replace with graphql tools mergeResolvers
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local utils = require(script.Parent.Parent.utils)
local mergeResolvers = utils.mergeResolvers
type IResolvers<TSource, TContext> = utils.IResolvers<TSource, TContext>
local UserResolver = require(script.Parent.UserResolver).default
local PlayerResolver = require(script.Parent.PlayerResolver).default
local OmniFeedResolver = require(script.Parent.OmniFeed).default
local ScalarResolver = require(script.Parent.ScalarResolver).default
local VirtualEventResolver = require(script.Parent.VirtualEventResolver)
local resolvers = mergeResolvers({
	UserResolver,
	PlayerResolver,
	OmniFeedResolver,
	ScalarResolver,
	VirtualEventResolver,
} :: Array<IResolvers<any, any>>)
exports.default = resolvers

return exports
