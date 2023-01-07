local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local llama = dependencies.llama

local OmniTypes = require(PYMKCarousel.Common.OmniTypes)
local getRecommendationsMetadata = require(script.Parent.getRecommendationsMetadata)

export type Action = (
	recommendation: OmniTypes.FriendRecommendation,
	index: number,
	metadata: OmniTypes.RecommendationMetadata
) -> any

export type BulkAction = (
	recommendationsSort: OmniTypes.RecommendationsSort?,
	recommendationsMetadata: OmniTypes.RecommendationsMetadata?
) -> any

local getRecommendationsSort =
	function(pagecontent: OmniTypes.OmniRecommendationsPage, PYMKTreatmentType: string): OmniTypes.RecommendationsSort?
		local sorts = pagecontent.sorts or {} :: { [number]: OmniTypes.RecommendationsSort }
		local recommendationsSortIndex: number = llama.List.findWhere(sorts, function(sort)
			return sort.treatmentType == PYMKTreatmentType
		end)
		return if recommendationsSortIndex then sorts[recommendationsSortIndex] else nil
	end

return function(
	omniRecommendations: OmniTypes.OmniRecommendations,
	config: OmniTypes.Config,
	action: Action?,
	bulkAction: BulkAction?
)
	local newActions = {}
	local PYMKContentType = config.contentType
	local PYMKTreatmentType = config.treatmentType

	for _pagename, pagecontent in pairs(omniRecommendations) do
		local recommendationsMetadata = getRecommendationsMetadata(pagecontent, PYMKContentType)
		local recommendationsSort = getRecommendationsSort(pagecontent, PYMKTreatmentType)
		local recommendations = if recommendationsSort then recommendationsSort.recommendations else {}

		if bulkAction then
			newActions = llama.List.push(newActions, bulkAction(recommendationsSort, recommendationsMetadata))
		end

		newActions = llama.List.reduce(recommendations, function(friendsActions, recommendationContent, index)
			local recommendationId = tostring(recommendationContent.contentId)
			local recommendation = recommendationsMetadata[recommendationId]
			local recommendationMetadata = recommendationContent.contentMetadata

			if not recommendation then
				return friendsActions
			end

			if action then
				return llama.List.push(friendsActions, action(recommendation, index, recommendationMetadata))
			else
				return friendsActions
			end
		end, newActions)
	end

	return newActions
end
