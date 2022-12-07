-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7fedac4071/connectors/PlayerConnector.ts
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)
local GraphQLError = require(Packages.GraphQL).GraphQLError
local fetchModule = require(Packages.Fetch)
type fetch = fetchModule.fetch
local fetch = fetchModule.fetch

local exports = {}

local function findAvatarHeadshotById(id: string, fetchImpl_: fetch?): Promise<string>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local url = string.format(
			"https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=%s&size=48x48&format=Png&isCircular=true",
			id
		)

		local avatarResponse = fetchImpl(url, {
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
