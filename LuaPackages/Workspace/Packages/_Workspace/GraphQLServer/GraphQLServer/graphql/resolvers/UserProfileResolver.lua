local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local UserProfileConnector = require(GraphQLServer.graphql.connectors.UserProfileConnector)
local GraphQLError = require(GraphQLServer.Parent.GraphQL).GraphQLError
local formatUserProfileFields = require(GraphQLServer.graphql.utils.formatUserProfileFields)

local resolvers = {
	UserProfile = {
		id = function(root)
			return tostring(root.userId)
		end,
		displayName = function()
			return GraphQLError.new(
				"The displayName field is not available on the UserProfile implementation of User, please use the names field instead"
			)
		end,
	},
	Query = {
		userProfiles = function(_root, args, context, options): UserProfileConnector.FetchProfilesByIdsResponse
			return UserProfileConnector.fetchProfilesByIds(
				args.userIds,
				formatUserProfileFields(options),
				context.fetchImpl
			)
		end,
	},
}

return resolvers
