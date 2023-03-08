local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)
local GetFFlagApolloClientFetchExperiences = require(Packages.SharedFlags).GetFFlagApolloClientFetchExperiences

return {
	keyFields = if GetFFlagApolloClientFetchExperiences() then { "contentId" } else nil,
	fields = {
		contentMetadata = {
			read = makeDefaultReadPolicy({}),
		},
	},
}
