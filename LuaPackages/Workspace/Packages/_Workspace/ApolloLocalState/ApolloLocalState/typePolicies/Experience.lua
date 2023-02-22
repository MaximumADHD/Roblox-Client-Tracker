local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails

return {
	keyFields = if GetFFlagApolloClientFetchThumbnails() then { "universeId" } else nil,
}
