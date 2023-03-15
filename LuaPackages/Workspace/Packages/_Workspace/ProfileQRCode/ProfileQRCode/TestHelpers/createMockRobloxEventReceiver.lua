export type RobloxEventReceiver = {
	observeEvent: (any, () -> ()) -> (),
}

return function()
	local events = {}
	local mockEventReceiver = {
		observeEvent = function(self: any, key: string, callback: (any) -> ())
			events[key] = callback
		end,
	}

	return {
		mockEventReceiver = mockEventReceiver,
		events = events,
	}
end
