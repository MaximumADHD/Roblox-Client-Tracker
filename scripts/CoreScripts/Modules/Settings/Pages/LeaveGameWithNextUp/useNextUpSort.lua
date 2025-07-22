--!strict

local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local requestInternalWrapper = require(CorePackages.Workspace.Packages.Http).NetworkLayers.requestInternalWrapper
local MakeOmniRecommendationsRequest =
	require(CorePackages.Workspace.Packages.GraphQlShared).MakeOmniRecommendationsRequest
local React = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local Promise = require(CorePackages.Packages.Promise)
local Telemetry = require(script.Parent.Telemetry)

local networkImpl = requestInternalWrapper(nil)

local PAGE_CONTEXT = "InGameExitModal"
local REQUEST_INTENT = "gameExitRecommendation"
local FStringInGameExitModalNextUpUiSortTopicId =
	game:DefineFastString("InGameExitModalNextUpUiSortTopicId", "100000014")
local MIN_TILES = 4

export type SortEntry = {
	uiIndex: number,

	universeId: string,
	placeId: string,
	name: string,
	image: string,

	upVotes: number,
	downVotes: number,

	layoutDataBySort: { [string]: any },

	isSponsored: boolean?,
	adId: string?,
}

local function metadataToSortEntry(topicId: number, index: number, metadata: { [any]: any }): SortEntry?
	local layoutData = (metadata.layoutDataBySort or {})[topicId] or {}
	local primaryMediaAsset = layoutData.primaryMediaAsset or {}
	local wideImageAssetId = primaryMediaAsset.wideImageAssetId
	local url = if wideImageAssetId and wideImageAssetId ~= "0"
		then `rbxthumb://type=Asset&id={wideImageAssetId}&w=384&h=216`
		else `rbxthumb://type=GameThumbnail&id={metadata.rootPlaceId}&w=384&h=216`

	return {
		uiIndex = index,

		universeId = tostring(metadata.universeId),
		placeId = tostring(metadata.rootPlaceId),
		name = metadata.name,
		image = url,

		upVotes = metadata.totalUpVotes,
		downVotes = metadata.totalDownVotes,

		layoutDataBySort = metadata.layoutDataBySort or {},
	}
end

type ParsedOmniData = {
	entries: { SortEntry },
	topicId: string,
}

local recommendationSchema = t.interface({
	contentType = t.string,
	contentId = t.number,
})

local experienceMetadataSchema = t.interface({
	name = t.string,
	universeId = t.number,
	rootPlaceId = t.number,
	totalUpVotes = t.number,
	totalDownVotes = t.number,
	layoutDataBySort = t.optional(t.table),
})

local function parseSortEntries(sort, gameMetadata): { SortEntry }
	local entries: { SortEntry } = {}
	for index, recommendation in sort.recommendationList do
		if not recommendationSchema(recommendation) then
			continue
		end

		if recommendation.contentType ~= "Game" then
			continue
		end

		local contentId = recommendation.contentId
		local metadata = gameMetadata[tostring(contentId)]
		if not experienceMetadataSchema(metadata) then
			continue
		end

		local tileData = metadataToSortEntry(sort.topicId, #entries + 1, metadata)
		if not tileData then
			continue
		end

		table.insert(entries, tileData)
	end

	return entries
end

local omniResponseSchema = t.interface({
	responseBody = t.interface({
		sorts = t.table,
		contentMetadata = t.interface({
			Game = t.table,
		}),
	}),
	responseTimeMs = t.number,
})

local sortSchema = t.interface({
	topicId = t.number,
	recommendationList = t.table,
})

local function parseOmniResponse(response): ParsedOmniData?
	if not omniResponseSchema(response) then
		return nil
	end

	Telemetry.logRequestLatency("discovery-api/omni-recommendation", response.responseTimeMs)

	local data = response.responseBody
	local sorts = data.sorts
	local gameMetadata = data.contentMetadata and data.contentMetadata.Game or nil
	for sortIndex, sort in sorts do
		if not sortSchema(sort) then
			continue
		end

		if tostring(sort.topicId) ~= FStringInGameExitModalNextUpUiSortTopicId then
			continue
		end

		return {
			entries = parseSortEntries(sort, gameMetadata),
			topicId = tostring(sort.topicId),
		}
	end

	return nil
end

return function(): { loading: boolean, data: ParsedOmniData? }
	local parsedOmniResponse: ParsedOmniData?, setParsedOmniResponse: (ParsedOmniData?) -> () =
		React.useState(nil :: ParsedOmniData?)
	local loading, setLoading = React.useState(false)

	React.useEffect(function()
		setLoading(true)
		setParsedOmniResponse(nil)

		local promise = Promise.new(function(resolve, reject, onCancel)
			local omniRequestPromise = MakeOmniRecommendationsRequest(
				networkImpl :: any,
				PAGE_CONTEXT,
				HttpService:GenerateGUID(false):lower(),
				nil,
				{ "Carousel", "SortlessGrid" },
				REQUEST_INTENT,
				{ FStringInGameExitModalNextUpUiSortTopicId },
				nil
			)

			onCancel(function()
				omniRequestPromise:cancel()
			end)

			omniRequestPromise
				:andThen(function(response)
					local parsedResponse = parseOmniResponse(response)
					if not parsedResponse then
						return
					end

					if #parsedResponse.entries < MIN_TILES then
						return
					end

					setParsedOmniResponse(parsedResponse)
				end, function(err)
					-- do nothing on failure
				end)
				:finally(function()
					setLoading(false)
				end)
		end)

		return function()
			promise:cancel()
		end
	end, {})

	return {
		data = parsedOmniResponse,
		loading = loading,
	}
end
