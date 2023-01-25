local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local makeVar = require(Packages.ApolloClient).makeVar

--[[
  This variable will be used as the source of truth for the current sessionId argument to the
  omni recommendations Apollo Client request. We will generate and set this value in the
  apollo client prefetch in FetchHomePageData, and then reuse it in the HomeOmniFeed to
  get the prefetched data from the cache.
]]
return makeVar("")
