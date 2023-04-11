local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails
local GetFFlagApolloClientFetchExperiences = require(Packages.SharedFlags).GetFFlagApolloClientFetchExperiences
local ApolloClient = require(Packages.ApolloClient)
type FieldMergeFunction<TExisting, TIncoming> = ApolloClient.FieldMergeFunction<TExisting, TIncoming>
type Reference = ApolloClient.Reference
type FieldFunctionOptions = ApolloClient.FieldFunctionOptions<any, any>

local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)

return {
	keyFields = if GetFFlagApolloClientFetchThumbnails() then { "topicId" } else nil,
	fields = {
		recommendations = {
			read = makeDefaultReadPolicy({}),
		},
		experiences = {
			merge = if GetFFlagApolloClientFetchExperiences()
				then function(_self, existing: { Reference }?, incoming: { Reference }, options: FieldFunctionOptions)
					if existing == nil then
						return incoming
					end

					local universeIds = {}
					local experiences: { Reference } = {}

					for index, experience in existing :: { Reference } do
						local universeId = options:readField("universeId", experience) :: string
						universeIds[universeId] = index
						table.insert(experiences, experience)
					end

					for _, experience in incoming do
						local universeId = options:readField("universeId", experience) :: string
						if universeIds[universeId] == nil then
							table.insert(experiences, experience)
						else
							local index = universeIds[universeId]
							experiences[index] = experience
						end
					end

					return experiences
				end :: FieldMergeFunction<{ Reference }, { Reference }>
				else nil,
		},
		hasMoreRows = {
			read = if GetFFlagApolloClientFetchExperiences()
				then function(_self, _existing, options)
					local experiencesRef = options:readField("experiences")
					local recommendationsRef = options:readField("recommendations")

					if recommendationsRef == nil then
						-- If there are no recommendations, there are no more rows
						return false
					end

					if experiencesRef == nil then
						-- If there are no experiences but there are recommendations, there are more rows
						return #recommendationsRef > 0
					end

					--[[
						If there are fewer experiences than recommendations, there are still more rows to fetch.
						If there are at least as many experiences as recommendations, then we know that we've
						fetched all of the experiences. Experiences are only added to the apollo client
						cache when there is a corresponding recommendation, so we don't need to loop over all
						of the recommendations and check for an experience match.
					]]
					return #experiencesRef < #recommendationsRef
				end
				else nil,
		},
	},
}
