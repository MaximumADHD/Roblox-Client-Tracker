local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails

local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)

return {
	keyFields = if GetFFlagApolloClientFetchThumbnails() then { "topicId" } else nil,
	fields = {
		recommendations = {
			read = makeDefaultReadPolicy({}),
		},
	},
}
