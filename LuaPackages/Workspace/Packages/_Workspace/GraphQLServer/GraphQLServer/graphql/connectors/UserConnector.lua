-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/0f5173df58/connectors/UserConnector.ts
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
local generatedTypes = require(script.Parent.Parent.generatedTypes)
type User = generatedTypes.User
local Promise = require(Packages.Promise)
local GraphQLError = require(Packages.GraphQL).GraphQLError
local exports = {}

local function findUserById(id: string): Promise<User>
	return Promise.new(function(resolve, reject)
		-- ROBLOX todo: use roblox-requests fetch once it has been forked to Roblox github repo
		local url = string.format("https://users.roblox.com//v1/users/%s", id)
		local Request = HttpService:RequestInternal({
			Url = url,
			Method = "GET",
		}) :: HttpRequest

		Request:Start(function(success, response)
			if not success then
				reject(GraphQLError.new(string.format("Http error occurred while trying to fetch user %s.", id)))
				return
			end

			local user = response.Body
			local ok, userJson = pcall(function()
				return HttpService:JSONDecode(user)
			end)

			if not ok then
				reject(GraphQLError.new(string.format("Failed to parse HttpResponse for user %s.", id)))
				return
			end

			if not userJson.id or not userJson.displayName then
				reject(GraphQLError.new(string.format("Failed to find user matching id: %s.", id)))
				return
			end

			resolve({
				id = tostring(userJson.id),
				displayName = userJson.displayName,
			})
			return
		end)
	end)
end
exports.findUserById = findUserById

local function findMe(): Promise<User>
	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		return Promise.reject(GraphQLError.new("LocalPlayer not found"))
	end
	local id = (LocalPlayer :: Player).UserId
	return findUserById(tostring(id))
end
exports.findMe = findMe

return exports
