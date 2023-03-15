local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails
local GetFFlagApolloClientFetchExperiences = require(Packages.SharedFlags).GetFFlagApolloClientFetchExperiences

local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)
local mergeArrays = require(script.Parent.utils.mergeArrays)

return {
	keyFields = if GetFFlagApolloClientFetchThumbnails() then { "topicId" } else nil,
	fields = {
		recommendations = {
			read = makeDefaultReadPolicy({}),
		},
		experiences = {
			merge = if GetFFlagApolloClientFetchExperiences() then mergeArrays else nil,
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
