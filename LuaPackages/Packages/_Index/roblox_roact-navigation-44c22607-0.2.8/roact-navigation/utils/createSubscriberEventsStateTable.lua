local StateTable = require(script.Parent.Parent.Parent.StateTable)
local Events = require(script.Parent.Parent.NavigationEvents)
local validate = require(script.Parent.validate)

local WILL_FOCUS_KEY = tostring(Events.WillFocus)
local DID_FOCUS_KEY =  tostring(Events.DidFocus)
local WILL_BLUR_KEY = tostring(Events.WillBlur)
local DID_BLUR_KEY = tostring(Events.DidBlur)
local ACTION_KEY = tostring(Events.Action)
local REFOCUS_KEY = tostring(Events.Refocus)

--[[
	Provides a StateTable for sending events to user screens on screen state changes.

	Args:
		name					- Name for state table debugging.
		emit(type, payload)		- Function to emit a single raw event.
		disconnectAll()			- Function to disconnect all listeners.

	States:
		Blurred					- Screen is not visible, but was at least animated on/off before.
		Focusing				- Screen is moving to being visible.
		Focused					- Screen is visible.
		Blurring				- Screen is moving to being hidden.
		Disconnected			- Screen is no longer part of the hierarchy and will not propagate events to user.

	Accepted Event Types (always sent using Normal Events Pattern):
		NavigationEvents.WillFocus
		NavigationEvents.DidFocus
		NavigationEvents.WillBlur
		NavigationEvents.DidBlur
		NavigationEvents.Action
		NavigationEvents.Refocus	- Note that Refocus events do NOT support the pattern. Send them without adornment!

	Normal Events Pattern:
		[<Event> .. "A"]		- Received event while screen is active child and not currently transitioning.
		[<Event> .. "T"]		- Received event while screen is not active child, but is transitioning.
		[<Event> .. "AT"]		- Received event while screen is active child and currently transitioning.
		[<Event>]				- Received event while screen is not active child, and not currently transitioning.

	Special Events:
		shutdown				- Page has been removed from hierarchy, so shut down further event handling.
]]
return function(name, initialState, emit, disconnectAll)
	validate(type(name) == "string", "name must be a string")
	validate(type(initialState) == "string", "initialState must be a string")
	validate(type(emit) == "function", "emitAction must be a function")
	validate(type(disconnectAll) == "function", "disconnectAllAction must be a function")

	local function doEmit(...)
		local eventList = {...}
		return function(_, _, payload)
			for _, event in ipairs(eventList) do
				emit(event, payload)
			end
		end
	end

	return StateTable.new("SubscriberEventsTable(" .. name .. ")", initialState, nil, {
		Blurred = {
			-- If child is active and not transitioning then we jump immediately to Focused state
			-- while sending the complete event sequence.
			[WILL_FOCUS_KEY .. "A"] = {
				nextState = "Focused",
				action = doEmit(Events.WillFocus, Events.DidFocus),
			},
			[ACTION_KEY .. "A"] = {
				nextState = "Focused",
				action = doEmit(Events.WillFocus, Events.DidFocus),
			},
			-- If child is active and we're in transition, we are visibly moving to it and
			-- a completion event will fire, so move to Focusing state.
			[WILL_FOCUS_KEY .. "AT"] = {
				nextState = "Focusing",
				action = doEmit(Events.WillFocus),
			},
			[ACTION_KEY .. "AT"] = {
				nextState = "Focusing",
				action = doEmit(Events.WillFocus),
			},

			-- Shutdown event can occur after any other event, but only has teeth in blurred state.
			-- TODO: Do we need to support this from any state and broadcast all of the events that
			-- would lead it to Blurred from the screen's current state?
			shutdown = {
				nextState = "Disconnected",
				action = disconnectAll,
			},

			-- All Refocus events are simply passed through.
			[REFOCUS_KEY] = {
				action = doEmit(Events.Refocus),
			},
		},

		Focusing = {
			-- Note that DidFocus is only propagated if child is active and we're NOT transitioning, since
			-- a child that is still transitioning is not finished yet.
			[DID_FOCUS_KEY .. "A"] = {
				nextState = "Focused",
				action = doEmit(Events.DidFocus),
			},
			[ACTION_KEY .. "A"] = {
				nextState = "Focused",
				action = doEmit(Events.DidFocus),
			},
			-- It's possible to blur while still transitioning on screen due to multiple user taps. Note that
			-- in this case, this child would not be active, and navigation state obviously must still be
			-- transitioning to the new screen.
			[WILL_BLUR_KEY .. "T"] = {
				nextState = "Blurring",
				action = doEmit(Events.WillBlur),
			},

			-- All Refocus events are simply passed through.
			[REFOCUS_KEY] = {
				action = doEmit(Events.Refocus),
			},
		},
		Focused = {
			-- Any WillBlur event gets propagated, regardless of active or transitioning states.
			[WILL_BLUR_KEY] = {
				nextState = "Blurring",
				action = doEmit(Events.WillBlur),
			},
			[WILL_BLUR_KEY .. "T"] = {
				nextState = "Blurring",
				action = doEmit(Events.WillBlur),
			},
			[WILL_BLUR_KEY .. "A"] = {
				nextState = "Blurring",
				action = doEmit(Events.WillBlur),
			},
			[WILL_BLUR_KEY .. "AT"] = {
				nextState = "Blurring",
				action = doEmit(Events.WillBlur),
			},
			-- Action events drive blurring. When the screen is Focused but loses its active mark in
			-- navigation state, it becomes blurred.
			[ACTION_KEY] = {
				nextState = "Blurring",
				action = doEmit(Events.WillBlur),
			},
			[ACTION_KEY .. "T"] = {
				nextState = "Blurring",
				action = doEmit(Events.WillBlur),
			},
			-- Any Action event while screen is focused needs to be passed along to the children.
			[ACTION_KEY .. "A"] = {
				action = doEmit(Events.Action),
			},
			[ACTION_KEY .. "AT"] = {
				action = doEmit(Events.Action),
			},

			-- All Refocus events are simply passed through.
			[REFOCUS_KEY] = {
				action = doEmit(Events.Refocus),
			},
		},
		Blurring = {
			-- We're done blurring on any action event once we are not focused and no longer transitioning.
			[ACTION_KEY] = {
				nextState = "Blurred",
				action = doEmit(Events.DidBlur),
			},
			-- If parent is fully blurred, then so are we, and so are our children.
			[DID_BLUR_KEY] = {
				nextState = "Blurred",
				action = doEmit(Events.DidBlur),
			},
			[DID_BLUR_KEY .. "A"] = {
				nextState = "Blurred",
				action = doEmit(Events.DidBlur),
			},
			[DID_BLUR_KEY .. "T"] = {
				nextState = "Blurred",
				action = doEmit(Events.DidBlur),
			},
			[DID_BLUR_KEY .. "AT"] = {
				nextState = "Blurred",
				action = doEmit(Events.DidBlur),
			},
			-- Action that results in screen being active and there is no transition... We go straight back to Focused state!
			[ACTION_KEY .. "A"] = {
				nextState = "Focused",
				action = doEmit(Events.DidFocus)
			},
			-- If we become active and nav state is transitioning then user took an action to refocus this screen.
			[ACTION_KEY .. "AT"] = {
				nextState = "Focusing",
				action = doEmit(Events.WillFocus),
			},

			-- All Refocus events are simply passed through.
			[REFOCUS_KEY] = {
				action = doEmit(Events.Refocus),
			},
		},
		Disconnected = {},
	})
end
