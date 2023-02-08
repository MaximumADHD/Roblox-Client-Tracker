local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local Rodux = require(VirtualEvents.Parent.Rodux)
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local installReducer = require(VirtualEvents.installReducer)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local ExperienceDetailsModel = require(VirtualEvents.Models.ExperienceDetailsModel)
local Attendance = require(script.Parent.Attendance)

local mockVirtualEvent = VirtualEventModel.mock("1")
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
	mockExperienceDetails.playing = 0
	mockRsvpCounters.going = 0

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
	mockRsvpCounters.going = 100
	mockExperienceDetails.playing = 0

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
	local prev = game:SetFastFlagForTesting("HideAttendanceCountsForBoringEvents", true)

	mockRsvpCounters.going = 0
	mockExperienceDetails.playing = 100

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

	game:SetFastFlagForTesting("HideAttendanceCountsForBoringEvents", prev)
end)

it("should display the FacePile and AttendanceCount for an ongoing event", function()
	mockRsvpCounters.going = 0
	mockExperienceDetails.playing = 100

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
	local prev = game:SetFastFlagForTesting("HideAttendanceCountsForBoringEvents", true)

	mockRsvpCounters.going = 100
	mockExperienceDetails.playing = 0

	local element = withMockProviders({
		Attendance = React.createElement(Attendance, {
			virtualEvent = VirtualEventModel.mock("1"),
			eventStatus = "Ongoing",
		}),
	}, {
		store = store,
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	expect(#container:GetChildren()).toBe(0)

	game:SetFastFlagForTesting("HideAttendanceCountsForBoringEvents", prev)
end)

return {}
