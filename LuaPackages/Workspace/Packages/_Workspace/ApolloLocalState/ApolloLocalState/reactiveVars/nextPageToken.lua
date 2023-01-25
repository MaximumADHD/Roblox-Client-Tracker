local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local makeVar = require(Packages.ApolloClient).makeVar

-- This variable will be used as the source of truth for the current nextPageToken.
-- We will need to keep track of the nextPageToken to properly retrieve data from the cache
return makeVar(nil)
