local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Rodux = require(VirtualEvents.Parent.Rodux)
local types = require(VirtualEvents.types)
local isEventValid = require(VirtualEvents.Common.isEventValid)

export type State = { types.SponsoredEvent }

return function(NetworkingSponsoredEvents)
	local events = Rodux.createReducer({}, {
		[NetworkingSponsoredEvents.GetSponsoredEvents.Succeeded.name] = function(_state: State, action: any)
			local newState: State = {}

			for _, res: types.SponsoredEventResponse in action.responseBody.data do
				local event: types.SponsoredEvent = {
					name = res.name,
					title = res.title,
					pagePath = res.pagePath,
					url = res.pagePath,
					imageUrl = res.logoImageUrl,
				}

				if isEventValid(event) then
					table.insert(newState, event)
				end
			end

			return newState
		end,

		[NetworkingSponsoredEvents.GetSponsoredEvents.Failed.name] = function(state: State, _action: any)
			return state
		end,
	})

	return events
end
