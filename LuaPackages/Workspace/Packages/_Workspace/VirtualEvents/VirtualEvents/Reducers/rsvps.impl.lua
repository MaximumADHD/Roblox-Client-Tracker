local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Rodux = require(VirtualEvents.Parent.Rodux)
local Cryo = require(VirtualEvents.Parent.Cryo)
local NetworkingVirtualEvents = require(VirtualEvents.Parent.NetworkingVirtualEvents)

type PageState = {
	nextPageCursor: string,
	prevPageCursor: string,
}

type CountersState = {
	[string]: NetworkingVirtualEvents.RsvpCounters,
}

type ByVirtualEventIdState = {
	[string]: {
		[string]: {
			userId: number,
			rsvpStatus: NetworkingVirtualEvents.RsvpStatus,
		},
	},
}

export type State = {
	page: PageState,
	counters: CountersState,
	byVirtualEventId: ByVirtualEventIdState,
}

return function(NetworkingVirtualEvents: any, Players: Players)
	local page = Rodux.createReducer({
		nextPageCursor = nil,
		prevPageCursor = nil,
	}, {
		[NetworkingVirtualEvents.GetVirtualEventRsvps.Succeeded.name] = function(state: State, action: any)
			return {
				nextPageCursor = action.responseBody.nextPageCursor,
				prevPageCursor = action.responseBody.prevPageCursor,
			}
		end,
	})

	local counters = Rodux.createReducer({}, {
		[NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Succeeded.name] = function(state: State, action: any)
			local virtualEventId = action.ids[1]

			return Cryo.Dictionary.join(state, {
				[virtualEventId] = action.responseBody.counters,
			})
		end,

		[NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Failed.name] = function(state: State, action: any)
			return state
		end,
	})

	local byVirtualEventId = Rodux.createReducer({}, {
		[NetworkingVirtualEvents.GetVirtualEventRsvps.Succeeded.name] = function(state: State, action: any)
			local virtualEventId = action.ids[1]

			local newState: { [string]: NetworkingVirtualEvents.RsvpResponse } = {}
			for _, rsvp: NetworkingVirtualEvents.RsvpResponse in action.responseBody.data do
				newState[tostring(rsvp.userId)] = rsvp
			end

			return Cryo.Dictionary.join(state, {
				[virtualEventId] = Cryo.Dictionary.join(state[virtualEventId] or {}, newState),
			})
		end,

		[NetworkingVirtualEvents.GetVirtualEventRsvps.Failed.name] = function(state: State, _action: any)
			return state
		end,

		[NetworkingVirtualEvents.UpdateMyRsvpStatus.Succeeded.name] = function(state: State, action: any)
			local virtualEventId = action.ids[1]
			local clientId = if Players.LocalPlayer then Players.LocalPlayer.UserId else -1

			local newState = {
				[tostring(clientId)] = {
					userId = clientId,
					rsvpStatus = action.postBody.rsvpStatus,
				},
			}

			return Cryo.Dictionary.join(state, {
				[virtualEventId] = Cryo.Dictionary.join(state[virtualEventId] or {}, newState),
			})
		end,

		[NetworkingVirtualEvents.UpdateMyRsvpStatus.Failed.name] = function(state: State, _action: any)
			return state
		end,
	})

	local rsvps = Rodux.combineReducers({
		page = page,
		counters = counters,
		byVirtualEventId = byVirtualEventId,
	})

	return rsvps
end
