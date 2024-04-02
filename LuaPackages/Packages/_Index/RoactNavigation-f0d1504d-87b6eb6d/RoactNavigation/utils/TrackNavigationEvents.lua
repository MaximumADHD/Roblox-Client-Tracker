local root = script.Parent.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local NavigationEvents = require(root.views.NavigationEvents)
local Events = require(root.Events)
local invariant = require(script.Parent.invariant)
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
	for _, navigationEvent in self.navigationEvents do
		print(navigationEvent)
	end
end

function TrackNavigationEvents:waitForNumberEventsMaxWaitTime(numberOfEvents, maxWaitTimeInSeconds)
	local secondsWaitedFor = 0
	while #self.navigationEvents < numberOfEvents and secondsWaitedFor <= maxWaitTimeInSeconds do
		ReactRoblox.act(function()
			secondsWaitedFor += task.wait()
		end)
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
	for propName, event in propNameToEvent do
		props[propName] = function()
			PageNavigationEvent.new(pageName, event)
			table.insert(self.navigationEvents, PageNavigationEvent.new(pageName, event))
		end
	end

	return React.createElement(NavigationEvents, props)
end

function TrackNavigationEvents:equalTo(pageNavigationEventList)
	invariant(type(pageNavigationEventList) == "table", "should be a list")
	local numberOfEvents = #self.navigationEvents

	if numberOfEvents ~= #pageNavigationEventList then
		return false, "different amount of events"
	end

	for i = 1, numberOfEvents do
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
			selfEvents = ("{\n  %s,\n}"):format(table.concat(Array.map(self.navigationEvents, tostring), ",\n  "))
		end
		if #pageNavigationEventList > 0 then
			expectedEvents = ("{\n  %s,\n}"):format(table.concat(Array.map(pageNavigationEventList, tostring), ",\n  "))
		end

		error(("%s\nGot events: %s\n\nExpected events: %s"):format(message, selfEvents, expectedEvents))
	end
end

return TrackNavigationEvents
