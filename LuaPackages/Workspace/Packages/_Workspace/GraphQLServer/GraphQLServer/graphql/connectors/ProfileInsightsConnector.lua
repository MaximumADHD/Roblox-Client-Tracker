local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local HttpService = game:GetService("HttpService")

local UrlBuilder = require(Packages.UrlBuilder).UrlBuilder
local UrlBase = require(Packages.UrlBuilder).UrlBase
local Promise = require(Packages.Promise)
local GraphQLError = require(Packages.GraphQL).GraphQLError
local Response = require(Packages.Fetch).Response
local fetchModule = require(Packages.Fetch)
local fetch = fetchModule.fetch
type fetch = fetchModule.fetch

local LuauPolyfill = require(Packages.LuauPolyfill)
type Promise<T> = LuauPolyfill.Promise<T>
type Array<T> = LuauPolyfill.Array<T>
local generatedTypes = require(script.Parent.Parent.generatedTypes)
type ProfileInsights = generatedTypes.ProfileInsights

local profileInsightsUrlPattern = UrlBuilder.new({
	base = UrlBase.APIS,
	path = "profile-insights-api/v1/multiProfileInsights",
})

type MutualFriendJson = {
	username: string,
	displayName: string,
}

export type MutualFriendsJson = {
	[string]: MutualFriendJson,
}

export type InsightsJson = {
	mutualFriendInsight: {
		mutualFriends: MutualFriendsJson,
	}?,
	offlineFrequentsInsight: boolean?,
	friendRequestOriginInsight: any?,
}

export type UserInsightsJson = {
	targetUser: string,
	profileInsights: { InsightsJson },
}

type ProfileInsightsJson = {
	userInsights: { UserInsightsJson },
}

--* at the moment we support only 2 types of profile insights
local DEFAULT_COUNT = 2

local function findProfileInsightsByUserIds(
	ids: { string },
	count: number?,
	fetchImpl_: fetch?
): Promise<Array<UserInsightsJson>>
	local fetchImpl: fetch = if fetchImpl_ then fetchImpl_ else fetch

	return Promise.new(function(resolve, reject)
		local profileInsightsResponse = fetchImpl(profileInsightsUrlPattern(), {
				body = HttpService:JSONEncode({
					userIds = ids,
					count = count or DEFAULT_COUNT,
				}),
				method = "POST",
				headers = {
					["Content-Type"] = "application/json",
					["Accept"] = "application/json",
				},
			})
			:catch(function()
				return Response.error()
			end)
			:expect()

		if not profileInsightsResponse.ok then
			reject(
				GraphQLError.new(
					string.format("Failed to fetch profile insights. Error code: %d", profileInsightsResponse.status)
				)
			)
			return
		end

		local profileInsightsJson: ProfileInsightsJson = profileInsightsResponse
			:json()
			:catch(function()
				return nil
			end)
			:expect()

		if not profileInsightsJson then
			reject(
				GraphQLError.new(
					string.format(
						"Failed to decode HTTP response as JSON for profile insights: %s.",
						HttpService:JSONEncode(ids)
					)
				)
			)
			return
		end

		resolve(profileInsightsJson.userInsights)
		return
	end)
end

return {
	findProfileInsightsByUserIds = findProfileInsightsByUserIds,
}
