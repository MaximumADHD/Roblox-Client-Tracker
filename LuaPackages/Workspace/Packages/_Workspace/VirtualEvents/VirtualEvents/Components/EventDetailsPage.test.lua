local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local ReactTestingLibrary = require(VirtualEvents.Parent.Dev.ReactTestingLibrary)
local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local withMockProviders = require(VirtualEvents.withMockProviders)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local VirtualEventModel = NetworkingVirtualEvents.VirtualEventModel
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)
local EventDetailsPage = require(script.Parent.EventDetailsPage)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local act = ReactTestingLibrary.act
local render = ReactTestingLibrary.render

local store

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local mockExperienceMedia = ExperienceMediaModel.mock()
local mockExperienceDetails = ExperienceDetailsModel.mock()
local mockVirtualEvent = VirtualEventModel.mock("1")

beforeEach(function()
	local universeId = tostring(mockVirtualEvent.universeId)
	store = Rodux.Store.new(reducer, {
		VirtualEvents = {
			media = {
				[universeId] = { mockExperienceMedia },
			},
			experienceDetails = {
				[universeId] = mockExperienceDetails,
			},
		},
	}, {
		Rodux.thunkMiddleware,
	})

	network.NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Mock.reply({
		responseBody = {
			counters = {
				going = 10,
				notGoing = 0,
				maybeGoing = 0,
				none = 0,
			},
		},
	})

	network.NetworkingGames.GetExperienceMedia.Mock.reply({
		responseBody = {
			data = {
				mockExperienceMedia,
			},
		},
	})

	network.NetworkingGames.GetExperiencesDetails.Mock.reply({
		responseBody = {
			data = mockExperienceDetails,
		},
	})
end)

afterEach(function()
	network.NetworkingGames.GetExperienceMedia.Mock.clear()
	network.NetworkingGames.GetExperiencesDetails.Mock.clear()
	network.NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Mock.clear()

	if not getFFlagVirtualEventsGraphQL() then
		NetworkingVirtualEvents.GetVirtualEvent.Mock.clear()
	end
end)

it("should create a new mock event and render EventDetailPage", function()
	local element = withMockProviders({
		EventDetailsPage = React.createElement(EventDetailsPage, {
			virtualEvent = mockVirtualEvent,
			currentTime = DateTime.now(),
		}),
	}, {
		store = store,
	})

	local result = render(element)

	expect(result.getByText(mockVirtualEvent.title)).toBeDefined()
	expect(result.getByText(mockExperienceDetails.name)).toBeDefined()
	expect(result.getByText(mockVirtualEvent.description)).toBeDefined()
end)

it("should never show the attendance list when the event is over", function()
	local now = DateTime.now()

	local activeVirtualEvent = VirtualEventModel.mock("1")
	if getFFlagVirtualEventsGraphQL() then
		activeVirtualEvent.eventTime.startUtc = now:ToIsoDate()
		activeVirtualEvent.eventTime.endUtc = DateTime.fromUnixTimestamp(now.UnixTimestamp + 60):ToIsoDate()
	else
		activeVirtualEvent.eventTime.startTime = now
		activeVirtualEvent.eventTime.endTime = DateTime.fromUnixTimestamp(now.UnixTimestamp + 60)
	end

	local endedVirtualEvent = VirtualEventModel.mock("2")
	endedVirtualEvent.eventTime.startTime = DateTime.fromUnixTimestamp(now.UnixTimestamp - 120)
	endedVirtualEvent.eventTime.endTime = DateTime.fromUnixTimestamp(now.UnixTimestamp - 60)

	local element = withMockProviders({
		ActiveEvent = React.createElement(EventDetailsPage, {
			virtualEvent = activeVirtualEvent,
			currentTime = now,
		}),

		EndedEvent = React.createElement(EventDetailsPage, {
			virtualEvent = endedVirtualEvent,
			currentTime = now,
		}),
	}, {
		store = store,
	})

	local result = render(element)

	act(function()
		task.wait()
	end)

	local activeEvent = result.container:FindFirstChild("ActiveEvent")
	expect(activeEvent:FindFirstChild("Attendance", true)).toBeDefined()

	local endedEvent = result.container:FindFirstChild("EndedEvent")
	expect(endedEvent:FindFirstChild("Attendance", true)).toBeUndefined()
end)

return {}
