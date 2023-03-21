local exports = {}
-- local QueryManagerModule = require(script.Parent.Parent.Parent.Parent.core.QueryManager)
-- local QueryManager = QueryManagerModule.QueryManager
-- type QueryManager<TStore> = QueryManagerModule.QueryManager<TStore>

-- local mockLinkModule = require(script.Parent.mockLink)
-- local mockSingleLink = mockLinkModule.mockSingleLink
-- type MockedResponse_ = mockLinkModule.MockedResponse_
-- local InMemoryCache = require(script.Parent.Parent.Parent.Parent.cache.inmemory.inMemoryCache).InMemoryCache
-- -- ROBLOX FIXME: importing NormalizedCacheObject because it's not inferred atm
-- local inmemoryTypesModule = require(script.Parent.Parent.Parent.Parent.cache.inmemory.types)
-- type NormalizedCacheObject = inmemoryTypesModule.NormalizedCacheObject

-- -- Helper method for the tests that construct a query manager out of a
-- -- a list of mocked responses for a mocked network interface.
-- exports.default = function(reject: (reason: any) -> ...any, ...: MockedResponse_)
-- 	-- ROBLOX FIXME: explicit cast to QueryManager<NormalizedCacheObject> when it should be inferred
-- 	return (
-- 		QueryManager.new({
-- 			link = mockSingleLink(...),
-- 			cache = InMemoryCache.new({ addTypename = false }),
-- 		}) :: any
-- 	) :: QueryManager<NormalizedCacheObject>
-- end

return exports
