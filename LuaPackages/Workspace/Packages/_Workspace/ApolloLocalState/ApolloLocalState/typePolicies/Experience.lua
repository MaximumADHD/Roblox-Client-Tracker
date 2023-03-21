local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local GetFFlagApolloClientFetchThumbnails = require(Packages.SharedFlags).GetFFlagApolloClientFetchThumbnails
local GetFFlagApolloClientFetchExperiences = require(Packages.SharedFlags).GetFFlagApolloClientFetchExperiences
local makeDefaultReadPolicy = require(script.Parent.utils.makeDefaultReadPolicy)

return {
	keyFields = if GetFFlagApolloClientFetchThumbnails() then { "universeId" } else nil,
	fields = {
		adId = if GetFFlagApolloClientFetchExperiences()
			then {
				read = function(_self, _existing, options)
					local universeId = options:readField("universeId")

					local recommendation = options:toReference({
						__typename = "OmniFeedRecommendation",
						contentId = universeId,
					})

					local contentMetadata = if recommendation then recommendation.contentMetadata else nil

					return if contentMetadata and contentMetadata.EncryptedAdTrackingData
						then contentMetadata.EncryptedAdTrackingData
						else ""
				end,
			}
			else nil,
		isSponsored = {
			read = if GetFFlagApolloClientFetchExperiences()
				then function(_self, _existing, options)
					local adId = options:readField("adId")
					return adId ~= nil and adId ~= ""
				end
				else nil,
		},
		thumbnails = {
			read = makeDefaultReadPolicy({}),
		},
	},
}
