local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local Packages = SocialTestHelpers.Parent

local React = require(Packages.React)
local ApolloProvider = require(Packages.ApolloClient).ApolloProvider
local ApolloClientTestUtils = require(Packages.GraphQLServer).ApolloClientTestUtils
local mockApolloClient = ApolloClientTestUtils.mockApolloClient

return function(root, client)
	return React.createElement(ApolloProvider, {
		client = client or mockApolloClient({}),
	}, root)
end
