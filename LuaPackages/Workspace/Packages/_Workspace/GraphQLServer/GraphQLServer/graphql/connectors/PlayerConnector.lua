-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7fedac4071/connectors/PlayerConnector.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)
local GraphQLError = require(Packages.GraphQL).GraphQLError
local fetchModule = require(Packages.Fetch)
type fetch = fetchModule.fetch
local fetch = fetchModule.fetch
local UrlBuilder = require(Packages.UrlBuilder).UrlBuilder
local UrlBase = require(Packages.UrlBuilder).UrlBase

local exports = {}
local thumbnailsUrlPattern = UrlBuilder.new({
	base = UrlBase.new("thumbnails", 1),
	path = "users/avatar-headshot",
	query = {
		userIds = "{userIds}",
		size = "48x48",
		format = "Png",
		isCircular = "true",
	},
})

local function findAvatarHeadshotById(id: string, fetchImpl_: fetch?): Promise<string>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local thumbnailsUrl = thumbnailsUrlPattern({
			userIds = id,
		})

		local avatarResponse = fetchImpl(thumbnailsUrl, {
			method = "GET",
		}):expect()

		if not avatarResponse.ok then
			reject(
				GraphQLError.new(
					string.format("Http error occurred while trying to fetch avatarHeadshot for user %s.", id)
				)
			)
			return
		end

		local avatarJson = avatarResponse
			:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not avatarJson then
			reject(GraphQLError.new(string.format("Failed to parse avatarHeadshot HttpResponse for user %s.", id)))
			return
		end

		resolve(avatarJson.data[1].imageUrl)
		return
	end)
end
exports.findAvatarHeadshotById = findAvatarHeadshotById
return exports
