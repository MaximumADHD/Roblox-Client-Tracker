-- ROBLOX upstream: https://github.com/Roblox/lua-apps/blob/0f5173df58/connectors/UserConnector.ts
local Players = game:GetService("Players")
local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
local generatedTypes = require(script.Parent.Parent.generatedTypes)
type User = generatedTypes.User
local Promise = require(Packages.Promise)
local GraphQLError = require(Packages.GraphQL).GraphQLError
local fetch = require(Packages.Fetch).fetch
local Response = require(Packages.Fetch).Response
local exports = {}

local function findUserById(id: string): Promise<User>
	return Promise.new(function(resolve, reject)
		local userResponse = fetch(string.format("https://users.roblox.com//v1/users/%s", id), {
				method = "GET",
			})
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not userResponse.ok then
			reject(GraphQLError.new(string.format("Failed to find user matching id: %s.", id)))
			return
		end

		local userJson = userResponse
			:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not userJson then
			reject(
				GraphQLError.new(string.format("Failed to decode HTTP response as JSON for user matching id: %s.", id))
			)
			return
		end

		resolve({
			id = tostring(userJson.id),
			displayName = userJson.displayName,
		})
		return
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
