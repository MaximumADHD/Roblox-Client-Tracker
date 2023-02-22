local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local Rodux = require(VirtualEvents.Parent.Rodux)
local withMockProviders = require(VirtualEvents.withMockProviders)
local EventNotificationsModal = require(script.Parent.EventNotificationsModal)

local INITIAL_STATE = {
	ScreenSize = Vector2.new(1280, 720),
}

local function reducer(state)
	return state
end

return {
	story = function()
		local store = Rodux.Store.new(reducer, INITIAL_STATE, {
			Rodux.thunkMiddleware,
		})

		return withMockProviders({
			EventNotificationsModal = React.createElement(EventNotificationsModal, {
				onClose = function()
					print("Closed")
				end,
				onConfirm = function()
					print("Confirmed")
				end,
			}),
		}, {
			store = store,
			mockNavigation = {
				goBack = function() end,
			},
		})
	end,
}
