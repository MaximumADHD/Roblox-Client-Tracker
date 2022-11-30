local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local CoreGui = game:GetService("CoreGui")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local it = JestGlobals.it
local React = require(VirtualEvents.Parent.React)
local ReactRoblox = require(VirtualEvents.Parent.ReactRoblox)
local withMockProviders = require(VirtualEvents.withMockProviders)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local EventTimer = require(script.Parent.EventTimer)

local now = DateTime.now()
local past = DateTime.fromUnixTimestamp(now.UnixTimestamp - 60)
local future = DateTime.fromUnixTimestamp(now.UnixTimestamp + 60)

local mockVirtualEvent = VirtualEventModel.mock("1")
mockVirtualEvent.eventTime.startTime = now
mockVirtualEvent.eventTime.endTime = future

local root
local container

beforeEach(function()
	container = Instance.new("ScreenGui")
	container.Parent = CoreGui

	root = ReactRoblox.createRoot(container)
end)

afterEach(function()
	root:unmount()
	container:Destroy()
end)

it("should color the start time differently based on timer status", function()
	local now = DateTime.now()

	local element = withMockProviders({
		TimerUpcoming = React.createElement(EventTimer, {
			status = "Upcoming",
			virtualEvent = mockVirtualEvent,
			currentTime = past,
		}),

		TimerOngoing = React.createElement(EventTimer, {
			status = "Ongoing",
			virtualEvent = mockVirtualEvent,
			currentTime = now,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local timerUpcoming = container:FindFirstChild("TimerUpcoming", true)
	local startDateUpcoming = timerUpcoming:FindFirstChild("StartDate", true) :: TextLabel

	local timerOngoing = container:FindFirstChild("TimerOngoing", true)
	local startDateOngoing = timerOngoing:FindFirstChild("StartDate", true) :: TextLabel

	expect(startDateUpcoming).toBeDefined()
	expect(startDateOngoing).toBeDefined()
	expect(startDateUpcoming.TextColor3).never.toBe(startDateOngoing.TextColor3)
end)

return {}
