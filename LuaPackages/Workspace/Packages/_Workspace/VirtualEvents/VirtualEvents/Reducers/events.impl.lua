local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Rodux = require(VirtualEvents.Parent.Rodux)
local Cryo = require(VirtualEvents.Parent.Cryo)
local types = require(VirtualEvents.types)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local logger = require(VirtualEvents.logger)

export type State = {
	[string]: types.VirtualEvent,
}

return function(NetworkingVirtualEvents)
	local events = Rodux.createReducer({}, {
		[NetworkingVirtualEvents.GetActiveVirtualEvents.Succeeded.name] = function(_state: State, action: any)
			local newState: State = {}

			for _, res: types.VirtualEventResponse in action.responseBody.data do
				local virtualEvent = VirtualEventModel.fromResponse(res)

				if virtualEvent then
					if virtualEvent.eventTime.startTime and virtualEvent.eventTime.endTime then
						newState[res.id] = virtualEvent
					else
						logger:debug("Discarding VirtualEvent with ID {} (malformed start or end time)", res.id)
					end
				end
			end

			return newState
		end,

		[NetworkingVirtualEvents.GetActiveVirtualEvents.Failed.name] = function(_state: State, _action: any)
			return {}
		end,

		[NetworkingVirtualEvents.GetVirtualEvent.Succeeded.name] = function(state: State, action: any)
			local newState: State = {}
			local virtualEvent = VirtualEventModel.fromResponse(action.responseBody)

			if virtualEvent then
				newState[virtualEvent.id] = virtualEvent
			end

			return Cryo.Dictionary.join(state, newState)
		end,

		[NetworkingVirtualEvents.GetVirtualEvent.Failed.name] = function(state: State, action: any)
			return state
		end,

		[NetworkingVirtualEvents.UpdateMyRsvpStatus.Succeeded.name] = function(state: State, action: any)
			local virtualEventId = action.ids[1]
			local virtualEvent = state[virtualEventId]

			if virtualEvent then
				return Cryo.Dictionary.join(state, {
					[virtualEventId] = Cryo.Dictionary.join(virtualEvent, {
						userRsvpStatus = action.postBody.rsvpStatus,
					}),
				})
			else
				return state
			end
		end,
	})

	return events
end
