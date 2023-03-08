local Packages = script:FindFirstAncestor("GraphQLServer").Parent

local Cryo = require(Packages.Cryo)

local generatedTypes = require(script.Parent.Parent.generatedTypes)
type MutualFriend = generatedTypes.MutualFriend

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>

local ProfileInsightsConnector = require(script.Parent.Parent.connectors.ProfileInsightsConnector)
local findProfileInsightsByUserIds = ProfileInsightsConnector.findProfileInsightsByUserIds
type UserInsightsJson = ProfileInsightsConnector.UserInsightsJson
type MutualFriendsJson = ProfileInsightsConnector.MutualFriendsJson
type InsightsJson = ProfileInsightsConnector.InsightsJson

local getProfileInsights = function(root: UserInsightsJson): InsightsJson?
	--* there is always one element in profileInsights array
	return root and root.profileInsights and root.profileInsights[1] or nil
end

local resolvers = {
	ProfileInsights = {
		targetUserId = function(root: UserInsightsJson): string
			return root.targetUser
		end,
		mutualFriends = function(root: UserInsightsJson): Array<MutualFriend>?
			local insights = getProfileInsights(root)
			local mutualFriends = if insights and insights.mutualFriendInsight
				then insights.mutualFriendInsight.mutualFriends
				else nil
			if not mutualFriends then
				return nil
			end

			local friends: MutualFriendsJson = mutualFriends :: any

			return Cryo.List.foldLeft(Cryo.Dictionary.keys(friends), function(acc, friendId)
				local friend = friends[friendId]
				table.insert(acc, {
					id = friendId,
					username = friend.username,
					displayName = friend.displayName,
				})

				return acc
			end, {})
		end,
		isOfflineFrequents = function(root: UserInsightsJson): boolean
			local insights = getProfileInsights(root)
			return if insights and insights.offlineFrequentsInsight then true else false
		end,
	},

	Query = {
		profilesInsights = function(_root, args, context): Promise<Array<UserInsightsJson>>
			return findProfileInsightsByUserIds(args.userIds, args.count, context.fetchImpl)
		end,
	},
}

return resolvers
