local root = script.Parent.Parent
local Packages = root.Parent
local Cryo = require(Packages.Cryo)
local Roact = require(Packages.Roact)
local NavigationEvents = require(root.views.NavigationEvents)
local Events = require(root.Events)
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

local propNameToEvent = {
	onWillFocus = Events.WillFocus,
	onDidFocus = Events.DidFocus,
	onWillBlur = Events.WillBlur,
	onDidBlur = Events.DidBlur,
}

function TrackNavigationEvents:createNavigationAdapter(pageName)
	local props = {}
	for propName, event in pairs(propNameToEvent) do
		props[propName] = function()
			PageNavigationEvent.new(pageName, event)
			table.insert(self.navigationEvents, PageNavigationEvent.new(pageName, event))
		end
	end

	return Roact.createElement(NavigationEvents, props)
end

function TrackNavigationEvents:equalTo(pageNavigationEventList)
	validate(typeof(pageNavigationEventList) == "table", "should be a list")
	local numberOfEvents = #self.navigationEvents

	if numberOfEvents ~= #pageNavigationEventList then
		return false, "different amount of events"
	end

	for i=1, numberOfEvents do
		if not self.navigationEvents[i]:equalTo(pageNavigationEventList[i]) then
			return false, ("events at position %d do not match"):format(i)
		end
	end

	return true
end

function TrackNavigationEvents:expect(pageNavigationEventList)
	local result, message = self:equalTo(pageNavigationEventList)

	if not result then
		local selfEvents = "{}"
		local expectedEvents = "{}"

		if #self.navigationEvents > 0 then
			selfEvents = ("{\n  %s,\n}"):format(
				table.concat(
					Cryo.List.map(self.navigationEvents, tostring),
					',\n  '
				)
			)
		end
		if #pageNavigationEventList > 0 then
			expectedEvents = ("{\n  %s,\n}"):format(
				table.concat(
					Cryo.List.map(pageNavigationEventList, tostring),
					',\n  '
				)
			)
		end

		error(("%s\nGot events: %s\n\nExpected events: %s"):format(
			message,
			selfEvents,
			expectedEvents
		))
	end
end

return TrackNavigationEvents
