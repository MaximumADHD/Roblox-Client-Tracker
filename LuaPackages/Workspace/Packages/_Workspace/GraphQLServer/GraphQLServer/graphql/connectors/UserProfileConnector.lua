local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local GraphQLServer = script:FindFirstAncestor("GraphQLServer")
local Packages = GraphQLServer.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local UrlBuilderPackage = require(Packages.UrlBuilder)
local Promise = require(Packages.Promise)
local fetchModule = require(Packages.Fetch)

local UrlBuilder = UrlBuilderPackage.UrlBuilder
-- TODO FSYS-502: Change this back to UrlBase.APIS when apis.roblox.com is back up
-- local UrlBase = UrlBuilderPackage.UrlBase

local GraphQLError = require(Packages.GraphQL).GraphQLError
local fetch = fetchModule.fetch
type fetch = fetchModule.fetch
local Response = fetchModule.Response
local generatedTypes = require(script.Parent.Parent.generatedTypes)

type Promise<T> = LuauPolyfill.Promise<T>
type Array<T> = LuauPolyfill.Array<T>
type UserProfile = generatedTypes.UserProfile

export type FetchProfilesByIdsResponse = Promise<Array<UserProfile>>

-- TODO FSYS-502: Change this back to UrlBase.APIS when apis.roblox.com is back up
local profileUrlPattern = UrlBuilder.new({
	base = "https://apis.simulprod.com/",
	path = "user-profile-api/v1/user/profiles/get-profiles",
})

local URL = profileUrlPattern()

local function fetchProfilesByIds(
	userIds: { string },
	fields: { string },
	fetchImpl_: fetch?
): Promise<Array<UserProfile>>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch
	return Promise.new(function(resolve, reject)
		local profileResponse = fetchImpl(URL, {
				body = HttpService:JSONEncode({
					UserIds = userIds,
					Fields = fields,
				}),
				method = "POST",
				headers = {
					["Content-Type"] = "application/json",
					["Accept"] = "application/json",
					-- TODO FSYS-502: Remove this field when using apis.roblox.com
					["robloxctx-authenticated-userid"] = if Players and Players.LocalPlayer
						then tostring(Players.LocalPlayer.UserId)
						else "",
				},
			})
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not profileResponse.ok then
			reject(GraphQLError.new(`Failed to fetch user profiles. Error code: {profileResponse.status}`))
			return
		end

		local userJson = profileResponse
			:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not profileResponse then
			reject(GraphQLError.new(`Failed to decode HTTP response as JSON for user matching id: {userIds[1]}`))
			return
		end
		resolve(userJson.profileDetails)
		return
	end)
end

return {
	fetchProfilesByIds = fetchProfilesByIds,
}
