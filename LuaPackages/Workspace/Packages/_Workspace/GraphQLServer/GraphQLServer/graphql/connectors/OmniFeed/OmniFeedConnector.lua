local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
type Promise<T> = LuauPolyfill.Promise<T>
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object
local Promise = require(Packages.Promise)
local exports = {}
local fetchModule = require(Packages.Fetch)
local networkedFetch = fetchModule.fetch
local Response = fetchModule.Response
type Response = fetchModule.Response
type RequestInfo = fetchModule.RequestInfo
type RequestInit = fetchModule.RequestInit
type FetchFunction = (RequestInfo, RequestInit) -> Promise<Response>
local GraphQLError = require(Packages.GraphQL).GraphQLError

local OmniRecommendationsRequest = require(Packages.Http).Requests.OmniRecommendations

local generatedTypes = require(script.Parent.Parent.Parent.generatedTypes)
type OmniFeedMetadata = generatedTypes.OmniFeedMetadata
type OmniFeedItem = generatedTypes.OmniFeedItem
type OmniFeedRecommendation = generatedTypes.OmniFeedRecommendation
type OmniFeed = generatedTypes.OmniFeed
type QueryOmniFeedArgs = generatedTypes.QueryOmniFeedArgs

export type OmniFeedItemJson = OmniFeedItem & {
	recommendationList: Array<OmniFeedRecommendation>?,
}

export type OmniFeedMetadataRoot = {
	Game: Object?,
	CatalogAsset: Object?,
	CatalogBundle: Object?,
	RecommendedFriend: Object?,
}

export type OmniFeedJson = {
	contentMetadata: OmniFeedMetadataRoot?,
	sortsRefreshInterval: number?,
	requestId: string?,
	pageType: string?,
	sorts: Array<OmniFeedItemJson>?,
	isSessionExpired: boolean?,
	nextPageToken: string?,
}

export type OmniFeedRoot = OmniFeedJson & { omniSessionId: string? }

local function makeNetworkImpl(fetchImpl: FetchFunction)
	return function(url: string, _method: string, body: { postBody: string })
		return fetchImpl(url, {
			body = body.postBody,
			method = "POST",
			headers = {
				["Content-Type"] = "application/json",
				["Accept"] = "application/json",
			},
		})
	end
end

local function findOmniFeedBySessionId(
	omniRecommendationArgs: QueryOmniFeedArgs,
	fetchImpl_: FetchFunction
): Promise<OmniFeedRoot>
	local fetchImpl: FetchFunction = if fetchImpl_ then fetchImpl_ else networkedFetch
	local networkImpl = makeNetworkImpl(fetchImpl)

	return Promise.new(function(resolve, reject)
		local feedResponse = OmniRecommendationsRequest(
			networkImpl,
			omniRecommendationArgs.pageType,
			omniRecommendationArgs.sessionId,
			omniRecommendationArgs.nextPageToken,
			omniRecommendationArgs.supportedTreatmentTypes
		):catch(function()
			return Response.error()
		end):expect()

		if not feedResponse.ok then
			reject(
				GraphQLError.new(
					string.format("Failed to fetch omni recommendations. Error code: %d", feedResponse.status)
				)
			)
			return nil
		end

		local feedJson: OmniFeedJson = feedResponse
			:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not feedJson then
			reject(GraphQLError.new("Failed to decode HTTP response as JSON for omni-recommendation fetch"))
		end
		resolve(Object.assign({}, feedJson, { omniSessionId = omniRecommendationArgs.sessionId }))
		return nil
	end)
end

exports.findOmniFeedBySessionId = findOmniFeedBySessionId
return exports
