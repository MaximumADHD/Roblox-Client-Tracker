local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails

return {
	fields = {
		omniFeedItem = {
			read = if GetFFlagApolloClientFetchThumbnails()
				then function(_self, _existing, options)
					return options:toReference({
						__typename = "OmniFeedItem",
						topicId = options.args.sortId,
					})
				end
				else nil,
		},
	},
}
