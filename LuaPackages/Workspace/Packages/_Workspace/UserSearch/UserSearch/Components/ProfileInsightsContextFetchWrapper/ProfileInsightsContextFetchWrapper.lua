local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent

local React = require(Packages.React)
local usePaginatedProfileInsightsFetch = require(script.Parent.usePaginatedProfileInsightsFetch)
local LocalTypes = require(UserSearch.Common.LocalTypes)
type MappedProfileInsights = usePaginatedProfileInsightsFetch.MappedProfileInsights

type Props = {
	users: { LocalTypes.SearchUser },
	searchParameters: LocalTypes.SearchParameters,
	renderComponent: (MappedProfileInsights) -> React.Element<any>,
}

local ProfileInsightsContextFetchWrapper = function(props: Props): React.Element<any>
	local mappedProfilesInsights = usePaginatedProfileInsightsFetch({
		users = props.users or {},
		searchKeyword = props.searchParameters.searchKeyword,
	}) or {}

	return props.renderComponent(mappedProfilesInsights)
end

return ProfileInsightsContextFetchWrapper
