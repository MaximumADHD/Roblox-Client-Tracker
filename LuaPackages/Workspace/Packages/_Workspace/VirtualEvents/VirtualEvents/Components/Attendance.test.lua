local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)
local Attendance = require(script.Parent.Attendance)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local createMockVirtualEvent = GraphQLServer.mocks.createMockVirtualEvent

local mockVirtualEvent = if getFFlagVirtualEventsGraphQL()
	then createMockVirtualEvent("1")
	else VirtualEventModel.mock("1")
local mockExperienceDetails = ExperienceDetailsModel.mock()
local mockRsvpCounters = {
	going = 0,
	notGoing = 0,
	maybeGoing = 0,
	none = 0,
}

local reducer = Rodux.combineReducers({
	VirtualEvents = installReducer(),
})

local container = Instance.new("ScreenGui")
container.Parent = CoreGui

local root = ReactRoblox.createRoot(container)

local store

beforeEach(function()
	if getFFlagVirtualEventsGraphQL() then
		(mockVirtualEvent :: any).experienceDetails.playing = 0;
		(mockVirtualEvent :: any).rsvpCounters.going = 0
	else
		mockExperienceDetails.playing = 0
		mockRsvpCounters.going = 0
	end

	local universeId = tostring(mockVirtualEvent.universeId)
	store = Rodux.Store.new(reducer, {
		VirtualEvents = {
			experienceDetails = {
				[universeId] = mockExperienceDetails,
			},
		},
	}, {
		Rodux.thunkMiddleware,
	})

	network.NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Mock.reply({
		responseBody = {
			counters = mockRsvpCounters,
		},
	})

	network.NetworkingGames.GetExperiencesDetails.Mock.reply({
		responseBody = {
			data = mockExperienceDetails,
		},
	})
end)

afterEach(function()
	ReactRoblox.act(function()
		root:unmount()
	end)

	network.NetworkingVirtualEvents.GetVirtualEventRsvpCounts.Mock.clear()
	network.NetworkingGames.GetExperiencesDetails.Mock.clear()
end)

it("should display the FacePile and AttendanceCount for an upcoming event", function()
	if getFFlagVirtualEventsGraphQL() then
		(mockVirtualEvent :: any).rsvpCounters.going = 100;
		(mockVirtualEvent :: any).experienceDetails.playing = 0
	else
		mockRsvpCounters.going = 100
		mockExperienceDetails.playing = 0
	end

	local element = withMockProviders({
		Attendance = React.createElement(Attendance, {
			virtualEvent = mockVirtualEvent,
			eventStatus = "Upcoming",
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

	expect(container:FindFirstChild("AttendanceCount", true)).toBeDefined()
	expect(container:FindFirstChild("FacePile", true)).toBeDefined()
end)

it("should render nothing for an upcoming event with no interested users", function()
	if getFFlagVirtualEventsGraphQL() then
		(mockVirtualEvent :: any).rsvpCounters.going = 0;
		(mockVirtualEvent :: any).experienceDetails.playing = 100
	else
		mockRsvpCounters.going = 0
		mockExperienceDetails.playing = 100
	end

	local element = withMockProviders({
		Attendance = React.createElement(Attendance, {
			virtualEvent = mockVirtualEvent,
			eventStatus = "Upcoming",
		}),
	}, {
		store = store,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(#container:GetChildren()).toBe(0)
end)

it("should display the FacePile and AttendanceCount for an ongoing event", function()
	if getFFlagVirtualEventsGraphQL() then
		(mockVirtualEvent :: any).rsvpCounters.going = 0;
		(mockVirtualEvent :: any).experienceDetails.playing = 100
	else
		mockRsvpCounters.going = 0
		mockExperienceDetails.playing = 100
	end

	local element = withMockProviders({
		Attendance = React.createElement(Attendance, {
			virtualEvent = mockVirtualEvent,
			eventStatus = "Ongoing",
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

	expect(container:FindFirstChild("AttendanceCount", true)).toBeDefined()
	expect(container:FindFirstChild("FacePile", true)).toBeDefined()
end)

it("should render nothing for an ongoing event with no players", function()
	if getFFlagVirtualEventsGraphQL() then
		(mockVirtualEvent :: any).rsvpCounters.going = 100;
		(mockVirtualEvent :: any).experienceDetails.playing = 0
	else
		mockRsvpCounters.going = 100
		mockExperienceDetails.playing = 0
	end

	local element = withMockProviders({
		Attendance = React.createElement(Attendance, {
			virtualEvent = mockVirtualEvent,
			eventStatus = "Ongoing",
		}),
	}, {
		store = store,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(#container:GetChildren()).toBe(0)
end)

return {}
