-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/core/from.ts

local ApolloLink = require(script.Parent.ApolloLink).ApolloLink

return {
	from = ApolloLink.from,
}
