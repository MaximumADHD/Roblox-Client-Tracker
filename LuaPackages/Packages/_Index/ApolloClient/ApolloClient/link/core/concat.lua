-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/link/core/concat.ts

local ApolloLink = require(script.Parent.ApolloLink).ApolloLink

return {
	concat = ApolloLink.concat_,
}
