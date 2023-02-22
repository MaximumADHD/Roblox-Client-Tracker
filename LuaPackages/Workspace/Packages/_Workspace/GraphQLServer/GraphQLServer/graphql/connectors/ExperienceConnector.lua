local GraphQLServer = script:FindFirstAncestor("GraphQLServer")

local LuauPolyfill = require(GraphQLServer.Parent.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
local generatedTypes = require(GraphQLServer.graphql.generatedTypes)
type ExperienceDetails = generatedTypes.ExperienceDetails
type ExperienceMedia = generatedTypes.ExperienceMedia
type Media = generatedTypes.Media
local Promise = require(GraphQLServer.Parent.Promise)
local GraphQLError = require(GraphQLServer.Parent.GraphQL).GraphQLError
local fetchModule = require(GraphQLServer.Parent.Fetch)
local fetch = fetchModule.fetch
type fetch = fetchModule.fetch
local Response = fetchModule.Response
local UrlBuilder = require(GraphQLServer.Parent.UrlBuilder).UrlBuilder
local UrlBase = require(GraphQLServer.Parent.UrlBuilder).UrlBase

local exports = {}

local experienceDetailsPattern = UrlBuilder.fromString("games:games?universeIds={universeIds}")
local experienceMediaPattern = UrlBuilder.new({
	base = UrlBase.new("games", 2),
	path = "games/{universeId}/media",
})

local function findExperienceDetailsByUniverseId(universeId: string, fetchImpl_: fetch?): Promise<ExperienceDetails>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = experienceDetailsPattern({ universeIds = universeId })
		local res = fetchImpl(url, { method = "GET" })
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(GraphQLError.new(string.format("Failed to find experience for universeId: %s.", universeId)))
			return
		end

		local json = res:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not json then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for experience with universeId: %s.",
						universeId
					)
				)
			)
			return
		end

		resolve(json.data[1])
		return
	end)
end
exports.findExperienceDetailsByUniverseId = findExperienceDetailsByUniverseId

local function findExperienceMediaByUniverseId(universeId: string, fetchImpl_: fetch?): Promise<ExperienceMedia>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = experienceMediaPattern({ universeId = universeId })
		local res = fetchImpl(url, { method = "GET" })
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(GraphQLError.new(string.format("Failed to find experience media for universeId: %s.", universeId)))
			return
		end

		local json = res:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not json then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for experience media for universeId: %s.",
						universeId
					)
				)
			)
			return
		end

		resolve(json.data)
		return
	end)
end
exports.findExperienceMediaByUniverseId = findExperienceMediaByUniverseId

local thumbnailsPattern = UrlBuilder.new({
	base = UrlBase.new("thumbnails", 1),
	path = "games/icons",
	query = "universeIds={universeIds}&format={format}&size={size}",
})
local DEFAULT_ICON_SIZE = "150x150"

local function batchFetchThumbnailsByUniverseId(universeIdList: { string }, fetchImpl_: fetch?): Promise<Array<Media>>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local universeIds = table.concat(universeIdList, ",")
		local url = thumbnailsPattern({
			universeIds = universeIds,
			size = DEFAULT_ICON_SIZE,
			format = "png",
		})
		local res = fetchImpl(url, { method = "GET" })
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not res.ok then
			reject(GraphQLError.new(string.format("Failed to find thumbnails for ids: %s.", universeIds)))
			return nil
		end

		local json = res:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not json then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for thumbnails for universeIds: %s.",
						universeIds
					)
				)
			)
			return nil
		end
		resolve(json.data)
		return nil
	end)
end

exports.batchFetchThumbnailsByUniverseId = batchFetchThumbnailsByUniverseId

return exports
