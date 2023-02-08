local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local NetworkingVirtualEvents = network.NetworkingVirtualEvents
local VirtualEventModel = NetworkingVirtualEvents.VirtualEventModel
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)
local EventDetailsPage = require(script.Parent.EventDetailsPage)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local container
local root
local store

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local mockExperienceMedia = ExperienceMediaModel.mock()
local mockExperienceDetails = ExperienceDetailsModel.mock()
local mockVirtualEvent = VirtualEventModel.mock("1")

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)

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
	root:unmount()
	container:Destroy()

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

	ReactRoblox.act(function()
		root:render(element)
	end)

	local titleInfo = container:FindFirstChild("TitleInfo", true)
	expect(titleInfo).toBeDefined()

	local titleText = titleInfo:FindFirstChild("Title") :: TextLabel
	expect(titleText).toBeDefined()
	expect(titleText.Text).toBe(mockVirtualEvent.title)
end)

it("should use the VirtualEvent's description", function()
	local element = withMockProviders({
		EventDetailsPage = React.createElement(EventDetailsPage, {
			virtualEvent = mockVirtualEvent,
			currentTime = DateTime.now(),
		}),
	}, {
		store = store,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local descriptionWrapper = container:FindFirstChild("Description", true) :: Frame
	local description = descriptionWrapper:FindFirstChild("Description", true) :: TextLabel

	expect(description.Text).toBe(mockVirtualEvent.description)
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

	ReactRoblox.act(function()
		root:render(element)
	end)

	ReactRoblox.act(function()
		store:flush()
	end)

	local activeEvent = container:FindFirstChild("ActiveEvent")
	expect(activeEvent:FindFirstChild("Attendance", true)).toBeDefined()

	local endedEvent = container:FindFirstChild("EndedEvent")
	expect(endedEvent:FindFirstChild("Attendance", true)).toBeUndefined()
end)

return {}
