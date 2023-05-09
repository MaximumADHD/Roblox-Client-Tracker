local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local ApolloClient = require(Packages.ApolloClient)

local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails
local getFFlagProfileMutualFriendsListFetch = require(Packages.SharedFlags).getFFlagProfileMutualFriendsListFetch

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
		profilesInsightsByUserIds = {
			read = if getFFlagProfileMutualFriendsListFetch()
				then function(_self, _existing, options): { ApolloClient.Reference }?
					local cachedObjects = {}

					for _, id in pairs(options.args.userIds) do
						local cachedObject = options:toReference({
							__typename = "ProfileInsights",
							targetUserId = id,
						})
						table.insert(cachedObjects, cachedObject)

						--* force to run query for all ids (apollo bug)
						-- https://github.com/apollographql/apollo-client/issues/9063
						local existInCache = options:canRead(cachedObject)
						if not existInCache then
							return nil
						end
					end

					return cachedObjects
				end
				else nil,
		},
	},
}
