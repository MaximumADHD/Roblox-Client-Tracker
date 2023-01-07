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

it("should display the start and end dates for the event", function()
	local startTime = DateTime.fromLocalTime(2022, 1, 1)
	local endTime = DateTime.fromLocalTime(2022, 1, 3)

	local mockVirtualEvent = VirtualEventModel.mock("1")
	mockVirtualEvent.eventTime.startTime = startTime
	mockVirtualEvent.eventTime.endTime = endTime

	local element = withMockProviders({
		EventTimer = React.createElement(EventTimer, {
			virtualEvent = mockVirtualEvent,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local eventTimer = container:FindFirstChild("EventTimer") :: TextLabel

	expect(eventTimer.Text).toBe("SAT, JAN 01 AT 12:00 AM • MON, JAN 03 AT 12:00 AM")
end)

it("should display a separate message when the event is cancelled", function()
	local mockVirtualEvent = VirtualEventModel.mock("1")
	mockVirtualEvent.eventStatus = "cancelled"

	local element = withMockProviders({
		EventTimer = React.createElement(EventTimer, {
			virtualEvent = VirtualEventModel.mock("2"),
		}),

		CancelledEventTimer = React.createElement(EventTimer, {
			virtualEvent = mockVirtualEvent,
		}),
	})

	ReactRoblox.act(function()
		root:render(element)
	end)

	local eventTimer = container:FindFirstChild("EventTimer") :: TextLabel
	local cancelledEventTimer = container:FindFirstChild("CancelledEventTimer") :: TextLabel

	expect(eventTimer.Text).never.toBe(cancelledEventTimer.Text)
	expect(eventTimer.TextColor3).never.toBe(cancelledEventTimer.TextColor3)
end)

return {}
