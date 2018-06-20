local Immutable = require(script.Parent.Parent.Immutable)

local ServerJobsUpdateSearchFilter = require(script.Parent.Parent.Actions.ServerJobsUpdateSearchFilter)

return function(state, action)
	local serverJobsData = state or {
		jobsSearchTerm = "",
	}

	if action.type == ServerJobsUpdateSearchFilter.name then
		return Immutable.Set(serverJobsData, "jobsSearchTerm", action.searchTerm)
	end

	return serverJobsData
end