local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local ApolloClient = require(VirtualEvents.Parent.ApolloClient)
local Http = require(VirtualEvents.Parent.Http)

local RetrievalStatus = Http.Enum.RetrievalStatus

type AnyApolloQueryResult = ApolloClient.ApolloQueryResult<any>

--[[
	This function was created to allow us to continue using
	LoadingStateContainer in EventDetailsPageLoader. We needed a way to convert
	the network status of an Apollo query into a RetrievalStatus to retain
	parity.
]]
local function getRetrievalStatusFromApolloQuery(result: AnyApolloQueryResult)
	if result.loading then
		return RetrievalStatus.Fetching
	else
		if result.data then
			return RetrievalStatus.Done
		elseif result.error then
			return RetrievalStatus.Failed
		else
			return RetrievalStatus.NotStarted
		end
	end
end

return getRetrievalStatusFromApolloQuery
