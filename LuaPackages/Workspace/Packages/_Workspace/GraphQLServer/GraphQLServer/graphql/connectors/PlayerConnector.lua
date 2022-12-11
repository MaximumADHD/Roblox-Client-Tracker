-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/7fedac4071/connectors/PlayerConnector.ts
local HttpService = game:GetService("HttpService")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
local Promise = require(Packages.Promise)
local GraphQLError = require(Packages.GraphQL).GraphQLError
local exports = {}

local function findAvatarHeadshotById(id: string): Promise<string>
	return Promise.new(function(resolve, reject)
		local url = string.format(
			"https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=%s&size=48x48&format=Png&isCircular=true",
			id
		)
		local Request = HttpService:RequestInternal({
			Url = url,
			Method = "GET",
		}) :: HttpRequest

		Request:Start(function(success, response)
			if not success then
				reject(
					GraphQLError.new(
						string.format("Http error occurred while trying to fetch avatarHeadshot for user %s.", id)
					)
				)
				return
			end

			local avatarResponse = response.Body
			local ok, avatarJson = pcall(function()
				return HttpService:JSONDecode(avatarResponse)
			end)

			if not ok then
				reject(GraphQLError.new(string.format("Failed to parse avatarHeadshot HttpResponse for user %s.", id)))
				return
			end

			if
				type(avatarJson.data) ~= "table"
				or type(avatarJson.data[1]) ~= "table"
				or type(avatarJson.data[1].imageUrl) ~= "string"
			then
				reject(GraphQLError.new(string.format("Failed to find avatarHeadshot for user matching id: %s.", id)))
				return
			end

			resolve(avatarJson.data[1].imageUrl)
			return
		end)
	end)
end
exports.findAvatarHeadshotById = findAvatarHeadshotById
return exports
