local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)
local useProfileInsightsFetch = require(script.Parent.useProfileInsightsFetch)
local useMatchSearchPagination = require(script.Parent.useMatchSearchPagination)

local LocalTypes = require(UserSearch.Common.LocalTypes)
local GraphQLServerModule = require(Packages.GraphQLServer)
type ProfileInsights = GraphQLServerModule.ProfileInsights

type Props = {
	users: { LocalTypes.SearchUser },
	searchKeyword: string,
}

export type MappedProfileInsights = {
	[string]: ProfileInsights,
}

local mapProfileInsights = function(profilesInsights: { ProfileInsights }): MappedProfileInsights
	return Dash.reduce(profilesInsights, function(acc, profileInsight)
		acc[profileInsight.targetUserId] = profileInsight
		return acc
	end, {})
end

local usePaginatedProfileInsightsFetch = function(props: Props): MappedProfileInsights
	local users = props.users or {}
	local newPageUsers = useMatchSearchPagination({ users = users })

	local userIds = React.useMemo(function()
		return Dash.map(newPageUsers, function(user)
			return user.id
		end)
	end, { newPageUsers })

	local ref = useProfileInsightsFetch(userIds, props.searchKeyword)

	local profilesInsights: { ProfileInsights } = if ref.data and ref.data.profilesInsights
		then ref.data.profilesInsights.profileInsights
		else {}

	local mappedProfilesInsights = React.useMemo(function()
		return mapProfileInsights(profilesInsights)
	end, { profilesInsights })

	return mappedProfilesInsights
end

return usePaginatedProfileInsightsFetch
