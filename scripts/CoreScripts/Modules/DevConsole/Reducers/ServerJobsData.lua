local Immutable = require(script.Parent.Parent.Immutable)

local ServerJobsUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerJobsUpdateSearchFilter)

export type State = {
	jobsSearchTerm: string,
}

return function(state: State?, action: {[string]: any}): State
	local serverJobsData = state or {
		jobsSearchTerm = "",
	}

	if action.type == ServerJobsUpdateSearchFilter.name then
		return Immutable.Set(serverJobsData, "jobsSearchTerm", action.searchTerm) :: any
	end

	return serverJobsData
end
