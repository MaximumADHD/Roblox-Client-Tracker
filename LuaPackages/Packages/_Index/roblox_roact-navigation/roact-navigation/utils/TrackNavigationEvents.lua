local Roact = require(script.Parent.Parent.Parent.Roact)
local RoactNavigation = require(script.Parent.Parent)
local NavigationEventsAdapter = require(script.Parent.Parent.views.NavigationEventsAdapter)
local validate = require(script.Parent.validate)
local PageNavigationEvent = require(script.Parent.PageNavigationEvent)

local TrackNavigationEvents = {}
TrackNavigationEvents.__index = TrackNavigationEvents

function TrackNavigationEvents.new()
	local self = {
		navigationEvents = {},
	}

	setmetatable(self, TrackNavigationEvents)

	return self
end

function TrackNavigationEvents:getNavigationEvents()
	return self.navigationEvents
end

function TrackNavigationEvents:printNavigationEvents()
	print("Total Events: ", #self.navigationEvents)
	for _, navigationEvent in ipairs(self.navigationEvents) do
		print(navigationEvent)
	end
end

function TrackNavigationEvents:waitForNumberEventsMaxWaitTime(numberOfEvents, maxWaitTimeInSeconds)
	local secondsWaitedFor = 0
	local waitDurationPerIteration = 0.33
	while #self.navigationEvents < numberOfEvents
		and secondsWaitedFor <= maxWaitTimeInSeconds
	do
		wait(waitDurationPerIteration)
		-- print("waiting for number of events to reach:", numberOfEvents, "waited for:", secondsWaitedFor)
		secondsWaitedFor = secondsWaitedFor + waitDurationPerIteration
	end
end

function TrackNavigationEvents:resetNavigationEvents()
	self.navigationEvents = {}
end

function TrackNavigationEvents:createNavigationAdapter(pageName, components)
	local events = {}
	for _, event in pairs(RoactNavigation.Events) do
		events[event] = function()
			PageNavigationEvent.new(pageName, event)
			table.insert(self.navigationEvents, PageNavigationEvent.new(pageName, event))
		end
	end

	return Roact.createElement(NavigationEventsAdapter, events, components)
end

function TrackNavigationEvents:equalTo(pageNavigationEventList)
	validate(typeof(pageNavigationEventList) == "table", "should be a list")
	local numberOfEvents = #self.navigationEvents
	local equal =  numberOfEvents == #pageNavigationEventList
	local eventIndex = 1
	while eventIndex <= numberOfEvents and equal do
		equal = self.navigationEvents[eventIndex]:equalTo(pageNavigationEventList[eventIndex])
		eventIndex = eventIndex + 1
	end

	return equal
end

return TrackNavigationEvents
