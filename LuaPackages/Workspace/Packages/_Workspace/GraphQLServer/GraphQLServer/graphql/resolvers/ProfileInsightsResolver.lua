local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local HttpService = game:GetService("HttpService")

local Cryo = require(Packages.Cryo)

local generatedTypes = require(script.Parent.Parent.generatedTypes)
type MutualFriend = generatedTypes.MutualFriend

local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>

local ProfileInsightsConnector = require(script.Parent.Parent.connectors.ProfileInsightsConnector)
local findProfileInsightsByUserIds = ProfileInsightsConnector.findProfileInsightsByUserIds
local findProfileInsightsByUserIdsFeed = ProfileInsightsConnector.findProfileInsightsByUserIdsFeed
local findProfileInsightsByUserIdsTEMP = ProfileInsightsConnector.findProfileInsightsByUserIdsTEMP

type ProfileInsightsPage = ProfileInsightsConnector.ProfileInsightsPage
type UserInsightsJson = ProfileInsightsConnector.UserInsightsJson
type InsightsJson = ProfileInsightsConnector.InsightsJson
type MutualFriendsJson = ProfileInsightsConnector.MutualFriendsJson

local getFFlagApolloClientFetchPIFeedConnector = require(Packages.SharedFlags).getFFlagApolloClientFetchPIFeedConnector

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
				else {}
			if not mutualFriends then
				return {}
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

			local offlineFrequentsInsight = insights and insights.offlineFrequentsInsight or nil
			return if offlineFrequentsInsight and offlineFrequentsInsight.havePlayedTogether then true else false
		end,
	},

	ProfileInsightsPages = {
		id = function(root)
			return if root.pageId then root.pageId else HttpService:GenerateGUID(false)
		end,
		profileInsights = function(root)
			return root.profileInsights
		end,
	},

	Query = {
		profilesInsights = function(_root, args, context): Promise<ProfileInsightsPage>
			return if getFFlagApolloClientFetchPIFeedConnector()
				then findProfileInsightsByUserIdsFeed(args.userIds, args.count, args.pageId, context.fetchImpl)
				else findProfileInsightsByUserIds(args.userIds, args.count, args.pageId, context.fetchImpl)
		end,
		profilesInsightsByUserIds = function(_root, args, context): Promise<Array<UserInsightsJson>>
			return findProfileInsightsByUserIdsTEMP(args.userIds, args.count, context.fetchImpl)
		end,
	},
}

return resolvers
